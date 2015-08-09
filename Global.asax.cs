using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Mag
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["UsersOnline"] = 0;
            if (Application["TotalCounter"] == null) Application["TotalCounter"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Session.Timeout = 5;
            Application["TotalCounter"] = ((int)Application["TotalCounter"]) + 1;
            Application["UsersOnline"] = ((int)Application["UsersOnline"]) + 1;
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            String sql = "INSERT INTO PageViews(data,PageAccessed,QueryString,IpAddress,Referer,UserAgent) " +
                "VALUES(GETDATE(),'" +
                Request.ServerVariables["URL"] + "','" +
                Request.ServerVariables["QUERY_STRING"] + "','" +
                Request.ServerVariables["REMOTE_ADDR"] + "','" +
                Request.ServerVariables["HTTP_REFERER"] + "','" +
                Request.ServerVariables["HTTP_USER_AGENT"] + "')";

            SqlCommand comm = new SqlCommand(sql, conn);
            comm.ExecuteNonQuery();
            comm.Dispose();
            conn.Close();
            conn.Dispose();
        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["UsersOnline"] = (int)Application["UsersOnline"] - 1;
            Application.UnLock();
        }
    }
}