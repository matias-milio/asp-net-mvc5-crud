USE [MyStoreDb]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 24/6/2020 22:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [varchar](255) NOT NULL,
	[Level] [varchar](50) NOT NULL,
	[Logger] [varchar](255) NOT NULL,
	[Message] [varchar](4000) NOT NULL,
	[Exception] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 24/6/2020 22:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ProductCategory_Id] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[ProductBrand_Id] [int] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 24/6/2020 22:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoBrand]    Script Date: 24/6/2020 22:16:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoBrand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (349, CAST(N'2020-06-24T22:05:06.587' AS DateTime), N'6', N'ERROR', N'asp_net_mvc_crud.Controllers.ProductsController', N'Error while updating product Lays 600g', N'System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---> System.Data.SqlClient.SqlException: The UPDATE statement conflicted with the FOREIGN KEY constraint "FK_Products_ProductCategories". The conflict occurred in database "MyStoreDb", table "dbo.ProductCategory", column ''Id''.
The statement has been terminated.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskComplet')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (350, CAST(N'2020-06-24T22:05:13.573' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting details for edit product 3', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (351, CAST(N'2020-06-24T22:05:17.377' AS DateTime), N'7', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Attempting to update product Lays 600g', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (320, CAST(N'2020-06-24T21:21:54.313' AS DateTime), N'13', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting details for product 3', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (321, CAST(N'2020-06-24T21:22:17.263' AS DateTime), N'14', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (322, CAST(N'2020-06-24T21:28:05.517' AS DateTime), N'9', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (323, CAST(N'2020-06-24T21:28:38.177' AS DateTime), N'9', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting details for product 3', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (324, CAST(N'2020-06-24T21:29:04.937' AS DateTime), N'10', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting details for edit product 3', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (325, CAST(N'2020-06-24T21:29:13.363' AS DateTime), N'11', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Attempting to update product Lays 600g', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (326, CAST(N'2020-06-24T21:32:16.093' AS DateTime), N'11', N'ERROR', N'asp_net_mvc_crud.Controllers.ProductsController', N'Error while updating product Lays 600g', N'System.ArgumentOutOfRangeException: The specified parameter type ''DataAccess.Product'' is not valid. Only scalar types, such as System.Int32, System.Decimal, System.DateTime, and System.Guid, are supported.
Nombre del parámetro: item
   en System.Data.Entity.Core.Objects.ObjectParameterCollection.Add(ObjectParameter item)
   en System.Data.Entity.Core.Objects.ObjectContext.CreateQuery[T](String queryString, ObjectParameter[] parameters)
   en System.Data.Entity.Internal.Linq.InternalSet`1.BuildFindQuery(WrappedEntityKey key)
   en System.Data.Entity.Internal.Linq.InternalSet`1.FindInStore(WrappedEntityKey key, String keyValuesParamName)
   en System.Data.Entity.Internal.Linq.InternalSet`1.Find(Object[] keyValues)
   en System.Data.Entity.DbSet`1.Find(Object[] keyValues)
   en DataAccess.Implementations.BaseRepository`1.Update(TEntity entityToUpdate) en C:\Users\Gaudi\Documents\portfolio\asp-net-crud-mvc\asp-net-mvc-crud\DataAccess\Implementations\Repository.cs:línea 88
   en BusinessLogic.ProductBO.Update(ProductDTO updatedDTOProduct) en C:\Users\Gaudi\Documents\portfolio\asp-net-crud-mvc\asp-net-mvc-crud\BusinessLogic\ProductBO.cs:línea 45
   en asp_net_mvc_crud.Controllers.ProductsController.Edit(Int32 id, ProductEditVM editedProduct) en C:\Users\Gaudi\Documents\portfolio\asp-net-crud-mvc\asp-net-mvc-crud\asp-net-mvc-crud\Controllers\ProductsController.cs:línea 120')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (327, CAST(N'2020-06-24T21:32:19.337' AS DateTime), N'10', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (328, CAST(N'2020-06-24T21:32:54.943' AS DateTime), N'10', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting details for edit product 3', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (329, CAST(N'2020-06-24T21:32:58.413' AS DateTime), N'10', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Attempting to update product Lays 600g', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (330, CAST(N'2020-06-24T21:35:51.670' AS DateTime), N'10', N'ERROR', N'asp_net_mvc_crud.Controllers.ProductsController', N'Error while updating product Lays 600g', N'System.ArgumentOutOfRangeException: The specified parameter type ''DataAccess.Product'' is not valid. Only scalar types, such as System.Int32, System.Decimal, System.DateTime, and System.Guid, are supported.
Nombre del parámetro: item
   en System.Data.Entity.Core.Objects.ObjectParameterCollection.Add(ObjectParameter item)
   en System.Data.Entity.Core.Objects.ObjectContext.CreateQuery[T](String queryString, ObjectParameter[] parameters)
   en System.Data.Entity.Internal.Linq.InternalSet`1.BuildFindQuery(WrappedEntityKey key)
   en System.Data.Entity.Internal.Linq.InternalSet`1.FindInStore(WrappedEntityKey key, String keyValuesParamName)
   en System.Data.Entity.Internal.Linq.InternalSet`1.Find(Object[] keyValues)
   en System.Data.Entity.DbSet`1.Find(Object[] keyValues)
   en DataAccess.Implementations.BaseRepository`1.Update(TEntity entityToUpdate) en C:\Users\Gaudi\Documents\portfolio\asp-net-crud-mvc\asp-net-mvc-crud\DataAccess\Implementations\Repository.cs:línea 88
   en BusinessLogic.ProductBO.Update(ProductDTO updatedDTOProduct) en C:\Users\Gaudi\Documents\portfolio\asp-net-crud-mvc\asp-net-mvc-crud\BusinessLogic\ProductBO.cs:línea 45
   en asp_net_mvc_crud.Controllers.ProductsController.Edit(Int32 id, ProductEditVM editedProduct) en C:\Users\Gaudi\Documents\portfolio\asp-net-crud-mvc\asp-net-mvc-crud\asp-net-mvc-crud\Controllers\ProductsController.cs:línea 120')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (331, CAST(N'2020-06-24T21:36:13.497' AS DateTime), N'10', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting details for edit product 3', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (332, CAST(N'2020-06-24T21:36:20.893' AS DateTime), N'10', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Attempting to update product Lays 600g', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (333, CAST(N'2020-06-24T21:38:15.077' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (334, CAST(N'2020-06-24T21:38:48.247' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting details for edit product 3', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (335, CAST(N'2020-06-24T21:38:51.137' AS DateTime), N'6', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Attempting to update product Lays 600g', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (336, CAST(N'2020-06-24T21:45:55.540' AS DateTime), N'6', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (337, CAST(N'2020-06-24T21:47:02.043' AS DateTime), N'6', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting details for edit product 3', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (338, CAST(N'2020-06-24T21:47:06.677' AS DateTime), N'6', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Attempting to update product Lays 600g', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (339, CAST(N'2020-06-24T21:47:21.510' AS DateTime), N'9', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (340, CAST(N'2020-06-24T21:59:49.453' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (341, CAST(N'2020-06-24T22:00:25.380' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting details for product 3', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (342, CAST(N'2020-06-24T22:00:28.280' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (343, CAST(N'2020-06-24T22:00:34.670' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Deleting product 11', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (344, CAST(N'2020-06-24T22:00:37.047' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (345, CAST(N'2020-06-24T22:02:57.320' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (346, CAST(N'2020-06-24T22:04:46.930' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting products', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (347, CAST(N'2020-06-24T22:05:02.697' AS DateTime), N'5', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Getting details for edit product 3', N'')
INSERT [dbo].[Log] ([Id], [Date], [Thread], [Level], [Logger], [Message], [Exception]) VALUES (348, CAST(N'2020-06-24T22:05:05.823' AS DateTime), N'6', N'INFO', N'asp_net_mvc_crud.Controllers.ProductsController', N'Attempting to update product Lays 600g', N'')
SET IDENTITY_INSERT [dbo].[Log] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [Description]) VALUES (1, N'Limpieza')
INSERT [dbo].[ProductCategory] ([Id], [Description]) VALUES (2, N'Comida')
INSERT [dbo].[ProductCategory] ([Id], [Description]) VALUES (3, N'Bebida')
INSERT [dbo].[ProductCategory] ([Id], [Description]) VALUES (4, N'Higiene')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[ProductoBrand] ON 

INSERT [dbo].[ProductoBrand] ([Id], [Description]) VALUES (1, N'Ala')
INSERT [dbo].[ProductoBrand] ([Id], [Description]) VALUES (2, N'Pepsi')
INSERT [dbo].[ProductoBrand] ([Id], [Description]) VALUES (3, N'Coca')
INSERT [dbo].[ProductoBrand] ([Id], [Description]) VALUES (4, N'Dave')
INSERT [dbo].[ProductoBrand] ([Id], [Description]) VALUES (5, N'CIF')
INSERT [dbo].[ProductoBrand] ([Id], [Description]) VALUES (6, N'Colgate')
INSERT [dbo].[ProductoBrand] ([Id], [Description]) VALUES (7, N'Gillette')
INSERT [dbo].[ProductoBrand] ([Id], [Description]) VALUES (8, N'Magistral')
SET IDENTITY_INSERT [dbo].[ProductoBrand] OFF
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductCategories] FOREIGN KEY([ProductCategory_Id])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Products_ProductCategories]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductoBrands] FOREIGN KEY([ProductBrand_Id])
REFERENCES [dbo].[ProductoBrand] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Products_ProductoBrands]
GO
