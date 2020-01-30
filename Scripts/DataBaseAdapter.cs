using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;

namespace TaskWebApp
{
    public class DataBaseAdapter
    {
        private SqlConnection Connection { get; set; }

        public string GetConnectionString()
        {
            var builder = new SqlConnectionStringBuilder()
            {
                DataSource = "practicedb5.database.windows.net",
                IntegratedSecurity = false,
                InitialCatalog = "Sample",
                UserID = "us",
                Password = "admin123#"
            };
            return builder.ToString();
        }

        public int Execute(SqlCommand command)
        {
            try
            {
                // 接続文字列の取得
                var connectionstrng = new DataBaseAdapter().GetConnectionString();

                // データベース接続の準備
                var connection = new SqlConnection(connectionstrng);

                // データベースの接続開始
                connection.Open();

                // 実行するSQLの準備
                command.Connection = connection;

                // SQLの実行
                var count = command.ExecuteNonQuery();


                // データベースの接続終了
                connection.Close();

                return count;
            }
            catch
            {
                Console.WriteLine("No");
                return 1;
            }
        }
    }
}