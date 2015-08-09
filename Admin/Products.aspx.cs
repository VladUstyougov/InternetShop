using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mag.Libraries;
using System.Data;
using System.Text;

namespace Mag.Admin
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProducts(0);
            }
        }
        private void GetProducts(int CategoryID)
        {
            MainLibrary k = new MainLibrary()
            {
                CategoryID = CategoryID
            };

            gvAvailableProducts.DataSource = null;
            gvAvailableProducts.DataSource = k.GetAllProducts();
            gvAvailableProducts.DataBind();
        }

        protected void gvAvailableProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ProductID = Int32.Parse(((Label)gvAvailableProducts.Rows[e.RowIndex].FindControl("lblProdId")).Text);
            MainLibrary k = new MainLibrary()
            {
                ProductID = ProductID
            };
            k.DeleteProduct();
            GetProducts(0);
        }

        protected void gvAvailableProducts_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvAvailableProducts.EditIndex = e.NewEditIndex;
            GetProducts(0);
        }

        protected void gvAvailableProducts_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvAvailableProducts.EditIndex = -1;
            GetProducts(0);
        }

        protected void gvAvailableProducts_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FileUpload fileupload1 = (FileUpload)gvAvailableProducts.Rows[e.RowIndex].FindControl("FileForUpload");
            int ProductID = Int32.Parse(((Label)gvAvailableProducts.Rows[e.RowIndex].FindControl("lblEdtProdId")).Text);
            string Name = ((TextBox)gvAvailableProducts.Rows[e.RowIndex].FindControl("txtEdtName")).Text;

            string Description = ((TextBox)gvAvailableProducts.Rows[e.RowIndex].FindControl("txtEdtDescr")).Text;
            int CategoryID = Int32.Parse(((DropDownList)gvAvailableProducts.Rows[e.RowIndex].FindControl("ddlEdtCategory")).SelectedValue.ToString());
            int ProductPrice = Int32.Parse(((TextBox)gvAvailableProducts.Rows[e.RowIndex].FindControl("txtEdtPrice")).Text);
            string ProductImage = ((TextBox)gvAvailableProducts.Rows[e.RowIndex].FindControl("txtImg")).Text;

            if (fileupload1.PostedFile != null && fileupload1.HasFile)
            {
                SaveProductPoto(fileupload1);
                ProductImage = "~/ProductImages/" + fileupload1.FileName;
            }

            MainLibrary k = new MainLibrary()
            {
                ProductID = ProductID,
                ProductName = Name,
                ProductPrice = ProductPrice,
                ProductImage = ProductImage,
                ProductDescription = Description,
                CategoryID = CategoryID

            };
            k.UpdateProduct();
            gvAvailableProducts.EditIndex = -1;
            GetProducts(0);
        }


        private void SaveProductPoto(FileUpload fu)
        {
            if (fu.PostedFile != null)
            {
                string filename = fu.PostedFile.FileName.ToString();
                string fileExt = System.IO.Path.GetExtension(fu.FileName);
                if (filename.Length > 96)
                {
                }
                else if (fileExt != ".jpeg" && fileExt != ".jpg" && fileExt != ".png" && fileExt != ".bmp")
                {
                }
                else if (fu.PostedFile.ContentLength > 40000000)
                {
                }
                else
                {
                    fu.SaveAs(Server.MapPath("~/ProductImages/" + filename));
                }
            }
        }

        protected void gvAvailableProducts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvAvailableProducts.PageIndex = e.NewPageIndex;
            GetProducts(0);
        }

        protected void gvAvailableProducts_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            DataRowView drv = e.Row.DataItem as DataRowView;
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.RowState & DataControlRowState.Edit) > 0)
                {
                    ContentPlaceHolder cpl = Page.Master.FindControl("ContentPlaceHolder1") as ContentPlaceHolder;
                    ScriptManager scriptmanager1 = Page.Master.FindControl("ScriptManager1") as ScriptManager;
                    scriptmanager1.RegisterPostBackControl(cpl);


                    MainLibrary k = new MainLibrary();
                    DropDownList dp = (DropDownList)e.Row.FindControl("ddlEdtCategory");
                    DataTable dt = k.GetCategories();
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        ListItem lt = new ListItem();
                        lt.Value = dt.Rows[i][0].ToString();
                        lt.Text = dt.Rows[i][1].ToString();
                        dp.Items.Add(lt);
                    }
                    dp.Items.Insert(0, new ListItem("Select", "NA"));
                }
            }
        }
    }
}