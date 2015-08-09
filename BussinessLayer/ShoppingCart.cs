using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Mag.DataLayer;

namespace Mag.BusinessLayer
{
    public class ShoppingCart
    {
        public string CategoryName;
        public int CategoryID;
        public int ProductID;
        public int CustomerID;

        public string ProductName;
        public string ProductImage;
        public int ProductPrice;
        public string ProductDescription;

        public string CustomerName;
        public string CustomerEmailID;
        public string CustomerPhoneNo;
        public string CustomerMessage;
        public string ProductList;

        public string OrderStatus;
        public string OrderNo;

        public int TotalProducts;
        public int TotalPrice;
        public int StockType;
        public int Flag;



        public void AddNewCategory()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar, 200);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("AddNewCategory", parameters);
        }
        public DataTable GetCategories()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("GetAllCategories", parameters);
            return dt;
        }
        public DataTable GetCategory()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 100);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("GetCategory", parameters);
            return dt;
        }
        public DataTable UpdateCategory()
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 100);
            parameters[1] = DataLayer.DataAccess.AddParameter("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar, 200);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("UpdateCategory", parameters);
            return dt;
        }
        public DataTable DeleteCategory()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 100);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("DeleteCategory", parameters);
            return dt;
        }



        public void AddNewProduct()
        {
            SqlParameter[] parameters = new SqlParameter[5];
            parameters[0] = DataLayer.DataAccess.AddParameter("@ProductName", ProductName, System.Data.SqlDbType.VarChar, 300);
            parameters[1] = DataLayer.DataAccess.AddParameter("@ProductPrice", ProductPrice, System.Data.SqlDbType.Int, 100);
            parameters[2] = DataLayer.DataAccess.AddParameter("@ProductImage", ProductImage, System.Data.SqlDbType.VarChar, 500);
            parameters[3] = DataLayer.DataAccess.AddParameter("@ProductDescription", ProductDescription, System.Data.SqlDbType.VarChar, 1000);
            parameters[4] = DataLayer.DataAccess.AddParameter("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 100);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("AddNewProduct", parameters);
        }
        public DataTable GetAllProducts()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("GetAllProducts", parameters);
            return dt;
        }
        public DataTable GetProductInfo()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@ProductID", ProductID, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("GetProductInfo", parameters);
            return dt;
        }
        public DataTable UpdateProduct()
        {
            SqlParameter[] parameters = new SqlParameter[6];
            parameters[0] = DataLayer.DataAccess.AddParameter("@ProductID", ProductID, System.Data.SqlDbType.Int, 20);
            parameters[1] = DataLayer.DataAccess.AddParameter("@ProductName", ProductName, System.Data.SqlDbType.VarChar, 300);
            parameters[2] = DataLayer.DataAccess.AddParameter("@ProductPrice", ProductPrice, System.Data.SqlDbType.Int, 100);
            parameters[3] = DataLayer.DataAccess.AddParameter("@ProductImage", ProductImage, System.Data.SqlDbType.VarChar, 500);
            parameters[4] = DataLayer.DataAccess.AddParameter("@ProductDescription", ProductDescription, System.Data.SqlDbType.VarChar, 1000);
            parameters[5] = DataLayer.DataAccess.AddParameter("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 100);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_UpdateProduct", parameters);
            return dt;
        }
        public DataTable DeleteProduct()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@ProductID", ProductID, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_DeleteProduct", parameters);
            return dt;
        }



        internal DataTable SaveCustomerDetails()
        {
            SqlParameter[] parameters = new SqlParameter[5];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CustomerName", CustomerName, System.Data.SqlDbType.VarChar, 100);
            parameters[1] = DataLayer.DataAccess.AddParameter("@CustomerEmailID", CustomerEmailID, System.Data.SqlDbType.VarChar, 100);
            parameters[2] = DataLayer.DataAccess.AddParameter("@CustomerPhoneNo", CustomerPhoneNo, System.Data.SqlDbType.VarChar, 10);
            parameters[3] = DataLayer.DataAccess.AddParameter("@CustomerMessage", CustomerMessage, System.Data.SqlDbType.VarChar, 300);
            parameters[4] = DataLayer.DataAccess.AddParameter("@ProductID", ProductID, System.Data.SqlDbType.Int, 100);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_SaveCustomerDetails", parameters);
            return dt;
        }
        internal DataTable DeleteCustomerDetails()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CustomerID", CustomerID, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_DeleteCustomerDetails", parameters);
            return dt;
        }

        internal DataTable GetOrdersList()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Flag", Flag, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetOrdersList", parameters);
            return dt;
        }

        internal DataTable GetTransactionDetails()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@TransactionNo", Flag, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetTransactionDetails", parameters);
            return dt;
        }

        internal DataTable GetSetOrderStatus()
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = DataLayer.DataAccess.AddParameter("@TransactionNo", Convert.ToInt32(OrderNo), System.Data.SqlDbType.Int, 20);
            parameters[1] = DataLayer.DataAccess.AddParameter("@OrderStatus", OrderStatus, System.Data.SqlDbType.VarChar, 300);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Flag", Flag, System.Data.SqlDbType.Int, 10);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_OrderStatus", parameters);
            return dt;
        }

        internal void SaveCustomerProducts()
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CustomerID", CustomerID, System.Data.SqlDbType.Int, 20);
            parameters[1] = DataLayer.DataAccess.AddParameter("@ProductID", ProductID, System.Data.SqlDbType.Int, 20);
            parameters[2] = DataLayer.DataAccess.AddParameter("@TotalProduct", TotalProducts, System.Data.SqlDbType.Int, 10);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_SaveCustomerProducts", parameters);
        }


    }
}