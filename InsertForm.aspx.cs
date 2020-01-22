using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TaskWebApp
{
    public partial class InsertForm : System.Web.UI.Page
    {
        static string Text;
        static int price;
        static string Name;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var dataBaseAdapter = new DataBaseAdapter();
            dataBaseAdapter.Execute(InsertQuery());
            dataBaseAdapter.Execute(UpdateQuery());
            Response.Redirect("InsertForm.aspx", false);
        }

        public static SqlCommand InsertQuery()
        {
            var query = $@"
INSERT INTO  PurchaseList VALUES(@Text, @Price, @Name)
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Text", Text));
            command.Parameters.Add(new SqlParameter("@Price", price));
            command.Parameters.Add(new SqlParameter("@Name", Name));
            return command;
        }

        public static SqlCommand UpdateQuery()
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



        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Text = TextBox1.Text;
        }

        protected void txtPrice_TextChanged(object sender, EventArgs e)
        {
            price = int.Parse(txtPrice.Text);
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx", false);
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Name = TextBox2.Text;
        }
    }
}