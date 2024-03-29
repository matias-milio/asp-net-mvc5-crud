USE [MyStoreDb]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 25/6/2020 02:07:00 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 25/6/2020 02:07:01 ******/
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
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 25/6/2020 02:07:01 ******/
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
/****** Object:  Table [dbo].[ProductoBrand]    Script Date: 25/6/2020 02:07:01 ******/
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
