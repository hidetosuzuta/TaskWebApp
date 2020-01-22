using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TaskWebApp
{
    public partial class UpdateExpenseForm : System.Web.UI.Page
    {
        static string Text;
        static int price;
        static string Name;
        static string OriginalName;


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx", false);
        }





        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                var dataBaseAdapter = new DataBaseAdapter();
                dataBaseAdapter.Execute(UpdateQuery());
                dataBaseAdapter.Execute(UpdateQueryMinus());
                dataBaseAdapter.Execute(UpdateQueryPlus());
                Response.Redirect("UpdateExpenseForm.aspx", false);
            }
            catch
            {
                Response.Redirect("WebForm1.aspx", false);
            }
        }

        public static SqlCommand UpdateQuery()
        {
            var query = $@"
update PurchaseList set 費目 =　@Name where 購入物 = @Text and 価格 = @Price
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Text", Text));
            command.Parameters.Add(new SqlParameter("@Price", price));
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
            command.Parameters.Add(new SqlParameter("@Price", price));
            command.Parameters.Add(new SqlParameter("@Name", OriginalName));
            return command;
        }

        public static SqlCommand UpdateQueryPlus()
        {
            var query = $@"
update Expense set 値段 = 値段 + @Price where 費目 = @Name
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Price", price));
            command.Parameters.Add(new SqlParameter("@Name", Name));
            return command;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
            price = int.Parse(GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text);
            OriginalName = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;
            TextBox1.Text = OriginalName;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Name = TextBox2.Text;
        }
    }
}