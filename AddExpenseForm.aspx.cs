using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TaskWebApp
{
    public partial class AddExpenseForm : System.Web.UI.Page
    {
        static string Name;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var dataBaseAdapter = new DataBaseAdapter();
            dataBaseAdapter.Execute(InsertQuery());
            Response.Redirect("AddExpenseForm.aspx", false);
        }

        public static SqlCommand InsertQuery()
        {
            var query = $@"
Insert Into  Expense VALUES (@Name, 0)
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Name", Name));
            return command;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Name = TextBox1.Text;
        }
    }
}