USE [master]
GO
/****** Object:  Database [ResturantApp]    Script Date: 14-12-2021 14:50:08 ******/
CREATE DATABASE [ResturantApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ResturantApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ResturantApp.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ResturantApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ResturantApp_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ResturantApp] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ResturantApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ResturantApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ResturantApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ResturantApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ResturantApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ResturantApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [ResturantApp] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ResturantApp] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ResturantApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ResturantApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ResturantApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ResturantApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ResturantApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ResturantApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ResturantApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ResturantApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ResturantApp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ResturantApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ResturantApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ResturantApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ResturantApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ResturantApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ResturantApp] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ResturantApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ResturantApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ResturantApp] SET  MULTI_USER 
GO
ALTER DATABASE [ResturantApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ResturantApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ResturantApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ResturantApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ResturantApp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[Email] [nvarchar](250) NULL,
	[Mobile] [varchar](15) NULL,
 CONSTRAINT [PK_CusotmerId] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[ItemPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OrdersId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [varchar](250) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[PaymentTypeId] [int] NOT NULL,
	[FinalTotal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderTransactions]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTransactions](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[TypeId] [int] NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 14-12-2021 14:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[PaymentTyepId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[PaymentTyepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211202182804_Initial-Create', N'5.0.12')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1d4dc4f8-c12b-45e7-b399-00ef5ba0f077', N'Dinesh', N'Kanojiya', N'dinesh_kanojia3@yahoo.com', N'DINESH_KANOJIA3@YAHOO.COM', N'dinesh_kanojia3@yahoo.com', N'DINESH_KANOJIA3@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAECWcVznorSZEFSq8Vdvsp6/4LXC4F4G250McdN3X8e8o0H7WowkBx73ByyZjYZrP5g==', N'KRUATE5VUJLUNIIHF2TAKGMHCKOD2X7H', N'0fe71485-49be-4050-a94a-fa54c60a2e9b', N'9819646351', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7b89457a-dd4f-478d-8552-b650008df832', N'Dinesh', N'Kanojiya', N'diinesh.kanojia@gmail.com', N'DIINESH.KANOJIA@GMAIL.COM', N'diinesh.kanojia@gmail.com', N'DIINESH.KANOJIA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBJmiZ3UUafEmWyigLM0TDkr05xvL7Fe7fKdCrywJRlnUIcjMP/DtzY6xpAB/QZyKg==', N'2WVRRIX6QGHQ77KD4IV4JRHW43SHUJOD', N'7575a669-c198-460c-aeab-7df4216de0c3', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Email], [Mobile]) VALUES (1, N'CustomerA', N'diinesh.kanojia@gmail.com', N'+919819646351')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Email], [Mobile]) VALUES (2, N'CustomerB', N'diinesh.kanojia@gmail.com', N'+919819646351')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Email], [Mobile]) VALUES (3, N'CustomerC', N'diinesh.kanojia@gmail.com', N'+919819646351')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Email], [Mobile]) VALUES (4, N'CustomerD', N'diinesh.kanojia@gmail.com', N'+919819646351')
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemPrice]) VALUES (1, N'Apple', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemPrice]) VALUES (2, N'Mango', CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemPrice]) VALUES (3, N'Orange', CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemPrice]) VALUES (4, N'Pizza', CAST(230.00 AS Decimal(18, 2)))
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemPrice]) VALUES (5, N'Rice', CAST(65.00 AS Decimal(18, 2)))
INSERT [dbo].[Items] ([ItemId], [ItemName], [ItemPrice]) VALUES (6, N'French Fries', CAST(100.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderDetailsId], [OrdersId], [ItemId], [UnitPrice], [Discount], [Total], [Quantity]) VALUES (1, 10, 1, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailsId], [OrdersId], [ItemId], [UnitPrice], [Discount], [Total], [Quantity]) VALUES (2, 11, 6, CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailsId], [OrdersId], [ItemId], [UnitPrice], [Discount], [Total], [Quantity]) VALUES (3, 12, 1, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailsId], [OrdersId], [ItemId], [UnitPrice], [Discount], [Total], [Quantity]) VALUES (4, 13, 1, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailsId], [OrdersId], [ItemId], [UnitPrice], [Discount], [Total], [Quantity]) VALUES (5, 14, 1, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailsId], [OrdersId], [ItemId], [UnitPrice], [Discount], [Total], [Quantity]) VALUES (6, 15, 1, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailsId], [OrdersId], [ItemId], [UnitPrice], [Discount], [Total], [Quantity]) VALUES (7, 16, 1, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailsId], [OrdersId], [ItemId], [UnitPrice], [Discount], [Total], [Quantity]) VALUES (8, 17, 1, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetail] ([OrderDetailsId], [OrdersId], [ItemId], [UnitPrice], [Discount], [Total], [Quantity]) VALUES (9, 18, 1, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (1, N'09512021015149', CAST(0x0000ADF900E4775F AS DateTime), 1, 1, CAST(270.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (2, N'09572021015707', CAST(0x0000ADF900E5EBFA AS DateTime), 1, 1, CAST(380.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (3, N'09432021034348', CAST(0x0000ADF9010338B5 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (4, N'09542021035443', CAST(0x0000ADF90106386E AS DateTime), 1, 1, CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (5, N'09322021043200', CAST(0x0000ADF901107615 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (6, N'09402021044053', CAST(0x0000ADF90112E6E4 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (7, N'09452021044526', CAST(0x0000ADF901142781 AS DateTime), 1, 1, CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (8, N'09492021044932', CAST(0x0000ADF901154728 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (9, N'09592021045936', CAST(0x0000ADF901180B02 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (10, N'09082021050842', CAST(0x0000ADF9011A8AFE AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (11, N'11382021103823', CAST(0x0000ADFB01751838 AS DateTime), 4, 1, CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (12, N'13592021065956', CAST(0x0000ADFD01391806 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (13, N'13022021070202', CAST(0x0000ADFD0139ABD4 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (14, N'14462021124659', CAST(0x0000ADFE000CE833 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (15, N'14512021125121', CAST(0x0000ADFE000E1B25 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (16, N'14282021012841', CAST(0x0000ADFE00185C4D AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (17, N'14372021013727', CAST(0x0000ADFE001AC449 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([OrderId], [OrderNumber], [OrderDate], [CustomerId], [PaymentTypeId], [FinalTotal]) VALUES (18, N'14432021014310', CAST(0x0000ADFE001C5621 AS DateTime), 1, 1, CAST(150.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[OrderTransactions] ON 

INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (1, 2, 100, CAST(0x0000A9F400000000 AS DateTime), 1)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (2, 3, 400, CAST(0x0000A90A00000000 AS DateTime), 1)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (3, 1, 65, CAST(0x0000ACFF00000000 AS DateTime), 1)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (4, 2, -10, CAST(0x0000AD8200000000 AS DateTime), 2)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (5, 1, -3, CAST(0x0000ADF9011A95DB AS DateTime), 2)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (6, 6, -100, CAST(0x0000ADFB01751B22 AS DateTime), 2)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (7, 1, -3, CAST(0x0000ADFD01391881 AS DateTime), 2)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (8, 1, -3, CAST(0x0000ADFD0139AC51 AS DateTime), 2)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (9, 1, -3, CAST(0x0000ADFE000CE89D AS DateTime), 2)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (10, 1, -3, CAST(0x0000ADFE000E1B7B AS DateTime), 2)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (11, 1, -3, CAST(0x0000ADFE00185C9C AS DateTime), 2)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (12, 1, -3, CAST(0x0000ADFE001AC4A8 AS DateTime), 2)
INSERT [dbo].[OrderTransactions] ([TransactionId], [ItemId], [Quantity], [TransactionDate], [TypeId]) VALUES (13, 1, -3, CAST(0x0000ADFE001C5675 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[OrderTransactions] OFF
SET IDENTITY_INSERT [dbo].[PaymentTypes] ON 

INSERT [dbo].[PaymentTypes] ([PaymentTyepId], [PaymentTypeName]) VALUES (1, N'Cash')
INSERT [dbo].[PaymentTypes] ([PaymentTyepId], [PaymentTypeName]) VALUES (2, N'Credit')
SET IDENTITY_INSERT [dbo].[PaymentTypes] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 14-12-2021 14:50:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 14-12-2021 14:50:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 14-12-2021 14:50:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 14-12-2021 14:50:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 14-12-2021 14:50:08 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 14-12-2021 14:50:08 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 14-12-2021 14:50:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [ResturantApp] SET  READ_WRITE 
GO
