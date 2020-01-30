using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TaskWebApp
{
    public partial class DeleteExpenseForm : System.Web.UI.Page
    {
        static string Text;

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
            TextBox1.Text = Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Text = TextBox1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var dataBaseAdapter = new DataBaseAdapter();
            dataBaseAdapter.Execute(UpdateQuery());
            dataBaseAdapter.Execute(DeleteQuery());
            Response.Redirect("DeleteExpenseForm.aspx", false);
        }

        public static SqlCommand UpdateQuery()
        {
            var query = $@"
update PurchaseList set 費目 =　NULL where 費目 = @Text 
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Text", Text));

            return command;
        }

        public static SqlCommand DeleteQuery()
        {
            var query = $@"
Delete from  Expense where 費目 = @Text 
";
            var command = new SqlCommand();
            command.CommandText = query;
            command.Parameters.Add(new SqlParameter("@Text", Text));

            return command;
        }
    }
}