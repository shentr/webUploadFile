using System;
using System.Data;
using System.Text;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace webUploadFile.common
{

    public class connect
    {
        public string errorMessage;
        private MySql.Data.MySqlClient.MySqlConnection conn;
        public connect()
        {
            string myConnectionString;

            myConnectionString = "server=localhost;uid=root;" + "pwd=123456;database=lab_sys;";

            try
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection();
                conn.ConnectionString = myConnectionString;
                conn.Open();
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                errorMessage = "数据库连接错误：" + ex;
                conn = null;
            }
        }
        public MySqlDataReader exeSql(string sql)
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = conn;
            //cmd.CommandType = CommandType.TableDirect;
            try
            {
                MySqlDataReader reader = cmd.ExecuteReader();
                return reader;
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                errorMessage = "sql语句执行错误：\n" + sql + "\n错误信息\n" + ex;
                return null;
            }
           
            
            
            /*
            while (reader.Read())
            {
                Console.WriteLn(reader[0], reader[1]...);
            }
            */
        }
    }
}