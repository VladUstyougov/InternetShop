using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mag.BusinessLayer;
using System.Data;

namespace Mag.Admin
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategories();
            }
        }
        private void GetCategories()
        {
            ShoppingCart k = new ShoppingCart();
            DataTable dt = k.GetCategories();
            if (dt.Rows.Count > 0)
            {
                gvAvailableCategories.DataSource = dt;
                gvAvailableCategories.DataBind();
            }
        }

        protected void gvAvailableCategories_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int CategoryID = Int32.Parse(((Label)gvAvailableCategories.Rows[e.RowIndex].FindControl("Label1")).Text);
            ShoppingCart k = new ShoppingCart()
            {
                CategoryID = CategoryID
            };
            k.DeleteCategory();
            GetCategories();
        }

        protected void gvAvailableCategories_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvAvailableCategories.EditIndex = -1;
            GetCategories();
        }

        protected void gvAvailableCategories_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvAvailableCategories.EditIndex = e.NewEditIndex;
            GetCategories();
        }

        protected void gvAvailableCategories_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int CategoryID = Convert.ToInt32(((Label)gvAvailableCategories.Rows[e.RowIndex].FindControl("Label3")).Text);
            string CategoryName = ((TextBox)gvAvailableCategories.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            ShoppingCart k = new ShoppingCart()
            {
                CategoryID = CategoryID,
                CategoryName = CategoryName

            };
            k.UpdateCategory();
            gvAvailableCategories.EditIndex = -1;
            GetCategories();
        }

        protected void gvAvailableCategories_DataBound(object sender, EventArgs e)
        {

        }

        protected void gvAvailableCategories_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gvAvailableCategories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvAvailableCategories.PageIndex = e.NewPageIndex;
            GetCategories();
        }
    }
}