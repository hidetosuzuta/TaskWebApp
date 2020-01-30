using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace TaskWebApp
{
    public class DataBaseQuerry
    {
        public static SqlCommand SelectQuery()
        {
            var query = $@"
select * from Goods
";
            var command = new SqlCommand();
            command.CommandText = query;
            return command;
        }


    }
}

