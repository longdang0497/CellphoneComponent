USE [master]
GO
/****** Object:  Database [CellphoneComponent]    Script Date: 12/1/2018 3:34:42 PM ******/
CREATE DATABASE [CellphoneComponent]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CellphoneComponent', FILENAME = N'D:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CellphoneComponent.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CellphoneComponent_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CellphoneComponent_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CellphoneComponent] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CellphoneComponent].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CellphoneComponent] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CellphoneComponent] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CellphoneComponent] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CellphoneComponent] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CellphoneComponent] SET ARITHABORT OFF 
GO
ALTER DATABASE [CellphoneComponent] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CellphoneComponent] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CellphoneComponent] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CellphoneComponent] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CellphoneComponent] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CellphoneComponent] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CellphoneComponent] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CellphoneComponent] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CellphoneComponent] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CellphoneComponent] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CellphoneComponent] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CellphoneComponent] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CellphoneComponent] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CellphoneComponent] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CellphoneComponent] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CellphoneComponent] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CellphoneComponent] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CellphoneComponent] SET RECOVERY FULL 
GO
ALTER DATABASE [CellphoneComponent] SET  MULTI_USER 
GO
ALTER DATABASE [CellphoneComponent] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CellphoneComponent] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CellphoneComponent] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CellphoneComponent] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CellphoneComponent] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CellphoneComponent', N'ON'
GO
ALTER DATABASE [CellphoneComponent] SET QUERY_STORE = OFF
GO
USE [CellphoneComponent]
GO
/****** Object:  Table [dbo].[BaoCaoTonKho]    Script Date: 12/1/2018 3:34:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoTonKho](
	[MaBaoCao] [nvarchar](10) NOT NULL,
	[Thang] [int] NULL,
	[Nam] [int] NULL,
	[MaHangHoa] [nvarchar](10) NULL,
	[SoLuongTonDau] [int] NULL,
	[SoLuongNhap] [int] NULL,
	[SoLuongXuat] [int] NULL,
	[SoLuongTonCuoi] [int] NULL,
 CONSTRAINT [PK_BaoCaoTonKho] PRIMARY KEY CLUSTERED 
(
	[MaBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuBanHang]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuBanHang](
	[MaPhieuBanHang] [nvarchar](10) NOT NULL,
	[MaHangHoa] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [decimal](18, 0) NULL,
	[ThanhTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietPhieuBanHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieuBanHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuDatHang]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuDatHang](
	[MaPhieuDatHang] [nvarchar](10) NOT NULL,
	[MaHangHoa] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [decimal](18, 0) NULL,
	[ThanhTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietPhieuDatHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaPhieuNhap] [nvarchar](10) NOT NULL,
	[MaHangHoa] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [decimal](18, 0) NULL,
	[ThanhTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHangHoa] [nvarchar](10) NOT NULL,
	[TenHangHoa] [nvarchar](50) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[GiamGia] [decimal](18, 0) NULL,
	[SoLuongTon] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[MoTa] [ntext] NULL,
	[ThongSoKyThuat] [ntext] NULL,
	[XuatXu] [nvarchar](200) NULL,
	[ThoiGianBaoHang] [int] NULL,
	[HinhAnh] [nvarchar](200) NULL,
	[MaLoaiHangHoa] [nvarchar](10) NULL,
	[TrangThai] [bit] NULL,
	[TenModel] [nvarchar](50) NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHangHoa]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHangHoa](
	[MaLoaiHangHoa] [nvarchar](10) NOT NULL,
	[TenLoaiHangHoa] [nvarchar](50) NULL,
	[PhanTramLoiNhuan] [int] NULL,
 CONSTRAINT [PK_LoaiHangHoa] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [nvarchar](10) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](30) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[MaPhanQuyen] [nvarchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaPhanQuyen] [nvarchar](10) NOT NULL,
	[TenPhanQuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaPhanQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuBanHang]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuBanHang](
	[MaPhieuBanHang] [nvarchar](10) NOT NULL,
	[NgayBan] [date] NULL,
	[MaNhanVien] [nvarchar](10) NULL,
	[TenKhachHang] [nvarchar](200) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[NgayChinhSua] [datetime] NULL,
 CONSTRAINT [PK_PhieuBanHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieuBanHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuBaoHang]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuBaoHang](
	[MaPhieuBaoHanh] [nvarchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[NgayGiao] [date] NULL,
	[MaNhanVien] [nvarchar](10) NULL,
	[TenKhachHang] [nvarchar](200) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[DaGiao] [bit] NULL,
	[NgayChinhSua] [datetime] NULL,
	[TenModel] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuBaoHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieuBaoHanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuChi]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChi](
	[MaPhieuChi] [nvarchar](10) NOT NULL,
	[NgayChi] [date] NULL,
	[MaNhanVien] [nvarchar](10) NULL,
	[MaPhieuNhap] [nvarchar](10) NULL,
	[TongTienChi] [decimal](18, 0) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[NgayChinhSua] [datetime] NULL,
 CONSTRAINT [PK_PhieuChi] PRIMARY KEY CLUSTERED 
(
	[MaPhieuChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatHang]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatHang](
	[MaPhieuDatHang] [nvarchar](10) NOT NULL,
	[NgayDat] [date] NULL,
	[MaNhanVien] [nvarchar](10) NULL,
	[MaNhaCungCap] [nchar](10) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[NgayChinhSua] [datetime] NULL,
 CONSTRAINT [PK_PhieuDatHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/1/2018 3:34:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [nvarchar](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNhanVien] [nvarchar](10) NULL,
	[MaNhaCungCap] [nvarchar](10) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[NgayChinhSua] [datetime] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaoCaoTonKho]  WITH CHECK ADD  CONSTRAINT [FK_BaoCaoTonKho_HangHoa] FOREIGN KEY([MaHangHoa])
REFERENCES [dbo].[HangHoa] ([MaHangHoa])
GO
ALTER TABLE [dbo].[BaoCaoTonKho] CHECK CONSTRAINT [FK_BaoCaoTonKho_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietPhieuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuBanHang_HangHoa] FOREIGN KEY([MaHangHoa])
REFERENCES [dbo].[HangHoa] ([MaHangHoa])
GO
ALTER TABLE [dbo].[ChiTietPhieuBanHang] CHECK CONSTRAINT [FK_ChiTietPhieuBanHang_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietPhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDatHang_HangHoa] FOREIGN KEY([MaHangHoa])
REFERENCES [dbo].[HangHoa] ([MaHangHoa])
GO
ALTER TABLE [dbo].[ChiTietPhieuDatHang] CHECK CONSTRAINT [FK_ChiTietPhieuDatHang_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietPhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDatHang_PhieuDatHang] FOREIGN KEY([MaPhieuDatHang])
REFERENCES [dbo].[PhieuDatHang] ([MaPhieuDatHang])
GO
ALTER TABLE [dbo].[ChiTietPhieuDatHang] CHECK CONSTRAINT [FK_ChiTietPhieuDatHang_PhieuDatHang]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_HangHoa] FOREIGN KEY([MaHangHoa])
REFERENCES [dbo].[HangHoa] ([MaHangHoa])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_LoaiHangHoa] FOREIGN KEY([MaLoaiHangHoa])
REFERENCES [dbo].[LoaiHangHoa] ([MaLoaiHangHoa])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_LoaiHangHoa]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhanQuyen] FOREIGN KEY([MaPhanQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaPhanQuyen])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_PhanQuyen]
GO
ALTER TABLE [dbo].[PhieuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuBanHang_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuBanHang] CHECK CONSTRAINT [FK_PhieuBanHang_NhanVien]
GO
ALTER TABLE [dbo].[PhieuBaoHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuBaoHang_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuBaoHang] CHECK CONSTRAINT [FK_PhieuBaoHang_NhanVien]
GO
ALTER TABLE [dbo].[PhieuChi]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChi_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuChi] CHECK CONSTRAINT [FK_PhieuChi_NhanVien]
GO
ALTER TABLE [dbo].[PhieuChi]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChi_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[PhieuChi] CHECK CONSTRAINT [FK_PhieuChi_PhieuNhap]
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatHang_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuDatHang] CHECK CONSTRAINT [FK_PhieuDatHang_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [CellphoneComponent] SET  READ_WRITE 
GO
