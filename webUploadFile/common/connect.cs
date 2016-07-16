using System;
using System.Data;
using System.Text;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace webUploadFile.common
{

    public class connect
    {
        private MySql.Data.MySqlClient.MySqlConnection conn;
        public connect()
        {
            string myConnectionString;

            myConnectionString = "server=127.0.0.1;uid=root;" + "pwd=123456;database=lab_sys;";

            try
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection();
                conn.ConnectionString = myConnectionString;
                conn.Open();
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Console.WriteLine("数据库连接错误：" + ex);
                conn = null;
            }
        }
        public MySqlDataReader exeSql(string sql)
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = conn;
            cmd.CommandType = CommandType.TableDirect;
            MySqlDataReader reader = cmd.ExecuteReader();
            return reader;
            /*
            while (reader.Read())
            {
                Console.WriteLn(reader[0], reader[1]...);
            }
            */
        }
    }
}