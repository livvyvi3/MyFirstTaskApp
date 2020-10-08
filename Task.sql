USE [master]
GO
/****** Object:  Database [TestApp]    Script Date: 2020/10/06 18:34:27 ******/
CREATE DATABASE [TestApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TestApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TestApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TestApp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TestApp] SET  MULTI_USER 
GO
ALTER DATABASE [TestApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestApp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestApp] SET QUERY_STORE = OFF
GO
USE [TestApp]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 2020/10/06 18:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[DueDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Task] ON 

INSERT [dbo].[Task] ([Id], [Name], [DueDate], [Status]) VALUES (1, N'fdhdfhdffdh', CAST(N'2020-10-05T00:00:00.000' AS DateTime), N'New')
INSERT [dbo].[Task] ([Id], [Name], [DueDate], [Status]) VALUES (2, N'Vongai', CAST(N'2020-10-07T00:00:00.000' AS DateTime), N'Overdue')
INSERT [dbo].[Task] ([Id], [Name], [DueDate], [Status]) VALUES (3, N'Feed the dogs', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Incomplete')
INSERT [dbo].[Task] ([Id], [Name], [DueDate], [Status]) VALUES (4, N'Clean the kennel', CAST(N'2020-10-07T00:00:00.000' AS DateTime), N'New')
INSERT [dbo].[Task] ([Id], [Name], [DueDate], [Status]) VALUES (5, N'Feed the pigs', CAST(N'2020-10-05T00:00:00.000' AS DateTime), N'Overdue')
SET IDENTITY_INSERT [dbo].[Task] OFF
GO
USE [master]
GO
ALTER DATABASE [TestApp] SET  READ_WRITE 
GO
