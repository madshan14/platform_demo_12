USE [PlatformDemo]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03/09/2023 6:22:33 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/09/2023 6:22:33 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
USE [master]
GO
/****** Object:  Database [PlatformDemo]    Script Date: 03/09/2023 6:22:33 pm ******/
DROP DATABASE [PlatformDemo]
GO
/****** Object:  Database [PlatformDemo]    Script Date: 03/09/2023 6:22:33 pm ******/
CREATE DATABASE [PlatformDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PlatformDemo', FILENAME = N'G:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PlatformDemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PlatformDemo_log', FILENAME = N'G:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PlatformDemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PlatformDemo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlatformDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlatformDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PlatformDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PlatformDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PlatformDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PlatformDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [PlatformDemo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PlatformDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PlatformDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PlatformDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PlatformDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PlatformDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PlatformDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PlatformDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PlatformDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PlatformDemo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PlatformDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PlatformDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PlatformDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PlatformDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PlatformDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PlatformDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PlatformDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PlatformDemo] SET RECOVERY FULL 
GO
ALTER DATABASE [PlatformDemo] SET  MULTI_USER 
GO
ALTER DATABASE [PlatformDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PlatformDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PlatformDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PlatformDemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PlatformDemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PlatformDemo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PlatformDemo', N'ON'
GO
ALTER DATABASE [PlatformDemo] SET QUERY_STORE = ON
GO
ALTER DATABASE [PlatformDemo] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PlatformDemo]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/09/2023 6:22:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03/09/2023 6:22:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [bigint] NOT NULL,
	[Amount] [float] NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (1, N'Madshan', N'09976072182')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (2, N'Seyyit', N'05715085122')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (3, N'Sergo', N'93536740421')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (4, N'Sergo', N'08229550990')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (5, N'Shemayah', N'66854005731')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (6, N'Brendanus', N'42533620043')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (7, N'Jurou', N'54908277236')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (8, N'Aldwin', N'86756106722')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (9, N'Iosifu', N'77721520729')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (10, N'Dumuzi', N'88867032689')
INSERT [dbo].[Customer] ([CustomerId], [Name], [PhoneNumber]) VALUES (11, N'Oral', N'61269716087')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (1, 1, 5, 1)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (2, 2, 10, 1)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (3, 3, 15, 1)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (4, 4, 20, 1)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (5, 5, 25, 1)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (6, 6, 5, 2)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (7, 7, 10, 2)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (8, 8, 15, 2)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (9, 9, 20, 3)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (10, 10, 25, 3)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (11, 11, 5, 3)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (12, 12, 10, 3)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (13, 13, 15, 4)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (14, 14, 20, 4)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (15, 15, 25, 4)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (16, 16, 5, 4)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (17, 17, 10, 4)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (18, 18, 15, 5)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (19, 19, 15, 6)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (20, 20, 20, 8)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (21, 21, 25, 9)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (22, 22, 5, 9)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (23, 23, 10, 9)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (24, 24, 15, 10)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (25, 25, 20, 10)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (26, 26, 25, 11)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (27, 27, 5, 11)
INSERT [dbo].[Order] ([OrderId], [OrderNumber], [Amount], [CustomerId]) VALUES (28, 28, 10, 11)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
USE [master]
GO
ALTER DATABASE [PlatformDemo] SET  READ_WRITE 
GO
