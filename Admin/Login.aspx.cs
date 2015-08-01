using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace Mag.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtLoginId.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string LoginId = WebConfigurationManager.AppSettings["AdminLoginID"];
            string Passwird = WebConfigurationManager.AppSettings["AdminPassword"];

            if (txtLoginId.Text == LoginId && txtPassword.Text == Passwird)
            {
                Session["ShoppingOnlineAdmin"] = "ShoppingOnlineAdmin";
                Response.Redirect("~/Admin/AddNewProducts.aspx");
            }
            else
            {
                lblAlert.Text = "Incorect Login or Password";
            }
        }

    }
}