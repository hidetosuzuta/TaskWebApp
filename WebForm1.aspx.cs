using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TaskWebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        public static SqlCommand SelectQuery()
        {
            var query = $@"
INSERT INTO  Good VALUES('aaaaaaaaaa')
";
            var command = new SqlCommand();
            command.CommandText = query;
            return command;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListForm.aspx", false);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("InsertForm.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateForm.aspx", false);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteForm.aspx", false);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddExpenseForm.aspx", false);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteExpenseForm.aspx", false);
        }
    }

}