USE [master]
GO
/****** Object:  Database [QUAN_LY_BAN_HANG_QUAN_AO]    Script Date: 10/10/2024 1:11:07 PM ******/
CREATE DATABASE [QUAN_LY_BAN_HANG_QUAN_AO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUAN_LY_BAN_HANG_QUAN_AO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QUAN_LY_BAN_HANG_QUAN_AO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUAN_LY_BAN_HANG_QUAN_AO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QUAN_LY_BAN_HANG_QUAN_AO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUAN_LY_BAN_HANG_QUAN_AO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET  MULTI_USER 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET QUERY_STORE = ON
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QUAN_LY_BAN_HANG_QUAN_AO]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[maHD] [char](6) NULL,
	[maHang] [char](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiamGia] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[maPhieuNhap] [char](5) NULL,
	[maHang] [char](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUXUAT]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUXUAT](
	[maPhieuXuat] [char](5) NULL,
	[maHang] [char](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [decimal](18, 2) NOT NULL,
	[giamGia] [int] NULL,
	[moTa] [nvarchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[maHD] [char](6) NOT NULL,
	[NV_NguoiID] [char](6) NOT NULL,
	[ngayLap] [datetime] NOT NULL,
	[KH_NguoiID] [char](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[KH_NguoiID] [char](6) NOT NULL,
	[diem] [int] NULL,
	[nguoiTao] [char](6) NULL,
	[ngayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KH_NguoiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MUA]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUA](
	[maHD] [char](6) NOT NULL,
	[maHang] [char](10) NOT NULL,
	[KH_NguoiID] [char](6) NOT NULL,
	[soLuong] [int] NOT NULL,
 CONSTRAINT [pk_muasp] PRIMARY KEY CLUSTERED 
(
	[KH_NguoiID] ASC,
	[maHD] ASC,
	[maHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOI]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOI](
	[NguoiID] [char](6) NOT NULL,
	[hoTen] [nvarchar](255) NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[NguoiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[NV_NguoiID] [char](6) NOT NULL,
	[chucVu] [nchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NV_NguoiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[maPhieuNhap] [char](5) NOT NULL,
	[thoiGian] [datetime] NOT NULL,
	[soLuong] [int] NULL,
	[trangThai] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[maPhieuXuat] [char](5) NOT NULL,
	[thoiGian] [datetime] NOT NULL,
	[soLuong] [int] NULL,
	[trangThai] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[maHang] [char](10) NOT NULL,
	[tenHang] [nvarchar](255) NOT NULL,
	[nhomHang] [nvarchar](255) NULL,
	[thuongHieu] [nvarchar](255) NULL,
	[giaVon] [decimal](18, 0) NOT NULL,
	[giaBan] [decimal](18, 0) NOT NULL,
	[tonKho] [int] NULL,
	[trongLuong] [decimal](18, 2) NULL,
	[anh] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD FOREIGN KEY([maHang])
REFERENCES [dbo].[SANPHAM] ([maHang])
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD FOREIGN KEY([maHD])
REFERENCES [dbo].[HOADON] ([maHD])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([maHang])
REFERENCES [dbo].[SANPHAM] ([maHang])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([maPhieuNhap])
REFERENCES [dbo].[PHIEUNHAP] ([maPhieuNhap])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([maHang])
REFERENCES [dbo].[SANPHAM] ([maHang])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([maPhieuXuat])
REFERENCES [dbo].[PHIEUXUAT] ([maPhieuXuat])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([KH_NguoiID])
REFERENCES [dbo].[KHACHHANG] ([KH_NguoiID])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([NV_NguoiID])
REFERENCES [dbo].[NHANVIEN] ([NV_NguoiID])
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD FOREIGN KEY([KH_NguoiID])
REFERENCES [dbo].[NGUOI] ([NguoiID])
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD FOREIGN KEY([nguoiTao])
REFERENCES [dbo].[NHANVIEN] ([NV_NguoiID])
GO
ALTER TABLE [dbo].[MUA]  WITH CHECK ADD FOREIGN KEY([KH_NguoiID])
REFERENCES [dbo].[KHACHHANG] ([KH_NguoiID])
GO
ALTER TABLE [dbo].[MUA]  WITH CHECK ADD FOREIGN KEY([maHang])
REFERENCES [dbo].[SANPHAM] ([maHang])
GO
ALTER TABLE [dbo].[MUA]  WITH CHECK ADD FOREIGN KEY([maHD])
REFERENCES [dbo].[HOADON] ([maHD])
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD FOREIGN KEY([NV_NguoiID])
REFERENCES [dbo].[NGUOI] ([NguoiID])
GO
/****** Object:  StoredProcedure [dbo].[hd_DanhSach]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[hd_DanhSach]
    as
BEGIN
SELECT maHD, NV_NguoiID, ngayLap, KH_NguoiID
FROM HOADON;
END

GO
/****** Object:  StoredProcedure [dbo].[hd_layDanhSachHoaDon]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hd_layDanhSachHoaDon]
    AS
BEGIN
SELECT HOADON.maHD, HOADON.ngayLap, NGUOI.hoTen AS tenKH, SUM(SANPHAM.giaBan * ChiTietHD.SoLuong) AS TongTienHang, SUM(ChiTietHD.GiamGia) AS GiamGia
FROM HOADON
         JOIN ChiTietHD ON HOADON.maHD = ChiTietHD.maHD
         JOIN SANPHAM ON ChiTietHD.maHang = SANPHAM.maHang
         JOIN KHACHHANG ON HOADON.KH_NguoiID = KHACHHANG.KH_NguoiID
         JOIN NGUOI ON KHACHHANG.KH_NguoiID = NGUOI.NguoiID
GROUP BY HOADON.maHD, HOADON.ngayLap, NGUOI.hoTen;
END


GO
/****** Object:  StoredProcedure [dbo].[hd_layDanhSachSanPhamCuaHoaDon]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hd_layDanhSachSanPhamCuaHoaDon]
    @maHoaDon CHAR(6)
AS
BEGIN
SELECT
    CTHD.maHang,
    SANPHAM.tenHang,
    CTHD.SoLuong,
    SANPHAM.giaBan,
    CTHD.GiamGia,
    (CTHD.SoLuong * SANPHAM.giaBan - CTHD.GiamGia) as ThanhTien
FROM
    HOADON
        JOIN ChiTietHD as CTHD ON HOADON.maHD = CTHD.maHD
        JOIN SANPHAM ON CTHD.maHang = SANPHAM.maHang
WHERE
        HOADON.maHD = @maHoaDon
END


GO
/****** Object:  StoredProcedure [dbo].[hd_layHoaDonCuoi]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hd_layHoaDonCuoi]
    AS
BEGIN
SELECT TOP 1 * FROM HOADON ORDER BY maHD DESC
END


GO
/****** Object:  StoredProcedure [dbo].[hd_layThongTinHoaDonChiTiet]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hd_layThongTinHoaDonChiTiet]
    @maHoaDon CHAR(6)
AS
BEGIN
SELECT HD.maHD, HD.ngayLap, NGUOI.hoTen AS 'TenKhachHang', NHANVIEN_NGUOI.hoTen AS 'TenNhanVien'
FROM HOADON HD
         INNER JOIN KHACHHANG ON HD.KH_NguoiID = KHACHHANG.KH_NguoiID
         INNER JOIN NGUOI ON KHACHHANG.KH_NguoiID = NGUOI.NguoiID
         INNER JOIN NHANVIEN ON HD.NV_NguoiID = NHANVIEN.NV_NguoiID
         INNER JOIN NGUOI NHANVIEN_NGUOI ON NHANVIEN.NV_NguoiID = NHANVIEN_NGUOI.NguoiID
WHERE HD.maHD = @maHoaDon;
END

GO
/****** Object:  StoredProcedure [dbo].[hd_suaChiTietHoaDon]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hd_suaChiTietHoaDon]
    @maHD CHAR(6),
    @maHang CHAR(10),
    @SoLuong INT,
    @GiamGia DECIMAL(18)
AS
BEGIN
    -- Kiểm tra xem sản phẩm có tồn tại trong chi tiết hóa đơn không
    IF NOT EXISTS (SELECT 1 FROM ChiTietHD WHERE maHD = @maHD AND maHang = @maHang)
BEGIN
        -- Nếu sản phẩm chưa tồn tại, thêm sản phẩm mới vào chi tiết hóa đơn
INSERT INTO ChiTietHD (maHD, maHang, SoLuong, GiamGia)
VALUES (@maHD, @maHang, @SoLuong, @GiamGia);
END
ELSE
BEGIN
        -- Nếu sản phẩm đã tồn tại, cập nhật thông tin sản phẩm
UPDATE ChiTietHD
SET SoLuong = @SoLuong,
    GiamGia = @GiamGia
WHERE maHD = @maHD AND maHang = @maHang;
END
END


GO
/****** Object:  StoredProcedure [dbo].[hd_suaHoaDon]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hd_suaHoaDon]
    @maHD char(6),
    @NV_NguoiID char(6),
    @ngayLap datetime,
    @KH_NguoiID char(6)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM HOADON WHERE maHD = @maHD)
BEGIN
UPDATE HOADON
SET NV_NguoiID = @NV_NguoiID,
    ngayLap = @ngayLap,
    KH_NguoiID = @KH_NguoiID
WHERE maHD = @maHD;
SELECT 1 AS result;
END
ELSE
BEGIN
SELECT 0 AS result;
END
END

GO
/****** Object:  StoredProcedure [dbo].[hd_themChiTietHoaDon]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hd_themChiTietHoaDon]
    @maHoaDon CHAR(6),
    @maHang CHAR(10),
    @SoLuong INT,
    @GiamGia DECIMAL(18)
AS
BEGIN
INSERT INTO ChiTietHD(maHD, maHang, SoLuong, GiamGia)
VALUES (@maHoaDon, @maHang, @SoLuong, @GiamGia)
END


GO
/****** Object:  StoredProcedure [dbo].[hd_themHoaDon]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hd_themHoaDon]
    @maHoaDon CHAR(6),
    @NV_NguoiID CHAR(6),
    @ngayLap DATETIME,
    @KH_NguoiID CHAR(6)
AS
BEGIN
INSERT INTO HOADON (maHD, NV_NguoiID, ngayLap, KH_NguoiID)
VALUES (@maHoaDon, @NV_NguoiID, @ngayLap, @KH_NguoiID)
END

GO
/****** Object:  StoredProcedure [dbo].[hd_timKiemHoaDon]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hd_timKiemHoaDon]
    @keyword NVARCHAR(255)
AS
BEGIN
SELECT HOADON.maHD, HOADON.ngayLap, NGUOI.hoTen AS tenKH, SUM(SANPHAM.giaBan * ChiTietHD.SoLuong) AS TongTienHang, SUM(ChiTietHD.GiamGia) AS GiamGia
FROM HOADON
         JOIN ChiTietHD ON HOADON.maHD = ChiTietHD.maHD
         JOIN SANPHAM ON ChiTietHD.maHang = SANPHAM.maHang
         JOIN KHACHHANG ON HOADON.KH_NguoiID = KHACHHANG.KH_NguoiID
         JOIN NGUOI ON KHACHHANG.KH_NguoiID = NGUOI.NguoiID
WHERE HOADON.maHD LIKE '%' + @keyword + '%'
   OR HOADON.ngayLap LIKE '%' + @keyword + '%'
   OR NGUOI.hoTen LIKE N'%' + @keyword + N'%'
GROUP BY HOADON.maHD, HOADON.ngayLap, NGUOI.hoTen;
END

GO
/****** Object:  StoredProcedure [dbo].[hd_xoaHoaDon]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hd_xoaHoaDon]
    @maHoaDon CHAR(6)
AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY
UPDATE SANPHAM
SET tonKho = tonKho + cthd.SoLuong
    FROM SANPHAM sp
    INNER JOIN ChiTietHD cthd ON sp.maHang = cthd.maHang
WHERE cthd.maHD = @maHoaDon
-- Xóa tất cả các chi tiết hóa đơn liên quan đến mã hóa đơn cần xóa
DELETE FROM ChiTietHD WHERE maHD = @maHoaDon
-- Cập nhật lại số lượng tồn kho của các sản phẩm có trong chi tiết hóa đơn

-- Xóa hóa đơn
DELETE FROM HoaDon WHERE maHD = @maHoaDon

    COMMIT TRANSACTION
END TRY
BEGIN CATCH
ROLLBACK TRANSACTION
    THROW
END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[kh_layDanhSachKhachHang]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[kh_layDanhSachKhachHang]
    AS
BEGIN
SELECT KHACHHANG.KH_NguoiID, NGUOI.hoTen, NGUOI.SDT, COALESCE(SUM(ChiTietHD.SoLuong * SANPHAM.giaBan - ChiTietHD.GiamGia), 0) AS TongTien, KHACHHANG.diem
FROM KHACHHANG
         LEFT JOIN HOADON ON KHACHHANG.KH_NguoiID = HOADON.KH_NguoiID
         LEFT JOIN ChiTietHD ON HOADON.maHD = ChiTietHD.maHD
         LEFT JOIN SANPHAM ON ChiTietHD.maHang = SANPHAM.maHang
         INNER JOIN NGUOI ON KHACHHANG.KH_NguoiID = NGUOI.NguoiID
GROUP BY KHACHHANG.KH_NguoiID, NGUOI.hoTen, NGUOI.SDT, KHACHHANG.diem;
END

GO
/****** Object:  StoredProcedure [dbo].[kh_layThongTinKhachHang]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[kh_layThongTinKhachHang]
    @maKhachHang char(6)
AS
BEGIN
    SET NOCOUNT ON;

SELECT KHACHHANG.KH_NguoiID, NGUOI.hoTen, NGUOI.SDT, NGUOI.ngaySinh, NGUOI.gioiTinh, NGUOI.diaChi, KHACHHANG.diem, NGUOI_TAO.hoTen as nguoiTao, KHACHHANG.ngayTao
FROM KHACHHANG
         INNER JOIN NGUOI ON KHACHHANG.KH_NguoiID = NGUOI.NguoiID
         INNER JOIN NHANVIEN ON KHACHHANG.nguoiTao = NHANVIEN.NV_NguoiID
         INNER JOIN NGUOI NGUOI_TAO ON NHANVIEN.NV_NguoiID = NGUOI_TAO.NguoiID
WHERE KHACHHANG.KH_NguoiID = @maKhachHang;
END


GO
/****** Object:  StoredProcedure [dbo].[kh_suaThongTinKhachHang]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[kh_suaThongTinKhachHang]
    @khNguoiID char(6),
@hoTen nvarchar(255),
@gioiTinh bit,
@ngaySinh date,
@diaChi nvarchar(255),
@SDT nvarchar(20)
AS
BEGIN
UPDATE NGUOI
SET hoTen = N'' + @hoTen, gioiTinh = @gioiTinh, ngaySinh = @ngaySinh, diaChi = N'' + @diaChi, SDT = @SDT
WHERE NguoiID = @khNguoiID;
END;

DROP PROCEDURE kh_suaThongTinKhachHang;



GO
/****** Object:  StoredProcedure [dbo].[kh_themKhachHang]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[kh_themKhachHang]
    @khNguoiID CHAR(6),
@hoTen NVARCHAR(255),
@gioiTinh BIT,
@ngaySinh DATE,
@diaChi NVARCHAR(255),
@SDT NVARCHAR(20),
@nguoiTao CHAR(6),
@ngayTao DATETIME
AS
BEGIN
INSERT INTO NGUOI (NguoiID, hoTen, gioiTinh, ngaySinh, diaChi, SDT)
VALUES (@khNguoiID, N'' + @hoTen, @gioiTinh, @ngaySinh, N'' + @diaChi, @SDT)
    INSERT INTO KHACHHANG (KH_NguoiID, diem, nguoiTao, ngayTao)
VALUES (@khNguoiID, 0, @nguoiTao, @ngayTao)
END


---------------- thủ tục quản lý hóa đơn------------------------------------

GO
/****** Object:  StoredProcedure [dbo].[kh_timKiemKhachHang]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[kh_timKiemKhachHang]
    @keyword NVARCHAR(255)
AS
BEGIN
SELECT KHACHHANG.KH_NguoiID, NGUOI.hoTen, NGUOI.SDT, COALESCE(SUM(ChiTietHD.SoLuong * SANPHAM.giaBan - ChiTietHD.GiamGia),0) AS TongTien, KHACHHANG.diem
FROM KHACHHANG
         INNER JOIN NGUOI ON KHACHHANG.KH_NguoiID = NGUOI.NguoiID
         LEFT JOIN HOADON ON KHACHHANG.KH_NguoiID = HOADON.KH_NguoiID
         LEFT JOIN ChiTietHD ON HOADON.maHD = ChiTietHD.maHD
         LEFT JOIN SANPHAM ON ChiTietHD.maHang = SANPHAM.maHang
WHERE KHACHHANG.KH_NguoiID LIKE '%' + @keyword + '%'
   OR NGUOI.hoTen LIKE '%' + @keyword + '%'
   OR NGUOI.SDT LIKE '%' + @keyword + '%'
   OR KHACHHANG.diem LIKE '%' + @keyword + '%'
GROUP BY KHACHHANG.KH_NguoiID, NGUOI.hoTen, NGUOI.SDT, KHACHHANG.diem;
END


GO
/****** Object:  StoredProcedure [dbo].[kh_xoaKhachHang]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[kh_xoaKhachHang]
    @maKhachHang CHAR(6)
AS
BEGIN

DELETE FROM ChiTietHD WHERE maHD IN (
    SELECT maHD FROM HOADON WHERE KH_NguoiID = @maKhachHang
);
DELETE FROM HOADON WHERE KH_NguoiID = @maKhachHang;
DELETE FROM KHACHHANG WHERE KH_NguoiID = @maKhachHang;
DELETE FROM NGUOI WHERE NguoiID = @maKhachHang;
END


GO
/****** Object:  StoredProcedure [dbo].[sp_layDataTableBarCode]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_layDataTableBarCode]
    @maHang CHAR(10)
AS
BEGIN
SELECT maHang, tenHang, giaBan
FROM SANPHAM
WHERE maHang = @maHang
END



GO
/****** Object:  StoredProcedure [dbo].[sp_SoLuongHangBanTrongNgay]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- thống kê số hàng bán trong 1 ngày
CREATE PROCEDURE [dbo].[sp_SoLuongHangBanTrongNgay]
    @ngay DATE
AS
BEGIN
SELECT ISNULL(SUM(ct.SoLuong), 0) AS SoLuongHangBan
FROM HOADON hd
         INNER JOIN ChiTietHD ct ON hd.maHD = ct.maHD
WHERE CAST(hd.ngayLap AS DATE) = CAST(@ngay AS DATE)
END





GO
/****** Object:  StoredProcedure [dbo].[sp_SuaSanPham]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SuaSanPham]
    @maHang CHAR(10),
@tenHang NVARCHAR(255),
@nhomHang NVARCHAR(50),
@thuongHieu NVARCHAR(50),
@giaVon DECIMAL(18),
@giaBan DECIMAL(18),
@tonKho INT,
@trongLuong DECIMAL(18),
@anh VARBINARY(MAX) = NULL
AS
BEGIN
UPDATE SANPHAM
SET tenHang = N'' + @tenHang,
    nhomHang = N'' + @nhomHang,
    thuongHieu = N'' + @thuongHieu,
    giaVon = @giaVon,
    giaBan = @giaBan,
    tonKho = @tonKho,
    trongLuong = @trongLuong,
    anh = @anh
WHERE maHang = @maHang
END

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemSanPham]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ThemSanPham]
    @maHang CHAR(10),
@tenHang NVARCHAR(255),
@nhomHang NVARCHAR(50),
@thuongHieu NVARCHAR(50),
@giaVon DECIMAL(18),
@giaBan DECIMAL(18),
@tonKho INT,
@trongLuong DECIMAL(18),
@anh VARBINARY(MAX) = NULL
AS
BEGIN
INSERT INTO SANPHAM (maHang, tenHang, nhomHang, thuongHieu, giaVon, giaBan, tonKho, trongLuong, anh)
VALUES (@maHang, N'' + @tenHang, N'' + @nhomHang, N'' + @thuongHieu, @giaVon, @giaBan, @tonKho, @trongLuong, @anh)
END



GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDoanhThuTrongNgay]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThongKeDoanhThuTrongNgay]
    @NgayLap DATE
AS
BEGIN
SELECT COUNT(DISTINCT HD.maHD) AS 'SoLuongDonHang',
        SUM(CT.SoLuong * SP.giaBan - CT.GiamGia) AS 'DoanhThu'
FROM HOADON HD
         INNER JOIN ChiTietHD CT ON HD.maHD = CT.maHD
         INNER JOIN SANPHAM SP ON CT.maHang = SP.maHang
WHERE CAST(HD.ngayLap AS DATE) = CAST(@NgayLap AS DATE)
GROUP BY CAST(HD.ngayLap AS DATE)
END


GO
/****** Object:  StoredProcedure [dbo].[sp_TimKiemSanPham]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TimKiemSanPham]
    @keyword NVARCHAR(255)
AS
BEGIN
SELECT sp.*, (SELECT ISNULL(SUM(soLuong), 0) FROM ChiTietHD WHERE maHang = sp.maHang) AS soLuongDaBan
FROM (
         SELECT maHang,tenHang,giaVon,giaBan,tonKho FROM SANPHAM
         WHERE maHang LIKE '%' + @keyword + '%'
            OR tenHang LIKE '%' + @keyword + '%'
            OR nhomHang LIKE '%' + @keyword + '%'
            OR thuongHieu LIKE '%' + @keyword + '%'
            OR CAST(giaVon AS NVARCHAR(255)) LIKE '%' + @keyword + '%'
            OR CAST(giaBan AS NVARCHAR(255)) LIKE '%' + @keyword + '%'
            OR CAST(tonKho AS NVARCHAR(255)) LIKE '%' + @keyword + '%'
            OR CAST(trongLuong AS NVARCHAR(255)) LIKE '%' + @keyword + '%'
     ) AS sp
END


GO
/****** Object:  StoredProcedure [dbo].[sp_TraHang]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TraHang]
    @NgayLap DATE
AS
BEGIN

    DECLARE @SoLuongTraHang INT
    SET @SoLuongTraHang = 0
    DECLARE @HoaDonID CHAR(6)
    DECLARE @HangID CHAR(10)
    DECLARE @SoLuong INT

    DECLARE TraHangCursor CURSOR FOR
SELECT HD.maHD, M.maHang, M.soLuong
FROM HOADON HD
         INNER JOIN MUA M ON HD.maHD = M.maHD
WHERE CAST(HD.ngayLap AS DATE) = @NgayLap

    OPEN TraHangCursor
    FETCH NEXT FROM TraHangCursor INTO @HoaDonID, @HangID, @SoLuong

    -- Lặp qua danh sách các hóa đơn và trả hàng
    WHILE @@FETCH_STATUS = 0
BEGIN

UPDATE SANPHAM
SET tonKho = tonKho + @SoLuong
WHERE maHang = @HangID
DELETE FROM MUA
WHERE maHD = @HoaDonID AND maHang = @HangID
    SET @SoLuongTraHang = @SoLuongTraHang + 1

        FETCH NEXT FROM TraHangCursor INTO @HoaDonID, @HangID, @SoLuong
END

CLOSE TraHangCursor
    DEALLOCATE TraHangCursor

SELECT @SoLuongTraHang AS SoLuongTraHang
END


GO
/****** Object:  StoredProcedure [dbo].[sp_viewChiTietSanPham]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- thủ tục thêm sửa xóa cho bảng sản phẩm
CREATE PROCEDURE [dbo].[sp_viewChiTietSanPham]
    @maHang CHAR(10)
AS
BEGIN
SELECT *
FROM SANPHAM
WHERE maHang = @maHang
END


GO
/****** Object:  StoredProcedure [dbo].[sp_XoaSanPham]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_XoaSanPham]
    @maHang CHAR(10)
AS
BEGIN
    -- kiểm tra xem sản phẩm có tồn tại trong bảng SANPHAM không
    IF EXISTS(SELECT * FROM SANPHAM WHERE maHang = @maHang)
BEGIN
        -- xóa các bản ghi liên quan trong bảng ChiTietHD trước
DELETE FROM ChiTietHD WHERE maHang = @maHang
-- sau đó xóa sản phẩm trong bảng SANPHAM
DELETE FROM SANPHAM WHERE maHang = @maHang
SELECT 'true'
END
ELSE
BEGIN
SELECT 'false'
END
END

GO
/****** Object:  StoredProcedure [dbo].[tk_ThongKeLoiNhuanTheoTuan]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- thủ tục thống kê
CREATE PROCEDURE [dbo].[tk_ThongKeLoiNhuanTheoTuan]
    AS
BEGIN
DECLARE @startOfWeek DATE, @endOfWeek DATE;
SET @startOfWeek = DATEADD(wk, DATEDIFF(wk, 0, GETDATE()), 0); -- Lấy ngày bắt đầu của tuần hiện tại
SET @endOfWeek = DATEADD(day, 6, @startOfWeek); -- Lấy ngày kết thúc của tuần hiện tại

SELECT
    DATEPART(week, dbo.hoadon.ngayLap) AS [thoiGian],
  SUM(dbo.chitietHD.soLuong * dbo.sanpham.giaBan) AS [tongTienHang],
  SUM(dbo.chitietHD.giamGia) AS [giamGia],
  SUM(dbo.chitietHD.soLuong * dbo.sanpham.giaBan) - SUM(dbo.chitietHD.giamGia) AS [doanhThu],
  SUM(dbo.chitietHD.soLuong * dbo.sanpham.giaVon) AS [tongGiaVon],
  SUM(dbo.chitietHD.soLuong * dbo.sanpham.giaBan) - SUM(dbo.chitietHD.soLuong * dbo.sanpham.giaVon) AS [loiNhuan]
FROM dbo.hoadon
    INNER JOIN dbo.chitietHD
ON dbo.hoadon.maHD = dbo.chitietHD.maHD
    INNER JOIN dbo.sanpham
    ON dbo.chitietHD.maHang = dbo.sanpham.maHang
WHERE dbo.hoadon.ngayLap >= @startOfWeek AND dbo.hoadon.ngayLap <= @endOfWeek -- chỉ lấy các hóa đơn trong tuần hiện tại
GROUP BY DATEPART(week, dbo.hoadon.ngayLap)
ORDER BY DATEPART(week, dbo.hoadon.ngayLap);
END


GO
/****** Object:  StoredProcedure [dbo].[VerifyUser]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[VerifyUser]
    @username VARCHAR(50),
    @password VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (SELECT * FROM Login WHERE Username = @username AND Password = @password)
    BEGIN
        SELECT 1 AS Result, Role FROM Login WHERE Username = @username AND Password = @password;
    END
    ELSE
    BEGIN
        SELECT 0 AS Result, NULL AS Role;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[viewSanPham]    Script Date: 10/10/2024 1:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[viewSanPham]
    AS
BEGIN
SELECT maHang, tenHang, giaBan, giaVon, tonKho,
       (SELECT ISNULL(SUM(soLuong), 0) FROM ChiTietHD WHERE maHang = SANPHAM.maHang) AS soLuongDaBan
FROM SANPHAM
END

GO
USE [master]
GO
ALTER DATABASE [QUAN_LY_BAN_HANG_QUAN_AO] SET  READ_WRITE 
GO
