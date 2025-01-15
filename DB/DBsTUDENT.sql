USE [master]
GO
/****** Object:  Database [StudentWebapi]    Script Date: 1/8/2025 4:22:31 PM ******/
CREATE DATABASE [StudentWebapi]

ALTER DATABASE [StudentWebapi] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentWebapi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentWebapi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentWebapi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentWebapi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentWebapi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentWebapi] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentWebapi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentWebapi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentWebapi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentWebapi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentWebapi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentWebapi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentWebapi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentWebapi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentWebapi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentWebapi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [StudentWebapi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentWebapi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentWebapi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentWebapi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentWebapi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentWebapi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentWebapi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentWebapi] SET RECOVERY FULL 
GO
ALTER DATABASE [StudentWebapi] SET  MULTI_USER 
GO
ALTER DATABASE [StudentWebapi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentWebapi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentWebapi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentWebapi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudentWebapi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StudentWebapi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'StudentWebapi', N'ON'
GO
ALTER DATABASE [StudentWebapi] SET QUERY_STORE = ON
GO
ALTER DATABASE [StudentWebapi] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [StudentWebapi]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/8/2025 4:22:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StuId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[age] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student] ON 
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (1, N'hassan', N'hassan@gmail.com', 12)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (2, N'ajmal', N'ajmal@gmail.com', 11)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (4, N'waleed khan 12', N'khan12@gmail.com', 12)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (6, N'bilal', N'bilal@gmail.com', 13)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (1002, N'asim', N'asim@gmail.com', 12)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (1003, N'haris', N'haris@gmail.com', 11)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (1004, N'sarim', N'sarim@gmail.com', 11)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (2002, N'haris', N'haris@gmail.com', 11)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (2003, N'haris', N'haris@gmail.com', 11)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (2004, N'hassan', N'hassan@gmail.com', 6)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (2005, N'sarim', N'sarim@gmail.com', 12)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (2006, N'sarim', N'sarim@gmail.com', 12)
GO
INSERT [dbo].[Student] ([StuId], [name], [email], [age]) VALUES (2007, N'kawish', N'kawish@gmail.com', 15)
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
USE [master]
GO
ALTER DATABASE [StudentWebapi] SET  READ_WRITE 
GO
