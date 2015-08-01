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
    public partial class AddNewProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategories();

                AddSubmitEvent();

                if (Request.QueryString["alert"] == "success")
                {
                    Response.Write("<script>alert('Record Saved Sucessfully');</script>");
                }
            }
        }

        private void AddSubmitEvent()
        {
            UpdatePanel updatePanel = Page.Master.FindControl("AdminUpdatePanel") as UpdatePanel;
            UpdatePanelControlTrigger trigger = new PostBackTrigger();
            trigger.ControlID = btnSubmit.UniqueID;

            updatePanel.Triggers.Add(trigger);
        }

        private void GetCategories()
        {
            ShoppingCart k = new ShoppingCart();
            DataTable dt = k.GetCategories();
            if (dt.Rows.Count > 0)
            {
                ddlCategory.DataValueField = "CategoryID";
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataSource = dt;
                ddlCategory.DataBind();
            }
        }

        private void ClearText()
        {
            uploadProductPhoto = null;
            txtProductName.Text = string.Empty;
            txtProductPrice.Text = string.Empty;
            txtProductDescription.Text = string.Empty;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (uploadProductPhoto.PostedFile != null)
            {
                SaveProductPoto();

                ShoppingCart k = new ShoppingCart()
                {
                    ProductName = txtProductName.Text,
                    ProductImage = "~/ProductImages/" + uploadProductPhoto.FileName,
                    ProductPrice = Int32.Parse( txtProductPrice.Text),
                    ProductDescription = txtProductDescription.Text,
                    CategoryID = Convert.ToInt32(ddlCategory.SelectedValue)
                };
                k.AddNewProduct();
                ClearText();
                Response.Redirect("~/Admin/AddNewProducts.aspx?alert=success");
            }
            else
            {
                Response.Redirect("<script>alert('Please Upload Photo');</script>");
            }
        }

        private void SaveProductPoto()
        {
            if (uploadProductPhoto.PostedFile != null)
            {
                string filename = uploadProductPhoto.PostedFile.FileName.ToString();
                string fileExt = System.IO.Path.GetExtension(uploadProductPhoto.FileName);
                if (filename.Length > 96)
                {
                }
                else if (fileExt != ".jpeg" && fileExt != ".jpg" && fileExt != ".png" && fileExt != ".bmp")
                {
                }
                else if (uploadProductPhoto.PostedFile.ContentLength > 40000000)
                {
                }
                else
                {
                    uploadProductPhoto.SaveAs(Server.MapPath("~/ProductImages/" + filename));
                }
            }
        }
    }
}