using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Mag.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblLogo.Text = ConfigurationManager.AppSettings["NameOfShop"];
            Page.Form.Attributes.Add("enctype", "multipart/form-data"); 
            if (Session["ShoppingOnlineAdmin"] == null)
            {
                Response.Redirect("~/Admin/Login.aspx");
            }

        }

        protected void lbtnLogout_Click(object sender, EventArgs e)
        {

        }
        protected void lblLogo_Click(object sender, EventArgs e)
        {
            
        }
    }
}