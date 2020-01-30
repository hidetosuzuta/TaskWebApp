using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TaskWebApp
{
    public partial class DeleteForm : System.Web.UI.Page
    {
        static string Text;
        static int price;
        static string Name;

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
            Name = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;
            Label2.Text = Text;
            Label3.Text = price.ToString();
            Label4.Text = Name;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var dataBaseAdapter = new DataBaseAdapter();
            dataBaseAdapter.Execute(DeleteQuery());
            dataBaseAdapter.Execute(DeleteQueryMinus());
            Response.Redirect("DeleteForm.aspx", false);
        }

        public static SqlCommand DeleteQuery()
        {
            var query = $@"
DELETE FROM PurchaseList where 費目 =　@Name and 購入物 = @Text and 価格 = @Price
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Text", Text));
            command.Parameters.Add(new SqlParameter("@Price", price));
            command.Parameters.Add(new SqlParameter("@Name", Name));

            return command;
        }

        public static SqlCommand DeleteQueryMinus()
        {
            var query = $@"
update Expense set 値段 = 値段 - @Price where 費目 = @Name
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Text", Text));
            command.Parameters.Add(new SqlParameter("@Price", price));
            command.Parameters.Add(new SqlParameter("@Name", Name));

            return command;
        }
    }
}