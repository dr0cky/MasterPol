USE [MasterPol]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID_employees] [int] IDENTITY(1,1) NOT NULL,
	[Employees_Surname] [nvarchar](50) NOT NULL,
	[Employees_Firstname] [nvarchar](50) NOT NULL,
	[Employees_Patronymic] [nvarchar](50) NULL,
	[Employees_Birthday] [date] NOT NULL,
	[Employess_PassportSeries] [nvarchar](4) NOT NULL,
	[Employess_PassportNumber] [nchar](6) NOT NULL,
	[Employees_WhoIssued] [nvarchar](50) NOT NULL,
	[Employees_DateOfIssue] [date] NOT NULL,
	[Employees_DepartamentCode] [nchar](7) NOT NULL,
	[Employess_BankAccountNumber] [nvarchar](20) NOT NULL,
	[Employess_INN] [nchar](12) NOT NULL,
	[Employess_CoresspAccountNumber] [nchar](20) NOT NULL,
	[Employess_BIK] [nchar](10) NOT NULL,
	[Employess_BankName] [nvarchar](max) NOT NULL,
	[Employess_Family] [nvarchar](50) NOT NULL,
	[Employess_Health] [nvarchar](50) NOT NULL,
	[Employe_Role] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID_employees] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID_Material] [int] NOT NULL,
	[Material_Type] [int] NOT NULL,
	[Material_Name] [nvarchar](100) NOT NULL,
	[Material_Supplier] [int] NOT NULL,
	[Material_Quantity] [decimal](18, 2) NOT NULL,
	[Material_Unit] [nvarchar](50) NOT NULL,
	[Material_Description] [nvarchar](max) NULL,
	[Material_Photo] [nvarchar](max) NULL,
	[Material_Cost] [decimal](18, 2) NOT NULL,
	[Material_QuantityInStock] [decimal](18, 2) NOT NULL,
	[Material_MinAvailableQuantity] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID_Material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_Type]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_Type](
	[ID_MaterialType] [int] IDENTITY(1,1) NOT NULL,
	[Material_Type] [nvarchar](50) NOT NULL,
	[Material_PercentageDefects] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Material_Type] PRIMARY KEY CLUSTERED 
(
	[ID_MaterialType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialCountHistory]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialCountHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialID] [int] NOT NULL,
	[ChangeDate] [date] NOT NULL,
	[CountValue] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_MaterialCountHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialProduct]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialProduct](
	[ProductArticle] [nvarchar](50) NOT NULL,
	[MaterialID] [int] NOT NULL,
 CONSTRAINT [PK_MaterialProduct] PRIMARY KEY CLUSTERED 
(
	[ProductArticle] ASC,
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[ID_Partner] [int] IDENTITY(1,1) NOT NULL,
	[Partner_Type] [int] NOT NULL,
	[Partner_Name] [nvarchar](50) NOT NULL,
	[Partner_Index] [nchar](6) NOT NULL,
	[Partner_Region] [nvarchar](100) NOT NULL,
	[Partner_City] [nvarchar](100) NOT NULL,
	[Partner_Street] [nvarchar](100) NOT NULL,
	[Partner_House] [nvarchar](10) NOT NULL,
	[Partner_INN] [nvarchar](12) NOT NULL,
	[Director_Surname] [nvarchar](50) NOT NULL,
	[Director_Firstname] [nvarchar](50) NOT NULL,
	[Director_Patronymic] [nvarchar](50) NULL,
	[Partner_Phone] [nchar](13) NOT NULL,
	[Partner_Email] [nvarchar](100) NOT NULL,
	[Partner_Logo] [nvarchar](max) NULL,
	[Partner_Rating] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[ID_Partner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner_Product]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner_Product](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Partner] [int] NOT NULL,
	[QuantityProduction] [decimal](18, 2) NOT NULL,
	[Manager] [int] NOT NULL,
	[ProductArticle] [nvarchar](50) NOT NULL,
	[DateOfSale] [date] NOT NULL,
 CONSTRAINT [PK_Partner_Product_1] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner_type]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner_type](
	[ID_Type] [int] IDENTITY(1,1) NOT NULL,
	[Type_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Partner_type] PRIMARY KEY CLUSTERED 
(
	[ID_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerPointSale]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerPointSale](
	[PartnerID] [int] NOT NULL,
	[PintSaleID] [int] NOT NULL,
 CONSTRAINT [PK_PartnerPointSale] PRIMARY KEY CLUSTERED 
(
	[PartnerID] ASC,
	[PintSaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerSaleHistory]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerSaleHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartnerID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[ProductCount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_PartnerSaleHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointSale]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointSale](
	[PointSaleID] [int] IDENTITY(1,1) NOT NULL,
	[PointSale_Index] [nchar](10) NOT NULL,
	[PointSale_Region] [nvarchar](max) NOT NULL,
	[PointSale_City] [nvarchar](max) NOT NULL,
	[PointSale_Street] [nvarchar](max) NOT NULL,
	[PointSale_House] [nvarchar](10) NOT NULL,
	[Partner_ID] [int] NOT NULL,
	[PointSale_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PointSale] PRIMARY KEY CLUSTERED 
(
	[PointSaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_Article] [nvarchar](50) NOT NULL,
	[Product_Type] [int] NOT NULL,
	[Product_Name] [nvarchar](100) NOT NULL,
	[Product_MinCost] [decimal](18, 2) NOT NULL,
	[Product_Description] [nvarchar](max) NULL,
	[Product_Photo] [nvarchar](max) NULL,
	[Product_Length] [decimal](18, 2) NULL,
	[Product_Width] [decimal](18, 2) NULL,
	[Product_Height] [decimal](18, 2) NULL,
	[Product_NetWeight] [decimal](18, 2) NULL,
	[Product_GrossWeight] [decimal](18, 2) NULL,
	[Product_QualityCertificate] [nvarchar](max) NULL,
	[Product_StandartNumber] [nvarchar](100) NULL,
	[Product_ManfacturingTime] [time](7) NULL,
	[Product_CostPrice] [decimal](18, 2) NULL,
	[Product_WorkshopNumber] [nvarchar](50) NULL,
	[Product_PersonalCountInProduction] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCountHistory]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCountHistory](
	[ID] [int] NOT NULL,
	[ProductID] [nvarchar](50) NOT NULL,
	[ChangeDate] [date] NOT NULL,
	[CountValue] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ProductCountHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMinCostHistory]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMinCostHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [nvarchar](50) NOT NULL,
	[ChangeDate] [date] NOT NULL,
	[CostValue] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ProductCostHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ProductType] [nvarchar](50) NOT NULL,
	[ProductCoificient] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supllier]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supllier](
	[ID_Supplier] [int] IDENTITY(1,1) NOT NULL,
	[Supplier_Name] [nvarchar](max) NOT NULL,
	[Supplier_INN] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID_Supplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suplly]    Script Date: 16.11.2024 10:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suplly](
	[SupllyID] [int] IDENTITY(1,1) NOT NULL,
	[Supllier] [int] NOT NULL,
	[Master] [int] NOT NULL,
	[SupllyDate] [date] NOT NULL,
	[QuantitySupplied] [decimal](18, 2) NOT NULL,
	[Material] [int] NOT NULL,
 CONSTRAINT [PK_Suplly] PRIMARY KEY CLUSTERED 
(
	[SupllyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID_employees], [Employees_Surname], [Employees_Firstname], [Employees_Patronymic], [Employees_Birthday], [Employess_PassportSeries], [Employess_PassportNumber], [Employees_WhoIssued], [Employees_DateOfIssue], [Employees_DepartamentCode], [Employess_BankAccountNumber], [Employess_INN], [Employess_CoresspAccountNumber], [Employess_BIK], [Employess_BankName], [Employess_Family], [Employess_Health], [Employe_Role]) VALUES (1, N'Иванов', N'Иван', N'Иванович', CAST(N'1990-01-15' AS Date), N'5082', N'456789', N'МВД ПО РЕСПУБЛИКЕ БАШКОРТОСТАН', CAST(N'2010-01-17' AS Date), N'061-525', N'40123456789000000000', N'770111111111', N'30123456789000000000', N'044525001 ', N'Сбербанк', N'Да', N'Ограничений по здоровью нет', 1)
INSERT [dbo].[Employee] ([ID_employees], [Employees_Surname], [Employees_Firstname], [Employees_Patronymic], [Employees_Birthday], [Employess_PassportSeries], [Employess_PassportNumber], [Employees_WhoIssued], [Employees_DateOfIssue], [Employees_DepartamentCode], [Employess_BankAccountNumber], [Employess_INN], [Employess_CoresspAccountNumber], [Employess_BIK], [Employess_BankName], [Employess_Family], [Employess_Health], [Employe_Role]) VALUES (5, N'Петров', N'Анна', N'Александрова', CAST(N'1985-06-22' AS Date), N'5620', N'458762', N'МВД ПО РЕСПУБЛИКЕ БАШКОРТОСТАН', CAST(N'2005-06-25' AS Date), N'684-894', N'47653637722679827617', N'025164846625', N'75491212757912972594', N'044525001 ', N'Сбербанк ', N'Да', N'Ограничений по здоровью нет', 2)
INSERT [dbo].[Employee] ([ID_employees], [Employees_Surname], [Employees_Firstname], [Employees_Patronymic], [Employees_Birthday], [Employess_PassportSeries], [Employess_PassportNumber], [Employees_WhoIssued], [Employees_DateOfIssue], [Employees_DepartamentCode], [Employess_BankAccountNumber], [Employess_INN], [Employess_CoresspAccountNumber], [Employess_BIK], [Employess_BankName], [Employess_Family], [Employess_Health], [Employe_Role]) VALUES (6, N'Сидоров', N'Виктор', N'Васильевич', CAST(N'2000-02-07' AS Date), N'8020', N'471568', N'МВД ПО РЕСПУБЛИКЕ БАШКОРТОСТАН', CAST(N'2020-02-10' AS Date), N'985-562', N'48688955656160000000', N'785160484680', N'98484847451651600000', N'404028002 ', N'ПриватБанк', N'Нет', N'Ограничений по здоровью нет', 3)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[Material] ([ID_Material], [Material_Type], [Material_Name], [Material_Supplier], [Material_Quantity], [Material_Unit], [Material_Description], [Material_Photo], [Material_Cost], [Material_QuantityInStock], [Material_MinAvailableQuantity]) VALUES (3, 1, N'Дуб', 1, CAST(30.00 AS Decimal(18, 2)), N'м3', N'', NULL, CAST(95000.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[Material] ([ID_Material], [Material_Type], [Material_Name], [Material_Supplier], [Material_Quantity], [Material_Unit], [Material_Description], [Material_Photo], [Material_Cost], [Material_QuantityInStock], [Material_MinAvailableQuantity]) VALUES (6, 3, N'Ясень', 2, CAST(20.00 AS Decimal(18, 2)), N'м3', NULL, NULL, CAST(100000.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[Material] ([ID_Material], [Material_Type], [Material_Name], [Material_Supplier], [Material_Quantity], [Material_Unit], [Material_Description], [Material_Photo], [Material_Cost], [Material_QuantityInStock], [Material_MinAvailableQuantity]) VALUES (7, 2, N'Клен', 4, CAST(20.00 AS Decimal(18, 2)), N'м3', NULL, NULL, CAST(80000.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Material_Type] ON 

INSERT [dbo].[Material_Type] ([ID_MaterialType], [Material_Type], [Material_PercentageDefects]) VALUES (1, N'Тип материала 1', CAST(0.10 AS Decimal(18, 2)))
INSERT [dbo].[Material_Type] ([ID_MaterialType], [Material_Type], [Material_PercentageDefects]) VALUES (2, N'Тип материала 2', CAST(0.95 AS Decimal(18, 2)))
INSERT [dbo].[Material_Type] ([ID_MaterialType], [Material_Type], [Material_PercentageDefects]) VALUES (3, N'Тип материала 3', CAST(0.28 AS Decimal(18, 2)))
INSERT [dbo].[Material_Type] ([ID_MaterialType], [Material_Type], [Material_PercentageDefects]) VALUES (4, N'Тип материала 4', CAST(0.55 AS Decimal(18, 2)))
INSERT [dbo].[Material_Type] ([ID_MaterialType], [Material_Type], [Material_PercentageDefects]) VALUES (5, N'Тип материала 5', CAST(0.34 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Material_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([ID_Partner], [Partner_Type], [Partner_Name], [Partner_Index], [Partner_Region], [Partner_City], [Partner_Street], [Partner_House], [Partner_INN], [Director_Surname], [Director_Firstname], [Director_Patronymic], [Partner_Phone], [Partner_Email], [Partner_Logo], [Partner_Rating]) VALUES (1, 1, N'База Строитель', N'652050', N'Кемеровская область', N'Юрга', N'ул. Лесная', N'15', N'2222455179', N'Иванова', N'Александра', N'Ивановна', N'493 123 45 67', N'aleksandraivanova@ml.ru', NULL, CAST(7.00 AS Decimal(18, 2)))
INSERT [dbo].[Partner] ([ID_Partner], [Partner_Type], [Partner_Name], [Partner_Index], [Partner_Region], [Partner_City], [Partner_Street], [Partner_House], [Partner_INN], [Director_Surname], [Director_Firstname], [Director_Patronymic], [Partner_Phone], [Partner_Email], [Partner_Logo], [Partner_Rating]) VALUES (2, 2, N'Паркет 29', N'164500', N'Архангельская область', N'Северодвинск', N'ул. Строителей', N'18', N'3333888520', N'Петров', N'Василий', N'Петрович', N'987 123 56 78', N'vppetrov@vl.ru', NULL, CAST(7.00 AS Decimal(18, 2)))
INSERT [dbo].[Partner] ([ID_Partner], [Partner_Type], [Partner_Name], [Partner_Index], [Partner_Region], [Partner_City], [Partner_Street], [Partner_House], [Partner_INN], [Director_Surname], [Director_Firstname], [Director_Patronymic], [Partner_Phone], [Partner_Email], [Partner_Logo], [Partner_Rating]) VALUES (3, 1, N'Стройсервис', N'188910', N'Ленинградская область', N'Приморск', N'ул. Парковая', N'21', N'4440391035', N'Соловьев', N'Андрей', N'Николаевич', N'812 223 32 00', N'ansolovev@st.ru', NULL, CAST(7.00 AS Decimal(18, 2)))
INSERT [dbo].[Partner] ([ID_Partner], [Partner_Type], [Partner_Name], [Partner_Index], [Partner_Region], [Partner_City], [Partner_Street], [Partner_House], [Partner_INN], [Director_Surname], [Director_Firstname], [Director_Patronymic], [Partner_Phone], [Partner_Email], [Partner_Logo], [Partner_Rating]) VALUES (4, 4, N'Ремонт и отделка', N'143960', N'Московская область', N'Реутов', N'ул. Свободы', N'51', N'1111520857', N'Воробьева', N'Екатерина', N'Валерьевна', N'444 222 33 11', N'ekaterina.vorobeva@ml.ru', NULL, CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[Partner] ([ID_Partner], [Partner_Type], [Partner_Name], [Partner_Index], [Partner_Region], [Partner_City], [Partner_Street], [Partner_House], [Partner_INN], [Director_Surname], [Director_Firstname], [Director_Patronymic], [Partner_Phone], [Partner_Email], [Partner_Logo], [Partner_Rating]) VALUES (5, 1, N'МонтажПро', N'309500', N'Белгородская область', N'Старый Оскол', N'ул. Рабочая', N'122', N'5552431140', N'Степанов', N'Степан', N'Сергеевич', N'912 888 33 33', N'stepanov@stepan.ru', NULL, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[Partner] ([ID_Partner], [Partner_Type], [Partner_Name], [Partner_Index], [Partner_Region], [Partner_City], [Partner_Street], [Partner_House], [Partner_INN], [Director_Surname], [Director_Firstname], [Director_Patronymic], [Partner_Phone], [Partner_Email], [Partner_Logo], [Partner_Rating]) VALUES (13, 1, N'Картошка', N'150756', N'Башкортостан', N'Уфа', N'Набережная', N'11', N'7894561235', N'Расстегаев', N'Александр', N'Сергеевич', N'987 135 42 79', N'kakiw@gmail.com', NULL, CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[Partner] ([ID_Partner], [Partner_Type], [Partner_Name], [Partner_Index], [Partner_Region], [Partner_City], [Partner_Street], [Partner_House], [Partner_INN], [Director_Surname], [Director_Firstname], [Director_Patronymic], [Partner_Phone], [Partner_Email], [Partner_Logo], [Partner_Rating]) VALUES (14, 3, N'Марковка', N'852147', N'Республика Башкортостан', N'Уфа', N'Набережная', N'11', N'6547893215', N'Набердек', N'Саломон', N'Шлепкович', N'987 548 54 56', N'markovka@gmail.com', NULL, CAST(1.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner_Product] ON 

INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (1, 1, CAST(15500.00 AS Decimal(18, 2)), 5, N'8758385', CAST(N'2023-03-23' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (2, 1, CAST(12350.00 AS Decimal(18, 2)), 5, N'7750282', CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (3, 1, CAST(37400.00 AS Decimal(18, 2)), 5, N'7028748', CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (4, 2, CAST(35000.00 AS Decimal(18, 2)), 5, N'8858958', CAST(N'2022-12-02' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (5, 2, CAST(1250.00 AS Decimal(18, 2)), 5, N'5012543', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (6, 2, CAST(1000.00 AS Decimal(18, 2)), 5, N'7750282', CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (7, 2, CAST(7550.00 AS Decimal(18, 2)), 5, N'8758385', CAST(N'2024-07-01' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (8, 3, CAST(7250.00 AS Decimal(18, 2)), 5, N'8758385', CAST(N'2023-01-22' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (9, 3, CAST(2500.00 AS Decimal(18, 2)), 5, N'8858958', CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (10, 4, CAST(59050.00 AS Decimal(18, 2)), 5, N'7028748', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (11, 4, CAST(37200.00 AS Decimal(18, 2)), 5, N'7750282', CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (12, 4, CAST(4500.00 AS Decimal(18, 2)), 5, N'5012543', CAST(N'2024-05-14' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (13, 5, CAST(50000.00 AS Decimal(18, 2)), 5, N'7750282', CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (14, 5, CAST(670000.00 AS Decimal(18, 2)), 5, N'7028748', CAST(N'2023-11-10' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (15, 5, CAST(35000.00 AS Decimal(18, 2)), 5, N'8758385', CAST(N'2024-04-15' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (16, 5, CAST(25000.00 AS Decimal(18, 2)), 5, N'8858958', CAST(N'2024-06-12' AS Date))
INSERT [dbo].[Partner_Product] ([OrderID], [Partner], [QuantityProduction], [Manager], [ProductArticle], [DateOfSale]) VALUES (18, 1, CAST(15000.00 AS Decimal(18, 2)), 5, N'8758385', CAST(N'2024-10-25' AS Date))
SET IDENTITY_INSERT [dbo].[Partner_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner_type] ON 

INSERT [dbo].[Partner_type] ([ID_Type], [Type_name]) VALUES (1, N'ЗАО')
INSERT [dbo].[Partner_type] ([ID_Type], [Type_name]) VALUES (2, N'ООО')
INSERT [dbo].[Partner_type] ([ID_Type], [Type_name]) VALUES (3, N'ПАО')
INSERT [dbo].[Partner_type] ([ID_Type], [Type_name]) VALUES (4, N'ОАО')
SET IDENTITY_INSERT [dbo].[Partner_type] OFF
GO
INSERT [dbo].[Product] ([Product_Article], [Product_Type], [Product_Name], [Product_MinCost], [Product_Description], [Product_Photo], [Product_Length], [Product_Width], [Product_Height], [Product_NetWeight], [Product_GrossWeight], [Product_QualityCertificate], [Product_StandartNumber], [Product_ManfacturingTime], [Product_CostPrice], [Product_WorkshopNumber], [Product_PersonalCountInProduction]) VALUES (N'5012543', 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', CAST(5450.59 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_Article], [Product_Type], [Product_Name], [Product_MinCost], [Product_Description], [Product_Photo], [Product_Length], [Product_Width], [Product_Height], [Product_NetWeight], [Product_GrossWeight], [Product_QualityCertificate], [Product_StandartNumber], [Product_ManfacturingTime], [Product_CostPrice], [Product_WorkshopNumber], [Product_PersonalCountInProduction]) VALUES (N'7028748', 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', CAST(3890.41 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_Article], [Product_Type], [Product_Name], [Product_MinCost], [Product_Description], [Product_Photo], [Product_Length], [Product_Width], [Product_Height], [Product_NetWeight], [Product_GrossWeight], [Product_QualityCertificate], [Product_StandartNumber], [Product_ManfacturingTime], [Product_CostPrice], [Product_WorkshopNumber], [Product_PersonalCountInProduction]) VALUES (N'7750282', 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', CAST(1799.33 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_Article], [Product_Type], [Product_Name], [Product_MinCost], [Product_Description], [Product_Photo], [Product_Length], [Product_Width], [Product_Height], [Product_NetWeight], [Product_GrossWeight], [Product_QualityCertificate], [Product_StandartNumber], [Product_ManfacturingTime], [Product_CostPrice], [Product_WorkshopNumber], [Product_PersonalCountInProduction]) VALUES (N'8758385', 3, N'Паркетная доска Ясень темный однополосная 14 мм', CAST(4456.90 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Product_Article], [Product_Type], [Product_Name], [Product_MinCost], [Product_Description], [Product_Photo], [Product_Length], [Product_Width], [Product_Height], [Product_NetWeight], [Product_GrossWeight], [Product_QualityCertificate], [Product_StandartNumber], [Product_ManfacturingTime], [Product_CostPrice], [Product_WorkshopNumber], [Product_PersonalCountInProduction]) VALUES (N'8858958', 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', CAST(7330.99 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ProductTypeID], [ProductType], [ProductCoificient]) VALUES (1, N'Ламинат', CAST(2.35 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ProductTypeID], [ProductType], [ProductCoificient]) VALUES (2, N'Массивная доска', CAST(5.15 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ProductTypeID], [ProductType], [ProductCoificient]) VALUES (3, N'Паркетная доска', CAST(4.34 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ProductTypeID], [ProductType], [ProductCoificient]) VALUES (4, N'Пробковое покрытие', CAST(1.50 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Мастер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Supllier] ON 

INSERT [dbo].[Supllier] ([ID_Supplier], [Supplier_Name], [Supplier_INN]) VALUES (1, N'ООО "Сибирский лес"', N'0151512355')
INSERT [dbo].[Supllier] ([ID_Supplier], [Supplier_Name], [Supplier_INN]) VALUES (2, N'ООО "ЛесТорг"', N'0415415686')
INSERT [dbo].[Supllier] ([ID_Supplier], [Supplier_Name], [Supplier_INN]) VALUES (3, N'ООО "Северный Лес"', N'0214535287')
SET IDENTITY_INSERT [dbo].[Supllier] OFF
GO
ALTER TABLE [dbo].[Partner_Product] ADD  CONSTRAINT [DF_Partner_Product_DateOfSale]  DEFAULT (getdate()) FOR [DateOfSale]
GO
ALTER TABLE [dbo].[Suplly] ADD  CONSTRAINT [DF_Suplly_SupllyDate]  DEFAULT (getdate()) FOR [SupllyDate]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([Employe_Role])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Material_Type] FOREIGN KEY([Material_Type])
REFERENCES [dbo].[Material_Type] ([ID_MaterialType])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Material_Type]
GO
ALTER TABLE [dbo].[MaterialCountHistory]  WITH CHECK ADD  CONSTRAINT [FK_MaterialCountHistory_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID_Material])
GO
ALTER TABLE [dbo].[MaterialCountHistory] CHECK CONSTRAINT [FK_MaterialCountHistory_Material]
GO
ALTER TABLE [dbo].[MaterialProduct]  WITH CHECK ADD  CONSTRAINT [FK_MaterialProduct_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID_Material])
GO
ALTER TABLE [dbo].[MaterialProduct] CHECK CONSTRAINT [FK_MaterialProduct_Material]
GO
ALTER TABLE [dbo].[MaterialProduct]  WITH CHECK ADD  CONSTRAINT [FK_MaterialProduct_Product] FOREIGN KEY([ProductArticle])
REFERENCES [dbo].[Product] ([Product_Article])
GO
ALTER TABLE [dbo].[MaterialProduct] CHECK CONSTRAINT [FK_MaterialProduct_Product]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Partner_type] FOREIGN KEY([Partner_Type])
REFERENCES [dbo].[Partner_type] ([ID_Type])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_Partner_type]
GO
ALTER TABLE [dbo].[Partner_Product]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Product_Employee] FOREIGN KEY([Manager])
REFERENCES [dbo].[Employee] ([ID_employees])
GO
ALTER TABLE [dbo].[Partner_Product] CHECK CONSTRAINT [FK_Partner_Product_Employee]
GO
ALTER TABLE [dbo].[Partner_Product]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Product_Partner] FOREIGN KEY([Partner])
REFERENCES [dbo].[Partner] ([ID_Partner])
GO
ALTER TABLE [dbo].[Partner_Product] CHECK CONSTRAINT [FK_Partner_Product_Partner]
GO
ALTER TABLE [dbo].[Partner_Product]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Product_Product] FOREIGN KEY([ProductArticle])
REFERENCES [dbo].[Product] ([Product_Article])
GO
ALTER TABLE [dbo].[Partner_Product] CHECK CONSTRAINT [FK_Partner_Product_Product]
GO
ALTER TABLE [dbo].[PartnerPointSale]  WITH CHECK ADD  CONSTRAINT [FK_PartnerPointSale_Partner] FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partner] ([ID_Partner])
GO
ALTER TABLE [dbo].[PartnerPointSale] CHECK CONSTRAINT [FK_PartnerPointSale_Partner]
GO
ALTER TABLE [dbo].[PartnerPointSale]  WITH CHECK ADD  CONSTRAINT [FK_PartnerPointSale_PointSale] FOREIGN KEY([PintSaleID])
REFERENCES [dbo].[PointSale] ([PointSaleID])
GO
ALTER TABLE [dbo].[PartnerPointSale] CHECK CONSTRAINT [FK_PartnerPointSale_PointSale]
GO
ALTER TABLE [dbo].[PartnerSaleHistory]  WITH CHECK ADD  CONSTRAINT [FK_PartnerSaleHistory_Partner] FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partner] ([ID_Partner])
GO
ALTER TABLE [dbo].[PartnerSaleHistory] CHECK CONSTRAINT [FK_PartnerSaleHistory_Partner]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([Product_Type])
REFERENCES [dbo].[ProductType] ([ProductTypeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[ProductCountHistory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCountHistory_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([Product_Article])
GO
ALTER TABLE [dbo].[ProductCountHistory] CHECK CONSTRAINT [FK_ProductCountHistory_Product]
GO
ALTER TABLE [dbo].[ProductMinCostHistory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCostHistory_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([Product_Article])
GO
ALTER TABLE [dbo].[ProductMinCostHistory] CHECK CONSTRAINT [FK_ProductCostHistory_Product]
GO
ALTER TABLE [dbo].[Suplly]  WITH CHECK ADD  CONSTRAINT [FK_Suplly_Employee] FOREIGN KEY([Master])
REFERENCES [dbo].[Employee] ([ID_employees])
GO
ALTER TABLE [dbo].[Suplly] CHECK CONSTRAINT [FK_Suplly_Employee]
GO
ALTER TABLE [dbo].[Suplly]  WITH CHECK ADD  CONSTRAINT [FK_Suplly_Material] FOREIGN KEY([Material])
REFERENCES [dbo].[Material] ([ID_Material])
GO
ALTER TABLE [dbo].[Suplly] CHECK CONSTRAINT [FK_Suplly_Material]
GO
ALTER TABLE [dbo].[Suplly]  WITH CHECK ADD  CONSTRAINT [FK_Suplly_Supllier] FOREIGN KEY([Supllier])
REFERENCES [dbo].[Supllier] ([ID_Supplier])
GO
ALTER TABLE [dbo].[Suplly] CHECK CONSTRAINT [FK_Suplly_Supllier]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [BankAccountNumber] CHECK  (([Employess_BankAccountNumber] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [BankAccountNumber]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [CoresspAccountNumber] CHECK  (([Employess_CoresspAccountNumber] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [CoresspAccountNumber]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [DepartamentCode] CHECK  (([Employees_DepartamentCode] like '[0-9][0-9][0-9]-[0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [DepartamentCode]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [PassportNumber] CHECK  (([Employess_PassportNumber] like '[0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [PassportNumber]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [Material_Cost] CHECK  (([Material_Cost]>(0)))
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [Material_Cost]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [MaterialMinAvailableQuantity] CHECK  (([Material_MinAvailableQuantity]>(0)))
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [MaterialMinAvailableQuantity]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [MaterialQuantity] CHECK  (([Material_Quantity]>(0)))
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [MaterialQuantity]
GO
ALTER TABLE [dbo].[MaterialCountHistory]  WITH CHECK ADD  CONSTRAINT [MinMaterialCount] CHECK  (([CountValue]>(0)))
GO
ALTER TABLE [dbo].[MaterialCountHistory] CHECK CONSTRAINT [MinMaterialCount]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [PartnerIndex] CHECK  (([Partner_Index] like '[0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [PartnerIndex]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [PartnerINN] CHECK  (((len([Partner_INN])=(10) OR len([Partner_INN])=(12)) AND isnumeric([Partner_INN])=(1)))
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [PartnerINN]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [PartnerPhone] CHECK  (([Partner_Phone] like '+[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR [Partner_Phone] like '[1-9][0-9][0-9] [0-9][0-9][0-9] [0-9][0-9] [0-9][0-9]'))
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [PartnerPhone]
GO
ALTER TABLE [dbo].[Partner_Product]  WITH CHECK ADD  CONSTRAINT [QuantityProduction] CHECK  (([QuantityProduction]>(0)))
GO
ALTER TABLE [dbo].[Partner_Product] CHECK CONSTRAINT [QuantityProduction]
GO
ALTER TABLE [dbo].[PointSale]  WITH CHECK ADD  CONSTRAINT [PointSaleIndex] CHECK  (([PointSale_Index] like '[0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[PointSale] CHECK CONSTRAINT [PointSaleIndex]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [ProductCostPrice] CHECK  (([Product_CostPrice]>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [ProductCostPrice]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [ProductGrossWeight] CHECK  (([Product_GrossWeight]>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [ProductGrossWeight]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [ProductHeight] CHECK  (([Product_Height]>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [ProductHeight]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [ProductLength] CHECK  (([Product_Length]>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [ProductLength]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [ProductNetWeight] CHECK  (([Product_NetWeight]>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [ProductNetWeight]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [ProductPersonalCountInProduction] CHECK  (([Product_PersonalCountInProduction]>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [ProductPersonalCountInProduction]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [ProductWidth] CHECK  (([Product_Width]>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [ProductWidth]
GO
ALTER TABLE [dbo].[ProductCountHistory]  WITH CHECK ADD  CONSTRAINT [ProductCountHistoryCountValue] CHECK  (([CountValue]>(0)))
GO
ALTER TABLE [dbo].[ProductCountHistory] CHECK CONSTRAINT [ProductCountHistoryCountValue]
GO
ALTER TABLE [dbo].[ProductMinCostHistory]  WITH CHECK ADD  CONSTRAINT [MinCost] CHECK  (([CostValue]>(0)))
GO
ALTER TABLE [dbo].[ProductMinCostHistory] CHECK CONSTRAINT [MinCost]
GO
ALTER TABLE [dbo].[Supllier]  WITH CHECK ADD  CONSTRAINT [SupllierINN] CHECK  (((len([Supplier_INN])=(10) OR len([Supplier_INN])=(12)) AND isnumeric([Supplier_INN])=(1)))
GO
ALTER TABLE [dbo].[Supllier] CHECK CONSTRAINT [SupllierINN]
GO
ALTER TABLE [dbo].[Suplly]  WITH CHECK ADD  CONSTRAINT [QuantitySupplied] CHECK  (([QuantitySupplied]>(0)))
GO
ALTER TABLE [dbo].[Suplly] CHECK CONSTRAINT [QuantitySupplied]
GO
