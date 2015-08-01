SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) COLLATE Ukrainian_CI_AS NULL,
	[Description] [varchar](1000) COLLATE Ukrainian_CI_AS NULL,
	[Price] [varchar](50) COLLATE Ukrainian_CI_AS NULL,
	[ImageUrl] [varchar](500) COLLATE Ukrainian_CI_AS NULL,
	[CategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET IDENTITY_INSERT [dbo].[Products] ON 

GO
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Price], [ImageUrl], [CategoryID]) VALUES (1, N'PERSIL BusinessLine 5.61 L Color Gel', N'Персил гель на 85 стирок 5,6 л ', N'129', N'~/ProductImages/c8be24.jpg', 1)
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Price], [ImageUrl], [CategoryID]) VALUES (2, N'PERSIL Business Line 5.61 L Power Gel', N'Персилй гель на 85 стирок 5,6 л ', N'129', N'~/ProductImages/22710.jpg', 2)
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Price], [ImageUrl], [CategoryID]) VALUES (3, N'Persil COLOR Gel Business line Color 4.5 L', N'опт від 1000грн (можливо в асортименті)', N'117', N'~/ProductImages/61310.jpg', 2)
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Price], [ImageUrl], [CategoryID]) VALUES (4, N'VIZIR 5.2 L Universal ', N'Стиральный порошок Vizir – предназначен для стирки всех видов белья как в стиральной машине, так и посредством ручной стирки.', N'115', N'~/ProductImages/supercoolpics_01_19102010192234.jpg', 2)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](100) COLLATE Ukrainian_CI_AS NULL,
	[CustomerEmailID] [varchar](100) COLLATE Ukrainian_CI_AS NULL,
	[CustomerPhoneNo] [varchar](10) COLLATE Ukrainian_CI_AS NULL,
	[CustomerMessage] [varchar](200) COLLATE Ukrainian_CI_AS NULL,
	[ProductID] [int] NULL,
	[OrderDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET IDENTITY_INSERT [dbo].[CustomerDetails] ON 

GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (1, N'marshal', N'ww@mm.ma', N'8726549872', N'dfgsdfgdf', 0, CAST(0x0000A49E00D483EF AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (2, N'fqwe', N'we@m.com', N'23423', N'wefwe', 0, CAST(0x0000A49E0112657E AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (3, N'Ivan', N'www@mm.com', N'9999', N'Hello', 0, CAST(0x0000A49E01139129 AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (4, N'Ivan', N'www@mm.com', N'9999', N'Hello', 0, CAST(0x0000A49E01203FAD AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (5, N'Gregory', N'ww@mm.com', N'786876', N'jhgfskjdhgfkjsdhgf', 0, CAST(0x0000A49E012456B2 AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (6, N'albert', N'ww@mm.com', N'87876', N'lkjh.kjh.kj', 0, CAST(0x0000A49E012F0ADB AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (7, N'Ivan', N'wladu@mail.ru', N'090908888', N'Hello old man', 0, CAST(0x0000A49E0131DEC6 AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (8, N'ss', N'werwr@sfsd.com', N'23423', N'sdfsdfds', 0, CAST(0x0000A49E01357395 AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (9, N'fsdg', N'we@dd.sdd', N'2342', N'asfasfa', 0, CAST(0x0000A49E013742BE AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (10, N'Alex', N'ww@ff.com', N'8383838', N'Hello', 4, CAST(0x0000A49E0143B917 AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (11, N'Evgen', N'ww@ma.com', N'9879879', N'Hochu kurochku', 3, CAST(0x0000A49E0144187A AS DateTime))
GO
INSERT [dbo].[CustomerDetails] ([Id], [CustomerName], [CustomerEmailID], [CustomerPhoneNo], [CustomerMessage], [ProductID], [OrderDateTime]) VALUES (12, N'Ivan', N'wladu@mail.ru', N'55555555', N'Hello', 2, CAST(0x0000A49E01462292 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[CustomerDetails] OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](200) COLLATE Ukrainian_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Schetchiki')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Animals')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[SP_UpdateProduct] (@ProductID int,
    @ProductName varchar(300),
    @ProductPrice int,
    @ProductImage varchar(500),
    @ProductDescription varchar(1000),
    @CategoryID int)
    AS
    BEGIN
      BEGIN TRY
        UPDATE Products SET Name=@ProductName,Description=@ProductDescription,Price=@ProductPrice,ImageUrl=@ProductImage,CategoryID=@CategoryID
        WHERE ProductID=@ProductID
      END TRY
      BEGIN CATCH
        PRINT ('Error occured')
      END CATCH
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UpdateCategory] (@CategoryID int,@CategoryName varchar(200))
AS 
BEGIN
  BEGIN TRY
    UPDATE Category SET CategoryName=@CategoryName
      WHERE CategoryID=@CategoryID
  END TRY
  BEGIN CATCH
    --INSERT INTO dbo.ErrorLog
    --VALUES(ERROR_MESSAGE(),'sp_GetAllData')
    PRINT ('Error occured')
  END CATCH
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SaveCustomerDetails] 
(
    @CustomerName varchar(100),
    @CustomerEmailID varchar(100),
    @CustomerPhoneNo varchar(10),
    @CustomerMessage varchar(500),
    @ProductID int
    )
    AS
    BEGIN
      BEGIN TRY
        INSERT INTO CustomerDetails(
        CustomerName,
        CustomerEmailID,
        CustomerPhoneNo,
        CustomerMessage,
        ProductID)
          VALUES 
          (
    @CustomerName,
    @CustomerEmailID,
    @CustomerPhoneNo,
    @CustomerMessage,
    @ProductID
          )
          select @@IDENTITY as CustomerID
      END TRY
      BEGIN CATCH
        PRINT ('Error occured')
      END CATCH
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetProductInfo] (@ProductID int)
      AS
      BEGIN
        BEGIN TRY
             SELECT *
      FROM Products WHERE ProductID=@ProductID
          
        END TRY
        BEGIN CATCH
          PRINT ('Error occured')
        END CATCH
      END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetCategory] (@CategoryID int)
      AS
      BEGIN
        BEGIN TRY
             SELECT *
      FROM Products WHERE CategoryID=@CategoryID
          
        END TRY
        BEGIN CATCH
          PRINT ('Error occured')
        END CATCH
      END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
      CREATE PROCEDURE SP_GetAllProducts (@CategoryID int)
      AS
      BEGIN
        BEGIN TRY
        IF (@CategoryID <> 0)
        BEGIN
        SELECT *
      FROM (SELECT P.CategoryID,
        P.ProductID,
        P.Name,
        P.Description,
        P.Price,
        P.ImageUrl,
        C.CategoryName
          FROM Products P
      INNER JOIN Category C
        ON C.CategoryID = P.CategoryID 
        
        GROUP BY P.ProductID,
               P.Name,
               P.Description,
               P.Price,
               P.ImageUrl,
               C.CategoryName,
               P.CategoryID) StockTable
          WHERE CategoryID = @CategoryID
          END
          ELSE
          BEGIN
             SELECT *
      FROM (SELECT P.CategoryID,
        P.ProductID,
        P.Name,
        P.Description,
        P.Price,
        P.ImageUrl,
        C.CategoryName
          FROM Products P
      INNER JOIN Category C
        ON C.CategoryID = P.CategoryID
        GROUP BY P.ProductID,
               P.Name,
               P.Description,
               P.Price,
               P.ImageUrl,
               C.CategoryName,
               P.CategoryID) StockTable
          END
        END TRY
        BEGIN CATCH
          PRINT ('Error occured')
        END CATCH
      END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE dbo.SP_GetAllCategories
  AS
  BEGIN
    BEGIN TRY
      SELECT *
      FROM Category
    END TRY
    BEGIN CATCH
      PRINT ('Error occured')
    END CATCH
  END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DeleteProduct] (@ProductID int)
AS
BEGIN
  BEGIN TRY
    DELETE  FROM Products
      WHERE ProductID=@ProductID
  END TRY
  BEGIN CATCH
    --INSERT INTO dbo.ErrorLog
    --VALUES(ERROR_MESSAGE(),'sp_GetAllData')
    PRINT ('Error occured')
  END CATCH
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DeleteCustomerDetails] 
(
    @CustomerID int
    )
    AS
    BEGIN
      BEGIN TRY
        DELETE FROM CustomerDetails WHERE Id=@CustomerID
      END TRY
      BEGIN CATCH
        PRINT ('Error occured')
      END CATCH
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DeleteCategory] (@CategoryID int)
AS
BEGIN
  BEGIN TRY
    DELETE  FROM Category
      WHERE CategoryID=@CategoryID
  END TRY
  BEGIN CATCH
    --INSERT INTO dbo.ErrorLog
    --VALUES(ERROR_MESSAGE(),'sp_GetAllData')
    PRINT ('Error occured')
  END CATCH
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    CREATE PROCEDURE [dbo].[SP_AddNewProduct] (@ProductName varchar(300),
    @ProductPrice int,
    @ProductImage varchar(500),
    @ProductDescription varchar(1000),
    @CategoryID int)
    AS
    BEGIN
      BEGIN TRY
        INSERT INTO Products(Name,Description,Price,ImageUrl,CategoryID) 
          VALUES (@ProductName, @ProductDescription, @ProductPrice, @ProductImage, @CategoryID)
      END TRY
      BEGIN CATCH
        PRINT ('Error occured')
      END CATCH
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE dbo.SP_AddNewCategory (@CategoryName varchar(200))
AS
BEGIN
  BEGIN TRY
    INSERT INTO Category
      VALUES (@CategoryName)
  END TRY
  BEGIN CATCH
    --INSERT INTO dbo.ErrorLog
    --VALUES(ERROR_MESSAGE(),'sp_GetAllData')
    PRINT ('Error occured')
  END CATCH
END
GO
ALTER TABLE [dbo].[CustomerDetails] ADD  DEFAULT (getdate()) FOR [OrderDateTime]
GO
