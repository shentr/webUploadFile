using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using webUploadFile.common;

namespace webUploadFile
{
    public partial class loginPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string order = Request.QueryString["order"];
            
            postStatus sta = new postStatus(0, "");
            JavaScriptSerializer serializer = new JavaScriptSerializer();

            if (order == "2")
            {
                Session.RemoveAll();
                sta.status = 1;
                Response.Write(serializer.Serialize(sta));
                return;
            }

            string userId = Request["userName"];
            string password = Request["password"];
            connect con = new connect();
            MySqlDataReader reader = con.exeSql("SELECT * FROM users where user_id = '"+userId+"'");
            if (reader!=null && reader.Read())
            {
                //Response.Write(reader["id"], reader["user_name"]);

                if (reader["password"].Equals(password))
                {
                    Session["user_id"] = reader["user_id"];
                    Session["user_name"] = reader["user_name"];
                    Session["privilege"] = reader["privilege"];
                    Session["class"] = reader["class"];
                    Session["stu_num"] = reader["stu_num"];
                    sta.status = 1;
                }
                else
                {
                    sta.message = "密码错误";
                }
            }
            else
            {
                sta.message = "用户名不存在";
            }
            Response.Write(serializer.Serialize(sta));
        }

    }
}