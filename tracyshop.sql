USE [master]
GO
/****** Object:  Database [tracyshop]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE DATABASE [tracyshop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tracyshop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\tracyshop.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tracyshop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\tracyshop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tracyshop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tracyshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tracyshop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tracyshop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tracyshop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tracyshop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tracyshop] SET ARITHABORT OFF 
GO
ALTER DATABASE [tracyshop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tracyshop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tracyshop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tracyshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tracyshop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tracyshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tracyshop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tracyshop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tracyshop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tracyshop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tracyshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tracyshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tracyshop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tracyshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tracyshop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tracyshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tracyshop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tracyshop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tracyshop] SET  MULTI_USER 
GO
ALTER DATABASE [tracyshop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tracyshop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tracyshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tracyshop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [tracyshop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [tracyshop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/15/2022 5:19:16 AM ******/
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
/****** Object:  Table [dbo].[Address]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SpecificAddress] [nvarchar](50) NULL,
	[City] [nvarchar](max) NULL,
	[District] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carts]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [real] NOT NULL,
	[Promotion] [real] NOT NULL,
	[ProductId] [int] NOT NULL,
	[SelectedSize] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[IsBuy] [bit] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chats]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[Request] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[MessageId] [int] NOT NULL,
	[IsSeen] [bit] NOT NULL,
 CONSTRAINT [PK_Chats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](100) NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Messages]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RequestMessage] [nvarchar](max) NULL,
	[ResponseMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Promotion] [real] NOT NULL,
	[Price] [real] NOT NULL,
	[SelectedSize] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Created_date] [datetime2](7) NOT NULL,
	[Is_check] [bit] NOT NULL,
	[Status] [int] NOT NULL,
	[ShoppingFee] [float] NOT NULL,
	[PaymentMenthodId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentMenthod]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMenthod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymentMenthod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Price] [real] NOT NULL,
	[Year_SX] [datetime2](7) NOT NULL,
	[Origin] [nvarchar](100) NULL,
	[Trandemark] [nvarchar](100) NULL,
	[Active] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[PromotionId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ProductSize] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[percent] [real] NOT NULL,
	[StartedDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResponseMessages]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResponseMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[Response] [nvarchar](max) NULL,
	[ChatId] [int] NOT NULL,
 CONSTRAINT [PK_ResponseMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rate] [int] NOT NULL,
	[Content] [nvarchar](255) NULL,
	[SelectedSize] [int] NOT NULL,
	[Image] [nvarchar](100) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockReceived]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockReceived](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_StockReceived] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockReceivedDetail]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockReceivedDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Unit_price] [real] NOT NULL,
	[StockReceivedId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_StockReceivedDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Birthday] [datetime2](7) NULL,
	[Gender] [nvarchar](10) NULL,
	[Is_active] [bit] NOT NULL,
	[Joined_date] [datetime2](7) NOT NULL,
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
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 6/15/2022 5:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220604062828_Init', N'5.0.15')
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (1, N'58/4 đường số 7', N'Thành phố Hồ Chí Minh', N'Quận Gò Vấp', N'204dac1a-2056-47db-96b5-7e0ee622ca56')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (2, N'280 Điện Biên Phủ', N'Thành phố Hồ Chí Minh', N'Quận Bình Thạnh', N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (3, N'150 Lương Định Của', N'Thành phố Hồ Chí Minh', N'Quận 2', N'4be5f215-3c30-4b1a-988e-bb2f16b6a715')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (4, N'350 Nguyễn Văn Tăng', N'Thành phố Hồ Chí Minh', N'Quận 9', N'58945432-2f57-4961-860e-89fe60d877ba')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (5, N'90 Võ Văn Ngân', N'Thành phố Hồ Chí Minh', N'Quận Thủ Đức', N'662afecb-a2ca-49ec-bbf4-47072f8aeacc')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (6, N'35 Võ Văn Ngân', N'Thành phố Hồ Chí Minh', N'Quận Thủ Đức', N'670bc58b-27c0-4f50-8942-1d7a25040a9b')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (7, N'22 Phan Văn Hớn', N'Thành phố Hồ Chí Minh', N'Quận 12', N'7f3055f1-9fe9-44db-bea0-86691342c539')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (8, N'335 Cộng Hòa', N'Thành phố Hồ Chí Minh', N'Quận Tân Bình', N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (9, N'200 Cộng Hòa', N'Thành phố Hồ Chí Minh', N'Quận Tân Bình', N'983b27e8-eee5-4c09-8954-255a971731a7')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (10, N'250 Nguyễn Kiệm', N'Thành phố Hồ Chí Minh', N'Quận Gò Vấp', N'b028353e-a83c-43ad-a589-9f5d3946da8c')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (11, N'250 Nguyễn Văn Tăng', N'Thành phố Hồ Chí Minh', N'Quận 9', N'bd299f24-b63d-4e69-8a48-478a83c02684')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (12, N'225 Lê Văn Việt', N'Thành phố Hồ Chí Minh', N'Quận 9', N'c1c6847f-c57f-42e2-9d9c-30c8462f53b0')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (13, N'19 Võ Văn Ngân', N'Thành phố Hồ Chí Minh', N'Quận Thủ Đức', N'c5b9a4f7-60c4-469f-b4f9-5c8731602ad2')
INSERT [dbo].[Address] ([Id], [SpecificAddress], [City], [District], [UserId]) VALUES (14, N'375 Lê Văn Việt', N'Thành phố Hồ Chí Minh', N'Quận Thủ Đức', N'cfbf4d02-bbcd-4915-8be5-e1192ddbd628')
SET IDENTITY_INSERT [dbo].[Address] OFF
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (1, 1, 135000, 0, 6, 1, N'/img/products/áo 4a225513575.jpg', 1, N'204dac1a-2056-47db-96b5-7e0ee622ca56')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (2, 1, 150000, 0, 22, 1, N'/img/products/chân váy 4a223706132.jpeg', 1, N'204dac1a-2056-47db-96b5-7e0ee622ca56')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (3, 1, 360000, 0, 13, 5, N'/img/products/áo khoác 5a220848171.jpeg', 1, N'204dac1a-2056-47db-96b5-7e0ee622ca56')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (4, 1, 150000, 0, 4, 1, N'/img/products/áo 2a225155665.jpg', 1, N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (5, 1, 140000, 0, 21, 1, N'/img/products/chân váy 3a223452257.jpeg', 1, N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (6, 1, 350000, 0, 1, 2, N'/img/products/áo 1a224714837.jpg', 1, N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (7, 1, 350000, 0, 10, 5, N'/img/products/áo khoác 2a220430260.jpeg', 1, N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (8, 1, 350000, 0, 10, 5, N'/img/products/áo khoác 2a220430260.jpeg', 1, N'4be5f215-3c30-4b1a-988e-bb2f16b6a715')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (9, 1, 350000, 0, 1, 2, N'/img/products/áo 1a224714837.jpg', 1, N'4be5f215-3c30-4b1a-988e-bb2f16b6a715')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (10, 1, 200000, 0, 19, 1, N'/img/products/chân váy 1a223133344.jpeg', 1, N'4be5f215-3c30-4b1a-988e-bb2f16b6a715')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (11, 1, 150000, 0, 8, 1, N'/img/products/áo 6a220142775.jpg', 1, N'58945432-2f57-4961-860e-89fe60d877ba')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (12, 1, 140000, 0, 21, 1, N'/img/products/chân váy 3a223452257.jpeg', 1, N'58945432-2f57-4961-860e-89fe60d877ba')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (13, 1, 150000, 0, 22, 1, N'/img/products/chân váy 4a223706132.jpeg', 1, N'58945432-2f57-4961-860e-89fe60d877ba')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (14, 1, 350000, 0, 1, 2, N'/img/products/áo 1a224714837.jpg', 1, N'58945432-2f57-4961-860e-89fe60d877ba')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (15, 1, 130000, 0, 5, 1, N'/img/products/áo 3a225338153.jpg', 1, N'662afecb-a2ca-49ec-bbf4-47072f8aeacc')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (16, 1, 150000, 0, 20, 1, N'/img/products/chân váy 2a223317214.jpeg', 1, N'662afecb-a2ca-49ec-bbf4-47072f8aeacc')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (17, 1, 200000, 0, 17, 5, N'/img/products/áo khoác 8a222604501.jpeg', 1, N'662afecb-a2ca-49ec-bbf4-47072f8aeacc')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (18, 1, 250000, 0, 7, 5, N'/img/products/áo 5a225646010.jpg', 1, N'662afecb-a2ca-49ec-bbf4-47072f8aeacc')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (19, 1, 350000, 0, 16, 5, N'/img/products/áo khoác 7a222408982.jpeg', 1, N'670bc58b-27c0-4f50-8942-1d7a25040a9b')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (20, 1, 250000, 0, 7, 5, N'/img/products/áo 5a225646010.jpg', 1, N'670bc58b-27c0-4f50-8942-1d7a25040a9b')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (21, 1, 350000, 0, 1, 2, N'/img/products/áo 1a224714837.jpg', 1, N'670bc58b-27c0-4f50-8942-1d7a25040a9b')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (22, 1, 380000, 0, 12, 5, N'/img/products/áo khoác 4a220657323.jpeg', 1, N'670bc58b-27c0-4f50-8942-1d7a25040a9b')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (23, 1, 370000, 0, 9, 5, N'/img/products/áo khoác 1a220301896.jpeg', 1, N'7f3055f1-9fe9-44db-bea0-86691342c539')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (24, 1, 380000, 0, 12, 5, N'/img/products/áo khoác 4a220657323.jpeg', 1, N'7f3055f1-9fe9-44db-bea0-86691342c539')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (25, 1, 250000, 0, 7, 5, N'/img/products/áo 5a225646010.jpg', 1, N'7f3055f1-9fe9-44db-bea0-86691342c539')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (26, 1, 350000, 0, 1, 2, N'/img/products/áo 1a224714837.jpg', 1, N'7f3055f1-9fe9-44db-bea0-86691342c539')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (27, 1, 360000, 0, 15, 5, N'/img/products/áo khoác 6a222159464.jpeg', 1, N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (28, 1, 380000, 0, 12, 5, N'/img/products/áo khoác 4a220657323.jpeg', 1, N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (29, 1, 400000, 0, 11, 2, N'/img/products/áo khoác 3a220537529.jpeg', 1, N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (30, 1, 130000, 0, 5, 1, N'/img/products/áo 3a225338153.jpg', 1, N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (31, 1, 250000, 0, 7, 5, N'/img/products/áo 5a225646010.jpg', 1, N'983b27e8-eee5-4c09-8954-255a971731a7')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (32, 1, 350000, 0, 1, 2, N'/img/products/áo 1a224714837.jpg', 1, N'983b27e8-eee5-4c09-8954-255a971731a7')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (33, 1, 380000, 0, 12, 5, N'/img/products/áo khoác 4a220657323.jpeg', 1, N'983b27e8-eee5-4c09-8954-255a971731a7')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (34, 1, 500000, 0, 18, 2, N'/img/products/áo khoác 9a222930012.jpeg', 1, N'983b27e8-eee5-4c09-8954-255a971731a7')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (35, 1, 400000, 0, 11, 2, N'/img/products/áo khoác 3a220537529.jpeg', 1, N'983b27e8-eee5-4c09-8954-255a971731a7')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (36, 1, 400000, 0, 11, 2, N'/img/products/áo khoác 3a220537529.jpeg', 1, N'b028353e-a83c-43ad-a589-9f5d3946da8c')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (37, 1, 500000, 0, 18, 2, N'/img/products/áo khoác 9a222930012.jpeg', 1, N'b028353e-a83c-43ad-a589-9f5d3946da8c')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (38, 1, 250000, 0, 7, 5, N'/img/products/áo 5a225646010.jpg', 1, N'b028353e-a83c-43ad-a589-9f5d3946da8c')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (39, 1, 380000, 0, 12, 5, N'/img/products/áo khoác 4a220657323.jpeg', 1, N'b028353e-a83c-43ad-a589-9f5d3946da8c')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (40, 1, 350000, 0, 16, 5, N'/img/products/áo khoác 7a222408982.jpeg', 1, N'bd299f24-b63d-4e69-8a48-478a83c02684')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (41, 1, 360000, 0, 15, 5, N'/img/products/áo khoác 6a222159464.jpeg', 1, N'bd299f24-b63d-4e69-8a48-478a83c02684')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (42, 1, 250000, 0, 7, 5, N'/img/products/áo 5a225646010.jpg', 1, N'bd299f24-b63d-4e69-8a48-478a83c02684')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (43, 1, 350000, 0, 1, 2, N'/img/products/áo 1a224714837.jpg', 1, N'bd299f24-b63d-4e69-8a48-478a83c02684')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (44, 1, 500000, 0, 18, 2, N'/img/products/áo khoác 9a222930012.jpeg', 1, N'c1c6847f-c57f-42e2-9d9c-30c8462f53b0')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (45, 1, 350000, 0, 1, 2, N'/img/products/áo 1a224714837.jpg', 1, N'c1c6847f-c57f-42e2-9d9c-30c8462f53b0')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (46, 1, 350000, 0, 16, 5, N'/img/products/áo khoác 7a222408982.jpeg', 1, N'c1c6847f-c57f-42e2-9d9c-30c8462f53b0')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (47, 1, 250000, 0, 7, 5, N'/img/products/áo 5a225646010.jpg', 1, N'c1c6847f-c57f-42e2-9d9c-30c8462f53b0')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (48, 1, 360000, 0, 15, 5, N'/img/products/áo khoác 6a222159464.jpeg', 1, N'c5b9a4f7-60c4-469f-b4f9-5c8731602ad2')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (49, 2, 350000, 0, 1, 2, N'/img/products/áo 1a224714837.jpg', 1, N'c5b9a4f7-60c4-469f-b4f9-5c8731602ad2')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (50, 1, 500000, 0, 18, 3, N'/img/products/áo khoác 9a222930012.jpeg', 1, N'c5b9a4f7-60c4-469f-b4f9-5c8731602ad2')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (51, 1, 350000, 0, 1, 3, N'/img/products/áo 1a224714837.jpg', 1, N'cfbf4d02-bbcd-4915-8be5-e1192ddbd628')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (52, 1, 370000, 0, 9, 5, N'/img/products/áo khoác 1a220301896.jpeg', 1, N'cfbf4d02-bbcd-4915-8be5-e1192ddbd628')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (53, 1, 400000, 0, 11, 2, N'/img/products/áo khoác 3a220537529.jpeg', 1, N'cfbf4d02-bbcd-4915-8be5-e1192ddbd628')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (54, 1, 130000, 0, 5, 1, N'/img/products/áo 3a225338153.jpg', 0, N'144378e2-4d9e-47b1-aa5c-1bf5e632a09b')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (57, 1, 130000, 0, 5, 1, N'/img/products/áo 3a225338153.jpg', 1, N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (58, 2, 135000, 0, 6, 1, N'/img/products/áo 4a225513575.jpg', 1, N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (59, 1, 150000, 0, 4, 1, N'/img/products/áo 2a225155665.jpg', 1, N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (60, 1, 360000, 0, 13, 5, N'/img/products/áo khoác 5a220848171.jpeg', 1, N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (61, 1, 350000, 0.25, 1, 3, N'/img/products/áo 1a224714837.jpg', 0, N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Carts] ([Id], [Quantity], [UnitPrice], [Promotion], [ProductId], [SelectedSize], [Image], [IsBuy], [UserId]) VALUES (63, 1, 150000, 0, 20, 1, N'/img/products/chân váy 2a223317214.jpeg', 1, N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc')
SET IDENTITY_INSERT [dbo].[Carts] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Áo')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Áo khoác')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Chân váy')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Đầm')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Quần')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (6, N'Thời trang mặc nhà')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Chats] ON 

INSERT [dbo].[Chats] ([Id], [CreatedAt], [Request], [UserId], [MessageId], [IsSeen]) VALUES (1, CAST(N'2022-05-12 18:40:42.5278252' AS DateTime2), N'Em muốn ghé trực tiếp cửa hàng, shop có thể cho em xin địa chỉ được không ạ?', N'cfbf4d02-bbcd-4915-8be5-e1192ddbd628', 1, 1)
INSERT [dbo].[Chats] ([Id], [CreatedAt], [Request], [UserId], [MessageId], [IsSeen]) VALUES (2, CAST(N'2022-05-12 18:40:53.8255795' AS DateTime2), N'Em cảm ơn ạ', N'cfbf4d02-bbcd-4915-8be5-e1192ddbd628', 3, 1)
INSERT [dbo].[Chats] ([Id], [CreatedAt], [Request], [UserId], [MessageId], [IsSeen]) VALUES (3, CAST(N'2022-05-13 18:13:34.2663823' AS DateTime2), N'Hi shop', N'2b23105f-ad7e-4762-9860-ece5f7503df5', 2, 1)
INSERT [dbo].[Chats] ([Id], [CreatedAt], [Request], [UserId], [MessageId], [IsSeen]) VALUES (4, CAST(N'2022-05-13 18:14:03.2446133' AS DateTime2), N'alo', N'2b23105f-ad7e-4762-9860-ece5f7503df5', 2, 1)
INSERT [dbo].[Chats] ([Id], [CreatedAt], [Request], [UserId], [MessageId], [IsSeen]) VALUES (5, CAST(N'2022-05-13 18:14:45.8738230' AS DateTime2), N'shop có thể cho em xin địa chỉ được không ạ?', N'2b23105f-ad7e-4762-9860-ece5f7503df5', 1, 1)
INSERT [dbo].[Chats] ([Id], [CreatedAt], [Request], [UserId], [MessageId], [IsSeen]) VALUES (6, CAST(N'2022-05-13 18:14:59.8721195' AS DateTime2), N'địa chỉ', N'2b23105f-ad7e-4762-9860-ece5f7503df5', 1, 1)
INSERT [dbo].[Chats] ([Id], [CreatedAt], [Request], [UserId], [MessageId], [IsSeen]) VALUES (7, CAST(N'2022-05-13 18:15:15.1794522' AS DateTime2), N'ê địa chỉ đi ku', N'2b23105f-ad7e-4762-9860-ece5f7503df5', 1, 1)
INSERT [dbo].[Chats] ([Id], [CreatedAt], [Request], [UserId], [MessageId], [IsSeen]) VALUES (8, CAST(N'2022-05-13 18:15:38.7478393' AS DateTime2), N'đỊa Chỉ', N'2b23105f-ad7e-4762-9860-ece5f7503df5', 1, 1)
INSERT [dbo].[Chats] ([Id], [CreatedAt], [Request], [UserId], [MessageId], [IsSeen]) VALUES (9, CAST(N'2022-05-13 21:15:05.8053983' AS DateTime2), N'Em muốn ghé cửa hàng để mua ạ, shop cho em xin địa chỉ với ạ?', N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc', 1, 1)
INSERT [dbo].[Chats] ([Id], [CreatedAt], [Request], [UserId], [MessageId], [IsSeen]) VALUES (10, CAST(N'2022-05-13 21:15:15.9155874' AS DateTime2), N'Em cảm ơn shop ạ', N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc', 3, 1)
SET IDENTITY_INSERT [dbo].[Chats] OFF
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (1, N'/img/products/áo 1a224714837.jpg', 1)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (2, N'/img/products/áo 2a225155665.jpg', 4)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (3, N'/img/products/áo 2b225248945.jpg', 4)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (4, N'/img/products/áo 2c225307020.jpg', 4)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (5, N'/img/products/áo 3a225338153.jpg', 5)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (7, N'/img/products/áo 3b225424136.jpg', 5)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (8, N'/img/products/áo 3c225443647.jpg', 5)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (9, N'/img/products/áo 4a225513575.jpg', 6)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (10, N'/img/products/áo 4b225532437.jpg', 6)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (11, N'/img/products/áo 4c225550950.jpg', 6)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (12, N'/img/products/áo 4d225607653.jpg', 6)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (13, N'/img/products/áo 5a225646010.jpg', 7)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (14, N'/img/products/áo 5b225705487.jpg', 7)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (15, N'/img/products/áo 5c225739570.jpg', 7)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (16, N'/img/products/áo 6a220142775.jpg', 8)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (17, N'/img/products/áo 6b220206237.jpg', 8)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (18, N'/img/products/áo khoác 1a220301896.jpeg', 9)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (19, N'/img/products/áo khoác 1b220322429.jpeg', 9)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (20, N'/img/products/áo khoác 1c220357991.jpeg', 9)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (21, N'/img/products/áo khoác 2a220430260.jpeg', 10)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (22, N'/img/products/áo khoác 2b220449533.jpeg', 10)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (23, N'/img/products/áo khoác 2c220507574.jpeg', 10)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (24, N'/img/products/áo khoác 3a220537529.jpeg', 11)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (25, N'/img/products/áo khoác 3b220601887.jpeg', 11)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (26, N'/img/products/áo khoác 3c220623852.jpeg', 11)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (27, N'/img/products/áo khoác 4a220657323.jpeg', 12)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (28, N'/img/products/áo khoác 4b220742786.jpeg', 12)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (29, N'/img/products/áo khoác 4c220803377.jpeg', 12)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (30, N'/img/products/áo khoác 5a220848171.jpeg', 13)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (31, N'/img/products/áo khoác 5b222032477.jpeg', 13)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (32, N'/img/products/áo khoác 5c222102621.jpeg', 13)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (33, N'/img/products/áo khoác 6a222159464.jpeg', 15)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (34, N'/img/products/áo khoác 6b222231335.jpeg', 15)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (35, N'/img/products/áo khoác 6c222259599.jpeg', 15)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (36, N'/img/products/áo khoác 6d222325810.jpeg', 15)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (37, N'/img/products/áo khoác 7a222408982.jpeg', 16)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (38, N'/img/products/áo khoác 7b222442203.jpeg', 16)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (39, N'/img/products/áo khoác 7c222511121.jpeg', 16)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (40, N'/img/products/áo khoác 8a222604501.jpeg', 17)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (41, N'/img/products/áo khoác 8b222631496.jpeg', 17)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (42, N'/img/products/áo khoác 8c222700591.jpeg', 17)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (43, N'/img/products/áo khoác 8d222842338.jpeg', 17)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (44, N'/img/products/áo khoác 9a222930012.jpeg', 18)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (45, N'/img/products/áo khoác 9b222953579.jpeg', 18)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (46, N'/img/products/áo khoác 9c223021170.jpeg', 18)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (47, N'/img/products/chân váy 1a223133344.jpeg', 19)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (48, N'/img/products/chân váy 1b223159326.jpeg', 19)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (49, N'/img/products/chân váy 1c223227348.jpeg', 19)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (50, N'/img/products/chân váy 2a223317214.jpeg', 20)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (51, N'/img/products/chân váy 2b223348476.jpeg', 20)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (52, N'/img/products/chân váy 2c223417410.jpeg', 20)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (53, N'/img/products/chân váy 3a223452257.jpeg', 21)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (54, N'/img/products/chân váy 3b223523472.jpeg', 21)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (55, N'/img/products/chân váy 3c223557939.jpeg', 21)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (56, N'/img/products/chân váy 4a223706132.jpeg', 22)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (57, N'/img/products/chân váy 4b223739979.jpeg', 22)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (58, N'/img/products/chân váy 5a223804803.jpeg', 23)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (59, N'/img/products/chân váy 5b223826985.jpeg', 23)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (60, N'/img/products/chân váy 5c223852288.jpeg', 23)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (61, N'/img/products/chân váy 6a223933148.jpeg', 24)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (62, N'/img/products/chân váy 6b224000139.jpeg', 24)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (63, N'/img/products/chân váy 6c224023273.jpeg', 24)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (64, N'/img/products/đầm 1a224050716.jpg', 26)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (65, N'/img/products/đầm 2a224144176.jpg', 27)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (66, N'/img/products/đầm 2b224233952.jpg', 27)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (67, N'/img/products/đầm 2c224355328.jpg', 27)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (68, N'/img/products/đầm 2d224445818.jpg', 27)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (69, N'/img/products/đầm 3a224832897.jpg', 28)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (70, N'/img/products/đầm 3b225444174.jpg', 28)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (71, N'/img/products/đầm 3c225509442.jpg', 28)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (72, N'/img/products/đầm 4a225541275.jpg', 29)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (73, N'/img/products/đầm 4b225606787.jpg', 29)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (74, N'/img/products/đầm 4c220412260.jpg', 29)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (75, N'/img/products/đầm 5a220445836.jpg', 30)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (76, N'/img/products/đầm 5b220505774.jpg', 30)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (77, N'/img/products/đầm 5c220607937.jpg', 30)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (78, N'/img/products/đầm 5d221031819.jpg', 30)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (79, N'/img/products/đầm 6a221109571.jpg', 31)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (80, N'/img/products/đầm 6b221200141.jpg', 31)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (81, N'/img/products/đầm 6c221236056.jpg', 31)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (82, N'/img/products/đầm 6d221351433.jpg', 31)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (83, N'/img/products/quần 1a221753468.jpeg', 32)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (84, N'/img/products/quần 1b221816133.jpeg', 32)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (85, N'/img/products/quần 1c222827126.jpeg', 32)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (86, N'/img/products/quần 2a222854137.jpeg', 33)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (87, N'/img/products/quần 2b223024787.jpeg', 33)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (88, N'/img/products/quần 2c223343050.jpeg', 33)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (89, N'/img/products/quần 3a224852657.jpeg', 34)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (90, N'/img/products/quần 3b225136885.jpeg', 34)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (91, N'/img/products/quần 3c225938816.jpeg', 34)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (92, N'/img/products/mặc nhà 1a220001399.jpg', 35)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (93, N'/img/products/mặc nhà 1b220028290.jpg', 35)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (94, N'/img/products/mặc nhà 1c220051154.jpg', 35)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (95, N'/img/products/mặc nhà 2a220518719.jpg', 36)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (96, N'/img/products/mặc nhà 2b220548530.jpg', 36)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (97, N'/img/products/mặc nhà 2c220819204.jpg', 36)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (98, N'/img/products/mặc nhà 3a220841921.jpg', 37)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (99, N'/img/products/mặc nhà 3b220910225.jpg', 37)
INSERT [dbo].[Image] ([Id], [Path], [ProductId]) VALUES (100, N'/img/products/mặc nhà 3c220930908.jpg', 37)
GO
SET IDENTITY_INSERT [dbo].[Image] OFF
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [RequestMessage], [ResponseMessage]) VALUES (1, N'Địa chỉ', N'Dạ, TracyShop hiện có mặt tại địa chỉ: 371 Nguyễn Kiệm, Gò Vấp, TPHCM. Thông tin đến anh/chị ạ.')
INSERT [dbo].[Messages] ([Id], [RequestMessage], [ResponseMessage]) VALUES (2, N'Khác', N'Xin chào anh/chị! Shop sẽ phản hồi lại thông tin cho anh/chị trong thời gian nhanh nhất.')
INSERT [dbo].[Messages] ([Id], [RequestMessage], [ResponseMessage]) VALUES (3, N'Cảm ơn', N'Cảm ơn anh/chị đã quan tâm tới shop. Mong anh/ chị tiếp tục quan tâm và ủng hộ shop trong thời gian tiếp theo ạ.')
INSERT [dbo].[Messages] ([Id], [RequestMessage], [ResponseMessage]) VALUES (4, N'Bắt đầu', N'Chào anh/chị, rất vui khi anh chị đã quan tâm đến TracyShop, TracyShop có thể giúp gì cho anh/chị?')
SET IDENTITY_INSERT [dbo].[Messages] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (1, 1, 0, 135000, 1, 1, 6)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (2, 1, 0, 150000, 1, 1, 22)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (3, 1, 0, 360000, 5, 1, 13)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (4, 1, 0, 150000, 1, 2, 4)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (5, 1, 0, 140000, 1, 2, 21)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (6, 1, 0, 350000, 2, 2, 1)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (7, 1, 0, 350000, 5, 2, 10)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (8, 1, 0, 350000, 5, 3, 10)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (9, 1, 0, 350000, 2, 3, 1)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (10, 1, 0, 200000, 1, 3, 19)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (11, 1, 0, 150000, 1, 4, 8)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (12, 1, 0, 140000, 1, 4, 21)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (13, 1, 0, 150000, 1, 4, 22)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (14, 1, 0, 350000, 2, 4, 1)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (15, 1, 0, 130000, 1, 5, 5)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (16, 1, 0, 150000, 1, 5, 20)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (17, 1, 0, 200000, 5, 5, 17)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (18, 1, 0, 250000, 5, 5, 7)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (19, 1, 0, 350000, 5, 6, 16)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (20, 1, 0, 250000, 5, 6, 7)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (21, 1, 0, 350000, 2, 6, 1)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (22, 1, 0, 380000, 5, 6, 12)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (23, 1, 0, 370000, 5, 7, 9)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (24, 1, 0, 380000, 5, 7, 12)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (25, 1, 0, 250000, 5, 7, 7)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (26, 1, 0, 350000, 2, 7, 1)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (27, 1, 0, 360000, 5, 8, 15)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (28, 1, 0, 380000, 5, 8, 12)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (29, 1, 0, 400000, 2, 8, 11)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (30, 1, 0, 130000, 1, 8, 5)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (31, 1, 0, 250000, 5, 9, 7)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (32, 1, 0, 350000, 2, 9, 1)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (33, 1, 0, 380000, 5, 9, 12)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (34, 1, 0, 500000, 2, 9, 18)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (35, 1, 0, 400000, 2, 9, 11)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (36, 1, 0, 400000, 2, 10, 11)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (37, 1, 0, 500000, 2, 10, 18)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (38, 1, 0, 250000, 5, 10, 7)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (39, 1, 0, 380000, 5, 10, 12)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (40, 1, 0, 350000, 5, 11, 16)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (41, 1, 0, 360000, 5, 11, 15)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (42, 1, 0, 250000, 5, 11, 7)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (43, 1, 0, 350000, 2, 11, 1)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (44, 1, 0, 500000, 2, 12, 18)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (45, 1, 0, 350000, 2, 12, 1)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (46, 1, 0, 350000, 5, 12, 16)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (47, 1, 0, 250000, 5, 12, 7)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (48, 1, 0, 360000, 5, 13, 15)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (49, 2, 0, 350000, 2, 13, 1)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (50, 1, 0, 500000, 3, 13, 18)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (51, 1, 0, 350000, 3, 14, 1)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (52, 1, 0, 370000, 5, 14, 9)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (53, 1, 0, 400000, 2, 14, 11)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (54, 1, 0, 130000, 1, 15, 5)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (55, 2, 0, 135000, 1, 15, 6)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (56, 1, 0, 150000, 1, 15, 4)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (57, 1, 0, 360000, 5, 16, 13)
INSERT [dbo].[OrderDetail] ([Id], [Quantity], [Promotion], [Price], [SelectedSize], [OrderId], [ProductId]) VALUES (58, 1, 0, 150000, 1, 17, 20)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (1, CAST(N'2022-05-08 13:23:06.3783592' AS DateTime2), 1, 2, 20000, 1, N'204dac1a-2056-47db-96b5-7e0ee622ca56')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (2, CAST(N'2022-05-08 13:23:06.3783592' AS DateTime2), 1, 3, 20000, 2, N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (3, CAST(N'2022-05-08 13:23:06.3783592' AS DateTime2), 1, 3, 20000, 1, N'4be5f215-3c30-4b1a-988e-bb2f16b6a715')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (4, CAST(N'2022-05-08 13:23:06.3783592' AS DateTime2), 1, 4, 20000, 2, N'58945432-2f57-4961-860e-89fe60d877ba')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (5, CAST(N'2022-05-09 13:23:06.3783592' AS DateTime2), 1, 1, 20000, 1, N'662afecb-a2ca-49ec-bbf4-47072f8aeacc')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (6, CAST(N'2022-05-09 13:23:06.3783592' AS DateTime2), 1, 2, 20000, 2, N'670bc58b-27c0-4f50-8942-1d7a25040a9b')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (7, CAST(N'2022-05-09 13:23:06.3783592' AS DateTime2), 1, 3, 20000, 2, N'7f3055f1-9fe9-44db-bea0-86691342c539')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (8, CAST(N'2022-05-09 13:23:06.3783592' AS DateTime2), 1, 3, 20000, 1, N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (9, CAST(N'2022-05-10 13:23:06.3783592' AS DateTime2), 1, 1, 20000, 1, N'983b27e8-eee5-4c09-8954-255a971731a7')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (10, CAST(N'2022-05-10 13:23:06.3783592' AS DateTime2), 1, 2, 20000, 2, N'b028353e-a83c-43ad-a589-9f5d3946da8c')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (11, CAST(N'2022-05-10 13:23:06.3783592' AS DateTime2), 1, 3, 20000, 1, N'bd299f24-b63d-4e69-8a48-478a83c02684')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (12, CAST(N'2022-05-11 13:23:06.3783592' AS DateTime2), 1, 4, 20000, 2, N'c1c6847f-c57f-42e2-9d9c-30c8462f53b0')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (13, CAST(N'2022-05-11 13:23:06.3783592' AS DateTime2), 1, 1, 20000, 1, N'c5b9a4f7-60c4-469f-b4f9-5c8731602ad2')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (14, CAST(N'2022-05-11 13:23:06.3783592' AS DateTime2), 1, 2, 20000, 1, N'cfbf4d02-bbcd-4915-8be5-e1192ddbd628')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (15, CAST(N'2022-05-13 18:02:03.8140534' AS DateTime2), 1, 3, 20000, 1, N'2b23105f-ad7e-4762-9860-ece5f7503df5')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (16, CAST(N'2022-05-13 18:04:50.5603636' AS DateTime2), 1, 4, 20000, 2, N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc')
INSERT [dbo].[Orders] ([Id], [Created_date], [Is_check], [Status], [ShoppingFee], [PaymentMenthodId], [UserId]) VALUES (17, CAST(N'2022-06-15 04:11:30.4239138' AS DateTime2), 1, 4, 20000, 2, N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[PaymentMenthod] ON 

INSERT [dbo].[PaymentMenthod] ([Id], [Name]) VALUES (1, N'Thanh toán khi nhận hàng')
INSERT [dbo].[PaymentMenthod] ([Id], [Name]) VALUES (2, N'Thanh toán PayPal')
SET IDENTITY_INSERT [dbo].[PaymentMenthod] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (1, N'Áo sơ mi voan họa tiết loan màu', N'Giá thấp nhất, chất lượng tốt nhất, chất liệu voan, độ đàn hồi cao, đẹp, không có xơ vải, màu sắc đẹp, thoải mái, thoáng khí.', 350000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Hàn Quốc', N'MOXY', 1, 1, 2)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (4, N'Áo croptop xoắn eo body', N'Áo croptop nữ xoắn bụng, kiểu crotop vải co dãn với chất liệu cotton co giãn 4 chiều, đường may tinh tế, tỉ mỉ, phù hợp du lịch hoặc đi chơi dạo phố, kết hợp cùng quần Jean, quần kaki, áo len hay áo khoác,... tạo sự đa dạng về phong cách thời trang.', 150000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'MIDI', 1, 1, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (5, N'Áo ống croptop đan dây eo', N'Áo Ống Croptop Đan Dây Eo Áo Kiểu Nữ Form Dáng Croptop Sexy:
- Chất liệu : thun borip
- Freesize từ 40-52kg
- Form ôm, phù hợp cho nữ.', 130000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'TENY', 1, 1, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (6, N'Áo trễ vai hoa nhí', N'Áo kiểu trễ vai với chất voan lụa phối hoạ tiết hoa nhí, áo có chun co giãn ôm vừa người, phần trễ vai có phối bèo xinh yêu, tay phồng dễ thương', 135000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Hàn Quốc', N'TENY', 1, 1, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (7, N'Áo thun tay lỡ loan màu', N'chất liệu thun cotton thấm mồ hôi, tạo cảm giác thoải mái cho người mặc, đường chỉ may tinh tế, tỉ mỉ, chắc chắn, thiết kế thời trang trẻ trung cho bạn một phong cách đầy năng động, thích hợp đi chơi , đi học , đi du lịch, dạo phố', 250000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'SHINE', 1, 1, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (8, N'Áo croptop tay dài đắp chéo', N'Chất liệu voan kích thước Freesize từ 30kg đến 55kg áo có chun co giãn theo người.', 150000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'LYLY', 1, 1, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (9, N'Áo khoác Bomber Jacket Dù Unisex', N'Áo Bomber Jacket Dù 2 Lớp STURDUR Unisex Nam Nữ Bomber STURDUR Chất dù chính phẩm nhập mát mẻ, hai lớp dày dặn, form dáng rộng rãi, có túi trong tiện lợi, màu trắng tôn da dễ mặc dễ phối đồ.', 370000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'SHINE', 1, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (10, N'Áo khoác Bomber trơn Unisex', N'Áo khoác dù thời trang nam nữ mới đẹp, chất liệu nỉ xịn, vải đẹp, may kĩ đep chất lượng, đi chơi hay đi học đi làm đều tiện lợi, có size form rộng đẹp', 350000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'SHINE', 1, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (11, N'Áo khoác nỉ lông mềm tiểu thư', N'Áo khoác lông viền một lớp bao đẹp ce nhé, Free size 40-60kg, chất nỉ lông mềm mịn', 400000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Hàn Quốc', N'LUNA', 1, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (12, N'Áo cadigan họa tiết caro', N'Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn, không chỉ thừa, mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao, phù hợp khi mix đồ với nhiều loại trang phục, thiết kế hiện đại, trẻ trung, năng động, dễ phối đồ', 380000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'LYLY', 1, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (13, N'Áo khoác nỉ trơn màu xanh', N'Chất Liệu vải nỉ, độ dày vừa phải, mịn, đanh vải, không xù, nặng tay hàng đẹp loại 1 giá quá rẻ.', 360000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'LUNA', 1, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (15, N'Áo bomber nữ form rộng kẻ caro', N'Áo bomber nữ form rộng kẻ caro với kiểu dáng thiết kế form rộng, chất liệu nhung tăm 1 lớp dày dặn, phong cách unisex thích hợp mặc đi chơi', 360000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'TENY', 1, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (16, N'Áo khoác dù Bomber Nữ Unisex', N'Chất liệu vải dù 2 lớp, bên trong lót vải dù thấm hút mồ hôi, có túi bên trong, cổ bomber phối bo sọc, thiết kế tay dài bo có bo thun, rộng thoải mái, form áo vừa vặn cơ thể, thoải mái vận động, đem lại cảm giác thoải mái cho người mặc', 350000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'SHINE', 1, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (17, N'Áo cadigan kẻ sọc CELEB THOM Browne', N'Cadigan 5 cúc cài chắc chắn, có hai túi hộp phía trước, trước một túi áo in chữ logo nhỏ. Một bên tay có sọc trắng làm điểm nhấn. Chiếc áo phù hợp mọi phong cách.', 200000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Hàn Quốc', N'LUNA', 1, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (18, N'Áo khoác dạ Tweed tay dài', N'Chất dạ dày dặn thích hợp mặc cho mua thu đông trong năm với form áo rộng rãi thoải mái, chất liệu dày ấm, vừa phải nhưng rất ấm áp, có thể mặc phối đồ nhẹ nhàng cho mùa thu hay mùa đông.', 500000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Hàn Quốc', N'LYLY', 1, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (19, N'Chân váy chữ A phối ren lưới', N'Chất liệu mềm mại và thoải mái, bền và phù hợp với trang phục hàng ngày, lý tưởng cho các dịp du lịch, hẹn hò, hoạt động hàng ngày', 200000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'MIDI', 1, 3, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (20, N'Chân váy tầng xòe chất kaki có lót', N'Chân váy xòe tầng xinh xắn có quần bên trong dày dặn cho các chị em thoải mái tự tin xuống phố.', 150000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'LYLY', 1, 3, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (21, N'Chân váy xếp ly tennis', N'Dáng xếp ly cạp siêu co che bụng tốt, hàng chất tuyết mưa, chân váy có quần bên trong không lo bị lộ hàng.', 140000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'TENY', 1, 3, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (22, N'Chân váy kaki chữ A', N'Chân váy chữ A dáng ngắn chất nhung tăm trơn có lót quần, kiểu dáng basic trẻ trung với kiểu dáng chữ A quốc dân
dễ mặc dễ phối, phù hợp đi dạo, đi chơi, du lịch, đi học....trẻ trung, thoải mái, cá tính.', 150000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'TENY', 1, 3, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (23, N'Chân váy voan dài xếp ly', N'Chân váy chất liệu voan mỏng nhẹ xếp li nhiều tầng bồng bềnh dáng xòe dài mặc cực xinh, có cạp chun co giãn tốt mặc cực thoải mái, phú hợp đi học, đi làm, đi chơi, dạo phố, du lịch, đi biển.', 200000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'MIDI', 1, 3, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (24, N'Chân váy jean dài chữ A', N'Chân váy có chất vải kaki jean, chiều dài 72cm, có cạp chun co giãn phía sau, phía trước có khóa kéo và khuy cài nên không lo bị chật hoặc rộng', 250000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'LUNA', 1, 3, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (26, N'Đầm hoa phối cổ yếm', N'Đầm có chất liệu voan hoa siêu đẹp, mang đến vẻ đẹp nhẹ nhàng, thích hợp cho các bạn gái mặc dự tiệc, đi chơi, dạo phố cùng bạn bè, mặc ở nhà , đến công sở hay các buổi hẹn hò... ', 475000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'MOXY', 1, 4, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (27, N'Đầm mixi trễ vai', N'Chất vải mềm in hoa nổi, may lót kĩ lưỡng cẩn thận không sợ lộ, dáng dài thướt tha, dịu dàng, siêu xinh xắn', 375000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'MOXY', 1, 4, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (28, N'Đầm hai dây chia tầng', N'Đầm được thiết kế trẻ trung năng động nhưng không kém phần duyên dáng, chuẩn form, dễ dàng phối trang phục , thích hợp đi chơi, đi làm đi dạo phố, thích hợp cho sự kết hợp với giày cao gót, búp bê,…', 325000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'MOXY', 1, 4, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (29, N'Đầm trắng hở eo cổ tròn', N'Đầm trắng cổ tròn, khoét hai bên eo cực hot,  vừa cá tính vừa tiểu thư cho các nàng mê dịu dàng nhưng lại có 1 chút cá tính riêng biệt', 375000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'MOXY', 1, 4, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (30, N'Đầm hồng cổ vuông rút dây', N'Váy cổ vuông tay phồng rút dây thon eo ôm gọn điệu đà style retro Hàn Quốc', 325000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'MOXY', 1, 4, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (31, N'Đầm hoa tay dài', N'Chất lụa mềm mặc siêu dễ chịu thoải mái, dáng bồng siêu xinh, được thiết kế trẻ trung năng động nhưng không kém phần duyên dáng.', 375000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'MOXY', 1, 4, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (32, N'Quần short denim ống rộng', N'Quần short chất liệu vải denim ống rộng màu trắng cổ điển năng động, cá tính', 135000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'TENY', 1, 5, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (33, N'Quần short kaki cạp cao ulzzang', N'Quần short nữ kaki cạp cao, quần đùi jean nữ ống rộng lưng cao phong cách ulzzang Hàn Quốc C1, chất liệu kaki/jean dày dặn co dãn cực thoải mái', 145000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Hàn Quốc', N'TENY', 1, 5, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (34, N'Quần dài ống rộng', N'Thiết kế cạp cao ken bụng,tôn dáng kéo dài đôi chân cho cô nàng tạo vẻ bề ngoài cực sang chảnh, mang lại cảm giác thoải mái, vừa che khuyết điểm bắp chân to,chân cong rất hiệu quả.', 250000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Hàn Quốc', N'MIDI', 1, 5, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (35, N'Đồ bộ mặc nhà Gấu lọ mực', N'Đồ bộ nữ mặc nhà dễ thương, bộ ngủ hoạt hình bigsize cao cấp tay cộc quần cộc mùa hè chất cotton thun sữa BC01 mềm mại', 325000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Hàn Quốc', N'LUNA', 1, 6, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (36, N'Đồ ngủ họa tiết da báo', N'Chất liệu chính của vải: polyester (sợi polyester), hàm lượng thành phần: 91% - 95%, độ dày phần mỏng', 295000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'LUNA', 1, 6, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Year_SX], [Origin], [Trandemark], [Active], [CategoryId], [PromotionId]) VALUES (37, N'Đồ bộ nữ pijama mặc nhà', N'Đồ bộ nữ pijama mặc nhà, bộ ngủ dễ thương quần cộc áo cộc chất vải thô hàn mềm cho mùa hè BC05', 250000, CAST(N'2019-12-01 19:00:00.0000000' AS DateTime2), N'Việt Nam', N'LUNA', 1, 6, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (1, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (1, 3, 4)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (4, 1, 3)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (4, 2, 5)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (5, 1, 4)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (5, 2, 5)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (6, 1, 2)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (6, 2, 5)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (6, 3, 5)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (7, 5, 3)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (8, 1, 4)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (8, 2, 5)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (9, 5, 8)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (10, 5, 3)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (11, 2, 3)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (11, 3, 3)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (11, 4, 2)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (12, 5, 2)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (13, 5, 4)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (15, 5, 4)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (16, 5, 2)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (17, 5, 4)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (18, 2, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (18, 3, 1)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (19, 1, 2)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (19, 2, 3)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (20, 1, 3)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (20, 2, 2)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (20, 3, 2)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (21, 1, 0)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (21, 2, 2)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (22, 1, 1)
INSERT [dbo].[ProductSize] ([ProductId], [SizeId], [Quantity]) VALUES (22, 2, 2)
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([Id], [percent], [StartedDate], [EndDate]) VALUES (1, 0, CAST(N'2022-05-11 00:00:00.0000000' AS DateTime2), CAST(N'2022-11-30 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Promotion] ([Id], [percent], [StartedDate], [EndDate]) VALUES (2, 0.25, CAST(N'2022-05-11 00:00:00.0000000' AS DateTime2), CAST(N'2022-05-15 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Promotion] ([Id], [percent], [StartedDate], [EndDate]) VALUES (3, 0.3, CAST(N'2022-05-13 00:00:00.0000000' AS DateTime2), CAST(N'2022-05-20 00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Promotion] OFF
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Admin', N'Admin', N'Admin')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Employee', N'Employee', N'Employee')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3', N'Customer', N'Customer', N'Customer')
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name], [Description]) VALUES (1, N'S', N'Chiều cao: 150 - 155 cm, Cân nặng: 40 - 45 kg')
INSERT [dbo].[Sizes] ([Id], [Name], [Description]) VALUES (2, N'M', N'Chiều cao: 156 - 160 cm, Cân nặng: 43 - 46 kg')
INSERT [dbo].[Sizes] ([Id], [Name], [Description]) VALUES (3, N'L', N'Chiều cao: 160 - 164 cm, Cân nặng: 46 - 53 kg')
INSERT [dbo].[Sizes] ([Id], [Name], [Description]) VALUES (4, N'XL', N'Chiều cao: 165 - 170 cm, Cân nặng: 53 - 57 kg')
INSERT [dbo].[Sizes] ([Id], [Name], [Description]) VALUES (5, N'Free size', N'')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
SET IDENTITY_INSERT [dbo].[StockReceived] ON 

INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (1, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (2, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (3, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (4, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (5, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (6, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (7, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (8, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (9, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (10, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (11, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (12, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (13, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (14, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (15, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (16, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (17, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (18, CAST(N'2022-05-01 04:16:55.6645140' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
INSERT [dbo].[StockReceived] ([Id], [Date], [UserId]) VALUES (19, CAST(N'2022-05-01 13:19:28.5272356' AS DateTime2), N'0728166e-57f1-44ac-9a9b-bb416f791c99')
SET IDENTITY_INSERT [dbo].[StockReceived] OFF
SET IDENTITY_INSERT [dbo].[StockReceivedDetail] ON 

INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (1, 15, 150000, 1, 1)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (2, 10, 50000, 2, 4)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (3, 10, 50000, 3, 5)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (4, 15, 50000, 4, 6)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (5, 10, 100000, 5, 7)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (6, 10, 50000, 6, 8)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (7, 10, 150000, 7, 9)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (8, 5, 120000, 8, 10)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (9, 10, 175000, 9, 11)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (10, 5, 160000, 10, 12)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (11, 5, 150000, 11, 13)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (12, 5, 150000, 12, 15)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (13, 5, 140000, 13, 16)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (14, 5, 70000, 14, 17)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (15, 5, 200000, 15, 18)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (16, 6, 50000, 16, 19)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (17, 7, 45000, 17, 20)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (18, 4, 35000, 18, 21)
INSERT [dbo].[StockReceivedDetail] ([Id], [Quantity], [Unit_price], [StockReceivedId], [ProductId]) VALUES (19, 5, 50000, 19, 22)
SET IDENTITY_INSERT [dbo].[StockReceivedDetail] OFF
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'0728166e-57f1-44ac-9a9b-bb416f791c99', N'1')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'144378e2-4d9e-47b1-aa5c-1bf5e632a09b', N'2')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'1631dceb-19ca-4d2d-8e67-12d6997f0e02', N'2')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'1e0d7274-81b3-489d-87ca-6d04b4dd704c', N'2')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'5c9f523c-0442-42c0-b5d9-b06f51b545db', N'2')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'204dac1a-2056-47db-96b5-7e0ee622ca56', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'2b23105f-ad7e-4762-9860-ece5f7503df5', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'4be5f215-3c30-4b1a-988e-bb2f16b6a715', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'58945432-2f57-4961-860e-89fe60d877ba', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'662afecb-a2ca-49ec-bbf4-47072f8aeacc', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'670bc58b-27c0-4f50-8942-1d7a25040a9b', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'7f3055f1-9fe9-44db-bea0-86691342c539', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'983b27e8-eee5-4c09-8954-255a971731a7', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'b028353e-a83c-43ad-a589-9f5d3946da8c', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'bd299f24-b63d-4e69-8a48-478a83c02684', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'c1c6847f-c57f-42e2-9d9c-30c8462f53b0', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'c5b9a4f7-60c4-469f-b4f9-5c8731602ad2', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'cfbf4d02-bbcd-4915-8be5-e1192ddbd628', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'd0b6f4c1-446d-44e9-8d36-ca7bb27d0178', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'd9f22f8c-9ed2-4d66-8b95-b3821e547a62', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'dfa0efca-8f04-45f5-97db-3226bc5e83cd', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'e1004f39-17c3-494d-87d4-d3eff04cb49e', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'e5a1f917-0309-4cab-9416-9f05c3394f9d', N'3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'ead7ecf3-516b-488e-bc80-de995fa5bf8b', N'3')
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0728166e-57f1-44ac-9a9b-bb416f791c99', N'Uyên Nguyễn', NULL, NULL, NULL, 1, CAST(N'2022-05-10 22:24:06.5335148' AS DateTime2), N'uyen@gmail.com', N'UYEN@GMAIL.COM', N'uyen@gmail.com', N'UYEN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFrYU5XXHXlUgXAHciq6ANSadwxtyXhV+piC8UgA6PD7AkMvHOdMfMlLGmV8cZ9vBA==', N'EZC3IJT5PEG4BF5WMSMBTHNTH3PLX4CR', N'e1cf5779-8598-458a-8574-a9b53832e644', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'144378e2-4d9e-47b1-aa5c-1bf5e632a09b', N'Linh Đan', NULL, CAST(N'2000-10-25 22:39:02.5814464' AS DateTime2), N'Nữ', 1, CAST(N'2022-05-10 22:26:40.8088301' AS DateTime2), N'linhdan@gmail.com', N'LINHDAN@GMAIL.COM', N'linhdan@gmail.com', N'LINHDAN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBkr4AObtOcXlxXd1FrBA8usKhOW1oIIerckg64nWNxC9PBfjxrMDUdPJlpCCPN00w==', N'AA2ZHKLE5Z4UIMNECGQABEW7COYJHZWW', N'ac5fc7a4-bd33-4919-be83-079141f69b05', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1631dceb-19ca-4d2d-8e67-12d6997f0e02', N'Phương Hà', NULL, CAST(N'2000-08-08 22:39:02.5814464' AS DateTime2), N'Nữ', 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'phuongha@gmail.com', N'PHUONGHA@GMAIL.COM', N'phuongha@gmail.com', N'PHUONGHA@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBwbIN8/hAwrhM4U4D5sSFTNHdF4M5M01+WM1FLZbEFT/WABLh4SB1gGX8LGCUNXPw==', N'OFYODBGHK7EW5WGEDRAPAFIMYUPQ7TQD', N'd349ac24-f666-4b18-876f-b3510cf18023', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1e0d7274-81b3-489d-87ca-6d04b4dd704c', N'Lan Trinh', NULL, CAST(N'2001-06-12 22:39:02.5814464' AS DateTime2), N'Nữ', 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'lantrinh@gmail.com', N'LANTRINH@GMAIL.COM', N'lantrinh@gmail.com', N'LANTRINH@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGUkmMGQt3Nfz9jydWmakjaPFtTqK5VUwOfh5+2xbbarbJI/fVImfrhc4qrJDMxuNw==', N'5LPCJK7Y55ZOIJPGULCOA5ISDNDB4DQP', N'b183cb1b-2a8e-4129-9131-29ffe4e162c2', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'204dac1a-2056-47db-96b5-7e0ee622ca56', N'Hương Ly', NULL, CAST(N'2000-09-08 22:39:02.5814464' AS DateTime2), N'Nữ', 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'huongly@gmail.com', N'HUONGLY@GMAIL.COM', N'huongly@gmail.com', N'HUONGLY@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJ29BLhNoj2Q/1+0CHABmRssyoBpcA1W7JKcu9xvPTbGzfvTJwLiQpVpUO7oGgefIg==', N'RGRC7RS4I7OKF4XU3EBALE37WIL4VKYW', N'68adc6a6-ec72-4548-a548-4180db4b609a', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2b23105f-ad7e-4762-9860-ece5f7503df5', N'Vân Anh', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'vananh@gmail.com', N'VANANH@GMAIL.COM', N'vananh@gmail.com', N'VANANH@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENCdjVkP9lAt2mQufkokmWVHYcz0JZ2BfrDD/Qikf14+Y0fO3kWRBPYd23xRxhlY9g==', N'W764CAU75LCYJ34TDUCHHRJ4SFH65V3O', N'a80a8e8f-9eb6-477e-89ec-a87cb234b9fc', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4be5f215-3c30-4b1a-988e-bb2f16b6a715', N'Như Trúc', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'nhutruc@gmail.com', N'NHUTRUC@GMAIL.COM', N'nhutruc@gmail.com', N'NHUTRUC@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJg2lQBGgD+Zhe6Vc0ad1xI3viW8ShviWXpaWam4KTXhK7Ufcr6iJVkVw/ONgHKyew==', N'C2TUH4E44ZYDBCLMSPY6DV6G45B7ZYES', N'516d2c94-0dcd-4d3a-9984-2c933545eb2a', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'58945432-2f57-4961-860e-89fe60d877ba', N'Thanh Tâm', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'thanhtam@gmail.com', N'THANHTAM@GMAIL.COM', N'thanhtam@gmail.com', N'THANHTAM@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGyRPqjTIgfqgVcIv/uPu1+DjngnI89rficordoE7SVGWnpe3kCNZE2uuQHE6/Y4Uw==', N'W6RCEL3W7ZGV25PX6KCX3FWMSX2WQF2A', N'6cf5371a-4d17-4839-8458-7bff6772d48e', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5c9f523c-0442-42c0-b5d9-b06f51b545db', N'khoa', NULL, CAST(N'2000-12-12 00:00:00.0000000' AS DateTime2), N'Nam', 0, CAST(N'2022-05-13 18:25:31.1432821' AS DateTime2), N'khoa@gmail.com', N'KHOA@GMAIL.COM', N'khoa@gmail.com', N'KHOA@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFnqUnMjp5WeAzXjyJ8SCOZ/vSW5r7Cyha1vXMYRgySQ6g1PgMEbb+dCjJXHi9z6aQ==', N'UXDBXAPZFNQRWMFVLYEEENB3VTCBU6KC', N'cb76c7dd-c133-48b6-bc42-c6926f6da704', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'662afecb-a2ca-49ec-bbf4-47072f8aeacc', N'Tú Quyên', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'tuquyen@gmail.com', N'TUQUYEN@GMAIL.COM', N'tuquyen@gmail.com', N'TUQUYEN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECJvxByp8BObMrmMVKqNhroy2gPCACKXgACQ6WHDJmkXNecZTmGal9XvvgOs7NeCZQ==', N'TIA33XSGNOL6CBVBMFES4LJWMRVKKQ5I', N'925cfdf2-a323-426c-88e8-96c6f6e6a0b4', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'670bc58b-27c0-4f50-8942-1d7a25040a9b', N'Bảo Linh', NULL, CAST(N'2000-08-08 22:39:02.5814464' AS DateTime2), N'Nữ', 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'baolinh@gmail.com', N'BAOLINH@GMAIL.COM', N'baolinh@gmail.com', N'BAOLINH@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEB6hDeLaYx02l5FXnYeunWwYLO1NUGTpHzRy8Fl+InmS+1mp8gJ6bKEBkcdq9PmMWA==', N'E66EJ27JPAKUNVNZLKP3LZZGL7LLEB5P', N'b6016a97-0be2-42ae-98e6-04dfed4aa967', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7f3055f1-9fe9-44db-bea0-86691342c539', N'Ngọc Anh', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'ngocanh@gmail.com', N'NGOCANH@GMAIL.COM', N'ngocanh@gmail.com', N'NGOCANH@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGBL/BA7cPtarfNVLYzTnE+O/0a8FpzlGyCO/NWjBrPAO8CBbyfLDJ1p6C/PXqS/xQ==', N'VSVIAIUH23URBXVQQIPU42COK3X3QY63', N'8b12d6c0-11e4-4269-a166-23e88e667288', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8fe10c0a-7ef6-4915-a5c1-c2f065db83fc', N'Thanh Lê', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'thanhle@gmail.com', N'THANHLE@GMAIL.COM', N'thanhle@gmail.com', N'THANHLE@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDl0KTbyyQVWDUdk3D2+pXM2uqbhLes+I3PFku3zXxUGk/m1FM83XykOEl/3dm2xKw==', N'C4JHIBUS7ELSGBC7Z5HCDRTPQLKZTNRQ', N'160c5cfe-e812-40bd-8d84-9a07bf06a8e3', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'983b27e8-eee5-4c09-8954-255a971731a7', N'Nhã Kỳ', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'nhaky@gmail.com', N'NHAKY@GMAIL.COM', N'nhaky@gmail.com', N'NHAKY@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECY2Cxpc/ze7B/KfNdLDUnjZkrBel7AJlHU/yrtmD8B+PyM3uAcoRtueb14AzIWvoA==', N'5LKK5MKCKIGGSNFVCMTSJLQMFGVEHDRT', N'9453d18a-11c5-4420-b023-5dc98ed44e19', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b028353e-a83c-43ad-a589-9f5d3946da8c', N'Phương Thoa', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'phuongthoa@gmail.com', N'PHUONGTHOA@GMAIL.COM', N'phuongthoa@gmail.com', N'PHUONGTHOA@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPk7jnDICg9odLcY9K1LSh7tFvqDwEyq3bkGaxYw7zNpX1py/sOdi8WsQXleA7JcCw==', N'ZFBHNTEOZB4AEJUT7HBPCWKAABVW53OH', N'a8a010d0-b34d-4ec8-ae2b-f6e00ce77baf', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bd299f24-b63d-4e69-8a48-478a83c02684', N'Dương Dương', NULL, CAST(N'2001-05-12 22:39:02.5814464' AS DateTime2), N'Nam', 0, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'duong@gmail.com', N'DUONG@GMAIL.COM', N'duong@gmail.com', N'DUONG@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGW5v29e1goJlL3ALrrLfnzTsN67Rw6cdg51XbIiuqP7pGVnl+7dsTnAOeKsO5+Tqw==', N'7SQSMHGSEXJFVJRWDNGGMNLPVO6ZCWPY', N'6e206881-1f4b-4164-8ec7-19ef17123593', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c1c6847f-c57f-42e2-9d9c-30c8462f53b0', N'Như Quỳnh', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'nhuquynh@gmail.com', N'NHUQUYNH@GMAIL.COM', N'nhuquynh@gmail.com', N'NHUQUYNH@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFwIuAzWqU0LO66kqJUwLTboJ1rCM9tzjwyBSJzcMW1tUY+6zxyMOMTQDdyKE7nx2A==', N'EEKXKAKZFN7YMKZY7AIGDIOTHHXQXB3E', N'fb3989d0-c054-4a25-ac5a-56de1a9f3156', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c5b9a4f7-60c4-469f-b4f9-5c8731602ad2', N'Khánh Chi', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'khanhchi@gmail.com', N'KHANHCHI@GMAIL.COM', N'khanhchi@gmail.com', N'KHANHCHI@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEP3pg7FeCe7F/W8vRqPkdtkPQ5BjSFLf6ZHALxTUCSU7oTGMnMsyGv1JHtklHCYlMQ==', N'RR4HNW5SWRNP2MXSYN3KUEPVJ52NXHGR', N'276ac4bb-44ab-41c8-abe4-c4892980084a', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cfbf4d02-bbcd-4915-8be5-e1192ddbd628', N'Gia Hân', NULL, CAST(N'2000-09-08 22:39:02.5814464' AS DateTime2), N'Nữ', 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'giahan@gmail.com', N'GIAHAN@GMAIL.COM', N'giahan@gmail.com', N'GIAHAN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENWxHEHSfuLviUcZO9TpY1Y04lpdXbd9NUuBnT0mj4/ZYOM0z6fnPla9qbbLuT6veA==', N'JJMU5BSKC5BUHZLK4D7KR7XNQGB4LZGX', N'1facc681-79a4-4b3b-8597-4e03fa0ee639', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd0b6f4c1-446d-44e9-8d36-ca7bb27d0178', N'Nhã Phương', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'nhaphuong@gmail.com', N'NHAPHUONG@GMAIL.COM', N'nhaphuong@gmail.com', N'NHAPHUONG@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPhxuH5PgaFqddsWssuJIekkxgVWutujTNe/tLUhzonqpBdlJn+6Y670F3+6r1bJ4A==', N'KZ6OWDTJIUYHS2A7CABGYRJ7V2522ECQ', N'6f029bef-ec5e-4e8b-bec1-75c06023e528', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd9f22f8c-9ed2-4d66-8b95-b3821e547a62', N'Lan Viên', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'lanvien@gmail.com', N'LANVIEN@GMAIL.COM', N'lanvien@gmail.com', N'LANVIEN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEEx6fc3aOZp2j8Q8TGJPBizkC9VoWWpTsop9nXfUw7eAByTD6L2JbkMpU0ZvjiCETg==', N'A3H4GJ43L53D64FVWI7OZTUHSYEYGKAN', N'd9f34522-908d-4cf5-9b3d-877c82e65469', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'dfa0efca-8f04-45f5-97db-3226bc5e83cd', N'Thiên Ân', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'thienan@gmail.com', N'THIENAN@GMAIL.COM', N'thienan@gmail.com', N'THIENAN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHwN12lJpuJUYhnOz+ejhGqbTkmy5PVgDBRWSnhHbPDuHCtzl8FjiTjYjBmWrPRZWA==', N'UNZWEX2NMBIXV7RBJO263TPKZILPKLHR', N'a13c1483-67c5-47f0-9994-ed1b1c13e335', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e1004f39-17c3-494d-87d4-d3eff04cb49e', N'Lan Ngọc', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'lanngoc@gmail.com', N'LANNGOC@GMAIL.COM', N'lanngoc@gmail.com', N'LANNGOC@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIIHRBuR6lxRpNvUrvwR9jh0ourp8Vl590OalLlD4axVgiPEjCN2dlPidd3tzBkn2Q==', N'AKX2VVDMLJCOX23IM5GYRIYMMSJPWGP2', N'5e389787-add1-4203-8f7c-33d554592e9a', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e5a1f917-0309-4cab-9416-9f05c3394f9d', N'Ngọc Linh', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'ngoclinh@gmail.com', N'NGOCLINH@GMAIL.COM', N'ngoclinh@gmail.com', N'NGOCLINH@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEImp4YAwn5vDkZzQ2kFjC78kpU+b4S2Vq1CbCPjbGyTwKLdIjwOYup/li2DHF4fC5A==', N'KDDAVZ3YCX2ECWUQ7V5YPXRGQWTMYMIQ', N'53c70fe2-8c6e-4114-bcf7-a12ced48b313', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Avatar], [Birthday], [Gender], [Is_active], [Joined_date], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ead7ecf3-516b-488e-bc80-de995fa5bf8b', N'Tuyết Nhung', NULL, NULL, NULL, 1, CAST(N'2022-05-08 22:39:02.5814464' AS DateTime2), N'tuyetnhung@gmail.com', N'TUYETNHUNG@GMAIL.COM', N'tuyetnhung@gmail.com', N'TUYETNHUNG@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEELhxnGg9qDiTwenaH+3xz2HENfIMYfkc4Ixqqz1RYBnP9v3oswS7Z12X34cwUP1lQ==', N'DIGO24ESAPABAO5DRORR7N2RMLQSMGYF', N'd40897ba-1f5a-4871-a8f2-fe96cd3f5fe9', N'0123456789', 0, 0, NULL, 1, 0)
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Address_UserId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Address_UserId] ON [dbo].[Address]
(
	[UserId] ASC
)
WHERE ([UserId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_ProductId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_ProductId] ON [dbo].[Carts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Carts_UserId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_UserId] ON [dbo].[Carts]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Chats_MessageId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Chats_MessageId] ON [dbo].[Chats]
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Chats_UserId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Chats_UserId] ON [dbo].[Chats]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Image_ProductId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Image_ProductId] ON [dbo].[Image]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_OrderId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_OrderId] ON [dbo].[OrderDetail]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ProductId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ProductId] ON [dbo].[OrderDetail]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_PaymentMenthodId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_PaymentMenthodId] ON [dbo].[Orders]
(
	[PaymentMenthodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_CategoryId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Product_CategoryId] ON [dbo].[Product]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_PromotionId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Product_PromotionId] ON [dbo].[Product]
(
	[PromotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductSize_SizeId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductSize_SizeId] ON [dbo].[ProductSize]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ResponseMessages_ChatId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_ResponseMessages_ChatId] ON [dbo].[ResponseMessages]
(
	[ChatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_ProductId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_ProductId] ON [dbo].[Reviews]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Reviews_UserId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_UserId] ON [dbo].[Reviews]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleClaims_RoleId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId] ON [dbo].[RoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Roles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_StockReceived_UserId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_StockReceived_UserId] ON [dbo].[StockReceived]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StockReceivedDetail_ProductId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_StockReceivedDetail_ProductId] ON [dbo].[StockReceivedDetail]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StockReceivedDetail_StockReceivedId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_StockReceivedDetail_StockReceivedId] ON [dbo].[StockReceivedDetail]
(
	[StockReceivedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserClaims_UserId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId] ON [dbo].[UserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserLogins_UserId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserId] ON [dbo].[UserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserRoles_RoleId]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId] ON [dbo].[UserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Users]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/15/2022 5:19:16 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Users]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Users_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Product_ProductId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Users_UserId]
GO
ALTER TABLE [dbo].[Chats]  WITH CHECK ADD  CONSTRAINT [FK_Chats_Messages_MessageId] FOREIGN KEY([MessageId])
REFERENCES [dbo].[Messages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chats] CHECK CONSTRAINT [FK_Chats_Messages_MessageId]
GO
ALTER TABLE [dbo].[Chats]  WITH CHECK ADD  CONSTRAINT [FK_Chats_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Chats] CHECK CONSTRAINT [FK_Chats_Users_UserId]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product_ProductId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_PaymentMenthod_PaymentMenthodId] FOREIGN KEY([PaymentMenthodId])
REFERENCES [dbo].[PaymentMenthod] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_PaymentMenthod_PaymentMenthodId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users_UserId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Promotion_PromotionId] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Promotion_PromotionId]
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD  CONSTRAINT [FK_ProductSize_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSize] CHECK CONSTRAINT [FK_ProductSize_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD  CONSTRAINT [FK_ProductSize_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSize] CHECK CONSTRAINT [FK_ProductSize_Sizes_SizeId]
GO
ALTER TABLE [dbo].[ResponseMessages]  WITH CHECK ADD  CONSTRAINT [FK_ResponseMessages_Chats_ChatId] FOREIGN KEY([ChatId])
REFERENCES [dbo].[Chats] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResponseMessages] CHECK CONSTRAINT [FK_ResponseMessages_Chats_ChatId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Product_ProductId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Users_UserId]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[StockReceived]  WITH CHECK ADD  CONSTRAINT [FK_StockReceived_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[StockReceived] CHECK CONSTRAINT [FK_StockReceived_Users_UserId]
GO
ALTER TABLE [dbo].[StockReceivedDetail]  WITH CHECK ADD  CONSTRAINT [FK_StockReceivedDetail_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StockReceivedDetail] CHECK CONSTRAINT [FK_StockReceivedDetail_Product_ProductId]
GO
ALTER TABLE [dbo].[StockReceivedDetail]  WITH CHECK ADD  CONSTRAINT [FK_StockReceivedDetail_StockReceived_StockReceivedId] FOREIGN KEY([StockReceivedId])
REFERENCES [dbo].[StockReceived] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StockReceivedDetail] CHECK CONSTRAINT [FK_StockReceivedDetail_StockReceived_StockReceivedId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [tracyshop] SET  READ_WRITE 
GO
