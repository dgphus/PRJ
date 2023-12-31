USE [master]
GO
/****** Object:  Database [assignment]    Script Date: 4/25/2023 1:33:56 PM ******/
CREATE DATABASE [assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [assignment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [assignment] SET  MULTI_USER 
GO
ALTER DATABASE [assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'assignment', N'ON'
GO
ALTER DATABASE [assignment] SET QUERY_STORE = OFF
GO
USE [assignment]
GO
/****** Object:  Table [dbo].[tblDanhmuc]    Script Date: 4/25/2023 1:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDanhmuc](
	[madm] [nvarchar](5) NOT NULL,
	[tendm] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[madm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhomTaiKhoan]    Script Date: 4/25/2023 1:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhomTaiKhoan](
	[nhomtk] [nvarchar](5) NOT NULL,
	[mota] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[nhomtk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSanPham]    Script Date: 4/25/2023 1:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSanPham](
	[masp] [nvarchar](5) NOT NULL,
	[tensp] [nvarchar](50) NULL,
	[mota] [nvarchar](250) NULL,
	[soluong] [int] NULL,
	[dongia] [float] NULL,
	[hinhanh] [nvarchar](200) NULL,
	[trangthai] [bit] NULL,
	[madm] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 4/25/2023 1:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[tentk] [nvarchar](10) NOT NULL,
	[matkhau] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
	[email] [nvarchar](50) NULL,
	[nhomtk] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[tentk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDanhmuc] ([madm], [tendm], [trangthai]) VALUES (N'1', N'Sneaker ', 1)
INSERT [dbo].[tblDanhmuc] ([madm], [tendm], [trangthai]) VALUES (N'2', N'Sandal ', 1)
INSERT [dbo].[tblDanhmuc] ([madm], [tendm], [trangthai]) VALUES (N'3', N'Giày Oxford', 1)
INSERT [dbo].[tblDanhmuc] ([madm], [tendm], [trangthai]) VALUES (N'4', N'Boot Nam', 1)
GO
INSERT [dbo].[tblNhomTaiKhoan] ([nhomtk], [mota], [trangthai]) VALUES (N'admin', N'This is admin', 1)
GO
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'B001', N'Storm Chunky Combat Boots', N'Boot', 10, 840000, N'b001.png', 1, N'4')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'B002', N'Boots Moctoe', N'Boot', 10, 944000, N'b002.png', 1, N'4')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'D001', N'MWC - 7037', N'Sandal', 10, 195000, N'd001.png', 1, N'2')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'D002', N'MWC - 7065', N'Sandal', 10, 235000, N'd002.png', 1, N'2')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'D003', N' MWC NASD- 7074', N'Sandal', 10, 195000, N'd003.png', 1, N'2')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'O001', N'CLASSY SEMI - BROGUES OXFORD', N'OXFORD', 10, 1225000, N'o001.png', 1, N'3')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'O002', N'WHOLECUT OXFORD', N'OXFORD', 10, 1925000, N'o002.png', 1, N'3')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'O003', N'DOUBLE STITCHES OXFORD', N'OXFORD', 10, 1155000, N'o003.png', 1, N'3')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'S001', N'Nike Dunk Low Retro', N'Sneaker', 10, 1275000, N's001.png', 1, N'1')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'S002', N'Yeezy 350 V2 V2 Cloud White', N'Sneaker', 10, 1255000, N's002.png', 1, N'1')
INSERT [dbo].[tblSanPham] ([masp], [tensp], [mota], [soluong], [dongia], [hinhanh], [trangthai], [madm]) VALUES (N'S003', N'Nike Air Max 270 Sepia Stone', N'Sneaker', 10, 1295000, N's003.png', 1, N'1')
GO
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'admin', N'123', 1, N'123@gmail.com', N'admin')
INSERT [dbo].[tblTaiKhoan] ([tentk], [matkhau], [trangthai], [email], [nhomtk]) VALUES (N'admin1', N'12345', 1, N'admin@gmail.com', N'admin')
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD FOREIGN KEY([madm])
REFERENCES [dbo].[tblDanhmuc] ([madm])
GO
ALTER TABLE [dbo].[tblTaiKhoan]  WITH CHECK ADD FOREIGN KEY([nhomtk])
REFERENCES [dbo].[tblNhomTaiKhoan] ([nhomtk])
GO
USE [master]
GO
ALTER DATABASE [assignment] SET  READ_WRITE 
GO
