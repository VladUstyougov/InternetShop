using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mag.Libraries;
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
            MainLibrary k = new MainLibrary();
            DataTable dt = k.GetCategories();
            if (dt.Rows.Count > 0)
            {
                gvAvailableCategories.DataSource = dt;
                gvAvailableCategories.DataBind();
            }
        }

        protected void gvAvailableCategories_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int CategoryID = Int32.Parse(((Label)gvAvailableCategories.Rows[e.RowIndex].FindControl("lblCatId")).Text);
            MainLibrary k = new MainLibrary()
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
            int CategoryID = Convert.ToInt32(((Label)gvAvailableCategories.Rows[e.RowIndex].FindControl("lblEdtCatId")).Text);
            string CategoryName = ((TextBox)gvAvailableCategories.Rows[e.RowIndex].FindControl("txtEdtCatName")).Text;
            MainLibrary k = new MainLibrary()
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