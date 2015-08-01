using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mag.BusinessLayer;

namespace Mag.Admin
{
    public partial class AddEditCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCategoryName.Focus();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty((txtCategoryName.Text).Trim()))
            {
                ShoppingCart k = new ShoppingCart
                {
                    CategoryName = txtCategoryName.Text
                };
                k.AddNewCategory();
                txtCategoryName.Text = string.Empty;
                Response.Redirect("~/Admin/AddEditCategory.aspx");
            }
            else
            {
                Response.Redirect("~/Admin/AddEditCategory.aspx");
            }
        }
    }
}