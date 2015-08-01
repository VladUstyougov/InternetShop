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
            Application["Visitors"] = 0;
            if (Application["myCounter"] == null) Application["myCounter"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Session.Timeout = 5;
            Application["myCounter"] = ((int)Application["myCounter"]) + 1;
            Application["Visitors"] = ((int)Application["Visitors"]) + 1;
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            String PV_sql;
            SqlConnection PV_conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
            PV_conn.Open();
            PV_sql = "INSERT INTO PageViews(data,PageAccessed,QueryString,IpAddress,Referer,UserAgent) " +
                "VALUES(GETDATE(),'" + Request.ServerVariables["URL"] + "','" + Request.ServerVariables["QUERY_STRING"] + "','" +
                Request.ServerVariables["REMOTE_ADDR"] + "','" +
                Request.ServerVariables["HTTP_REFERER"] + "','" +
                Request.ServerVariables["HTTP_USER_AGENT"] + "')";

            SqlCommand PV_conncommand = new SqlCommand(PV_sql, PV_conn);
            PV_conncommand.ExecuteNonQuery();
            PV_conncommand.Dispose();
            PV_conn.Close();
            PV_conn.Dispose();
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["Visitors"] = (int)Application["Visitors"] - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }


    }
}