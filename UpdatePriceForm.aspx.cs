using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TaskWebApp
{
    public partial class UpdatePriceForm : System.Web.UI.Page
    {
        static string Text;
        static int price;
        static int OriginalPrice;
        static string Name;
        static int Price;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx", false);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
            price = int.Parse(GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text);
            OriginalPrice = int.Parse(GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text);
            Name = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;
            TextBox1.Text = price.ToString();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            price = int.Parse(TextBox1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calculation();

            var dataBaseAdapter = new DataBaseAdapter();
            dataBaseAdapter.Execute(UpdateQuery());
            if(price > OriginalPrice)
            {
                dataBaseAdapter.Execute(UpdateQueryPlus());
            }
            else
            {
                dataBaseAdapter.Execute(UpdateQueryMinus());
            }
            Response.Redirect("UpdatePriceForm.aspx",false);
        }

        public static SqlCommand UpdateQuery()
        {
            var query = $@"
update PurchaseList set 価格 =　@Price where 購入物 = @Text and 費目 = @Name
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Text", Text));
            command.Parameters.Add(new SqlParameter("@Price", price));
            command.Parameters.Add(new SqlParameter("@Name", Name));

            return command;
        }

        public static SqlCommand UpdateQueryPlus()
        {
            var query = $@"
update Expense set 値段 = 値段 + @Price where 費目 = @Name
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Price", Price));
            command.Parameters.Add(new SqlParameter("@Name", Name));
            return command;
        }

        public static SqlCommand UpdateQueryMinus()
        {
            var query = $@"
update Expense set 値段 = 値段 - @Price where 費目 = @Name
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Price", Price));
            command.Parameters.Add(new SqlParameter("@Name", Name));
            return command;
        }

        public void Calculation()
        {
            if(price > OriginalPrice)
            {
                Price = price - OriginalPrice;
            }
            else
            {
                Price = OriginalPrice - price;
            }
        }
    }
}