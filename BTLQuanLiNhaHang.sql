CREATE DATABASE [QuanLiNhaHang_1]
USE [QuanLiNhaHang_1]
GO
/****** Object:  Table [dbo].[ChiTietHDB]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDB](
	[MaHDB] [nvarchar](15) NOT NULL,
	[MaMA] [nvarchar](15) NOT NULL,
	[SLBan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC,
	[MaMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[MaHDN] [nvarchar](15) NOT NULL,
	[MaNL] [nvarchar](15) NOT NULL,
	[MaMA] [nvarchar](15) NOT NULL,
	[SLNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC,
	[MaNL] ASC,
	[MaMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[MaHDB] [nvarchar](15) NOT NULL,
	[NgayBan] [date] NOT NULL,
	[MaKH] [nvarchar](15) NOT NULL,
	[MaNV] [nvarchar](15) NOT NULL,
	[TongTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHDN] [nvarchar](15) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[MaNCC] [nvarchar](15) NOT NULL,
	[MaNV] [nvarchar](15) NOT NULL,
	[TongTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](15) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDTKH] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonAn](
	[MaMA] [nvarchar](15) NOT NULL,
	[TenMA] [nvarchar](50) NOT NULL,
	[GiaMA] [money] NULL,
	[MaTD] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu](
	[MaNL] [nvarchar](15) NOT NULL,
	[MaMA] [nvarchar](15) NOT NULL,
	[TenNL] [nvarchar](50) NOT NULL,
	[GiaNL] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC,
	[MaMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](15) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[SDTNCC] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](15) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDTNV] [nvarchar](20) NOT NULL,
	[MaPhong] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [nvarchar](15) NOT NULL,
	[GiaPhong] [money] NOT NULL,
	[SoChoNgoi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 10/14/2022 10:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucDon](
	[MaTD] [nvarchar](15) NOT NULL,
	[NgayTD] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB01', N'MA05', 5)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB01', N'MA07', 3)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB02', N'MA01', 8)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB02', N'MA03', 3)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB02', N'MA04', 6)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB03', N'MA02', 8)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB03', N'MA06', 11)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB04', N'MA10', 8)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB05', N'MA08', 5)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB06', N'MA09', 2)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB07', N'MA14', 5)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB08', N'MA12', 9)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB09', N'MA13', 6)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB10', N'MA11', 16)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB11', N'MA04', 6)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB12', N'MA07', 6)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB13', N'MA09', 2)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB14', N'MA10', 2)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaMA], [SLBan]) VALUES (N'HDB15', N'MA02', 3)
GO
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN01', N'NL01', N'MA14', 5)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN01', N'NL02', N'MA13', 10)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN01', N'NL12', N'MA15', 23)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN02', N'NL03', N'MA11', 9)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN03', N'NL09', N'MA03', 4)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN04', N'NL04', N'MA08', 9)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN05', N'NL06', N'MA04', 8)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN05', N'NL07', N'MA06', 20)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN05', N'NL13', N'MA10', 12)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN06', N'NL05', N'MA09', 2)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN07', N'NL08', N'MA07', 21)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN07', N'NL10', N'MA03', 1)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN07', N'NL16', N'MA06', 18)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN08', N'NL03', N'MA11', 20)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN08', N'NL10', N'MA03', 17)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN09', N'NL09', N'MA02', 6)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN09', N'NL11', N'MA01', 55)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN09', N'NL14', N'MA13', 5)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN09', N'NL17', N'MA05', 20)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN10', N'NL04', N'MA08', 20)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN10', N'NL06', N'MA04', 15)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN10', N'NL15', N'MA13', 9)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaNL], [MaMA], [SLNhap]) VALUES (N'HDN10', N'NL18', N'MA01', 30)
GO
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB01', CAST(N'2022-01-01' AS Date), N'KH02', N'NV01', 500000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB02', CAST(N'2022-05-17' AS Date), N'KH01', N'NV12', 450000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB03', CAST(N'2021-08-19' AS Date), N'KH18', N'NV10', 740000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB04', CAST(N'2022-03-02' AS Date), N'KH17', N'NV03', 960000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB05', CAST(N'2021-11-20' AS Date), N'KH07', N'NV11', 125000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB06', CAST(N'2022-07-27' AS Date), N'KH06', N'NV05', 140000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB07', CAST(N'2022-08-03' AS Date), N'KH03', N'NV09', 25000000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB08', CAST(N'2022-09-08' AS Date), N'KH04', N'NV04', 1800000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB09', CAST(N'2021-06-07' AS Date), N'KH09', N'NV10', 1080000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB10', CAST(N'2022-10-10' AS Date), N'KH05', N'NV01', 2400000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB11', CAST(N'2022-02-09' AS Date), N'KH10', N'NV02', 60000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB12', CAST(N'2022-11-10' AS Date), N'KH11', N'NV02', 600000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB13', CAST(N'2021-12-12' AS Date), N'KH15', N'NV07', 140000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB14', CAST(N'2022-03-07' AS Date), N'KH02', N'NV08', 240000.0000)
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan], [MaKH], [MaNV], [TongTien]) VALUES (N'HDB15', CAST(N'2021-04-08' AS Date), N'KH16', N'NV06', 30000.0000)
GO
INSERT [dbo].[HoaDonNhap] ([MaHDN], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN01', CAST(N'2022-11-14' AS Date), N'NCC01', N'NV01', 20144000.0000)
INSERT [dbo].[HoaDonNhap] ([MaHDN], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN02', CAST(N'2022-11-15' AS Date), N'NCC04', N'NV06', 900000.0000)
INSERT [dbo].[HoaDonNhap] ([MaHDN], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN03', CAST(N'2022-11-16' AS Date), N'NCC02', N'NV01', 96000.0000)
INSERT [dbo].[HoaDonNhap] ([MaHDN], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN04', CAST(N'2022-11-17' AS Date), N'NCC08', N'NV02', 630000.0000)
INSERT [dbo].[HoaDonNhap] ([MaHDN], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN05', CAST(N'2022-11-18' AS Date), N'NCC02', N'NV05', 5116000.0000)
INSERT [dbo].[HoaDonNhap] ([MaHDN], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN06', CAST(N'2022-11-19' AS Date), N'NCC07', N'NV09', 220000.0000)
INSERT [dbo].[HoaDonNhap] ([MaHDN], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN07', CAST(N'2022-11-20' AS Date), N'NCC03', N'NV02', 7370000.0000)
INSERT [dbo].[HoaDonNhap] ([MaHDN], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN08', CAST(N'2022-11-21' AS Date), N'NCC02', N'NV04', 7950000.0000)
INSERT [dbo].[HoaDonNhap] ([MaHDN], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN09', CAST(N'2022-11-22' AS Date), N'NCC05', N'NV07', 2689000.0000)
INSERT [dbo].[HoaDonNhap] ([MaHDN], [NgayNhap], [MaNCC], [MaNV], [TongTien]) VALUES (N'HDN10', CAST(N'2022-11-23' AS Date), N'NCC06', N'NV01', 3020000.0000)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH01', N'Tuấn Anh', N'24B LO DUC, PHAM DINH HO, HAI BA TRUNG, HA NOI', N'0339287322')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH02', N'Tiến Dũng', N'SO 47 LUONG VAN CAN, HOAN KIEM, HA NOI ', N'0858273944')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH03', N'Đức', N'10B TRANG THI, HOAN KIEM, HN', N'0712567245')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH04', N'Quân', N'57A NGUYEN KHAC HIEU,BA DINH,HANOI ', N'0333562578')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH05', N'Hương Giang', N'56 BACH THAI BUOI,VAN QUAN,HA DONG ', N'0712343477')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH06', N'Hồng Đào', N'158 THAI HA,DONG DA,HA NOI', N'0842375632')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH07', N'Lê Khải', N'77 TAY SON,DONG DA,HA NOI', N'0843566477')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH08', N'Toàn', N'392 CAU GIAY,Q.CAU GIAY,HA NOI', N'0332567460')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH09', N'Lê Hiếu', N'194 LE DUAN,HAI BA TRUNG,HA NOI', N'0855468909')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH10', N'Minh Hoàng', N'SO 5B NGHACH 34/68/7HOANG CAU, D.D, HA NOI', N'0853214523')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH11', N'Công Thành', N'SO 48 LE DAI HANH, HA BA TRUNG, HA NOI', N'0311476892')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH12', N'Thành Trung', N'84 MAI HAC DE,HAI BA TRUNG,HANOI', N'0711354667')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH13', N'Tiến ', N'392 CAU GIAY,Q.CAU GIAY,HA NOI', N'0332114528')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH14', N'Ngọc Thảo', N'42 LE THAI TO,HANG TRONG,HOAN KIEM,HNOI', N'0850465780')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH15', N'Hoàng Giang', N'920 DE LE DAI THANH,BA DINH,HA NOI', N'0320845675')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH16', N'Hoàng Mỹ', N'194 LE DUAN,HAI BA TRUNG,HA NOI', N'0331345709')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH17', N'Huyền Thi', N'402 LA THANH,P.O CHO DUA,DONG DA,HA NOI', N'0840834567')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDTKH]) VALUES (N'KH18', N'Tuấn Hưng', N'12,172 LAC LONG QUAN,P.BUOI,TAY HO,HNOI', N'0704065734')
GO
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA01', N'Lòng Xào Dưa', 30000.0000, N'TD09')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA02', N'Rau muống xào', 10000.0000, N'TD04')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA03', N'Rau muống xào thịt bò', 50000.0000, N'TD05')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA04', N'Trứng ốp', 10000.0000, N'TD09')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA05', N'Thịt kho tàu', 40000.0000, N'TD02')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA06', N'Thịt nướng', 60000.0000, N'TD03')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA07', N'Trâu gác bếp', 100000.0000, N'TD06')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA08', N'Cá rán', 25000.0000, N'TD01')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA09', N'Gà rang muối', 70000.0000, N'TD10')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA10', N'Xôi gà nướng', 120000.0000, N'TD11')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA11', N'Vịt Quay Vân Đình', 150000.0000, N'TD07')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA12', N'Cá Chép Om Dưa', 200000.0000, N'TD08')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA13', N'Ếch Xào xả ớt', 180000.0000, N'TD05')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA14', N'Vây Cá Mập', 5000000.0000, N'TD10')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [GiaMA], [MaTD]) VALUES (N'MA15', N'Cơm trắng', 35000.0000, N'TD05')
GO
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL01', N'MA14', N'Cá mập', 3500000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL02', N'MA13', N'Ếch', 85000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL03', N'MA11', N'Vịt', 100000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL04', N'MA08', N'Cá chép', 70000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL05', N'MA09', N'Gà', 110000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL06', N'MA04', N'Trứng vịt', 40000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL07', N'MA05', N'Thịt lợn', 89000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL07', N'MA06', N'Thịt lợn', 89000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL08', N'MA07', N'Thịt trâu', 300000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL09', N'MA02', N'Rau muống', 12000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL09', N'MA03', N'Rau muống', 12000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL10', N'MA03', N'Thịt bò', 350000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL11', N'MA01', N'Lòng lợn', 22000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL12', N'MA15', N'Gạo tẻ', 78000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL13', N'MA10', N'Gạo nếp', 103000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL14', N'MA13', N'Xả', 47000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL15', N'MA13', N'Ớt', 30000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL16', N'MA06', N'Rau sống', 40000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL17', N'MA05', N'Trứng chim cút', 55000.0000)
INSERT [dbo].[NguyenLieu] ([MaNL], [MaMA], [TenNL], [GiaNL]) VALUES (N'NL18', N'MA01', N'Rau dưa', 25000.0000)
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC01', N'Zin Food', N'033564251', N'Ba Đình')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC02', N'Hanoifood', N'097234763', N'Cầu Giấy')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC03', N'Thực phẩm Hoàng Đông', N'032729834', N'Hoàng Mai')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC04', N'Phong Vũ', N'033728634', N'Cầu Giấy')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC05', N'Vifoodshop', N'085729843', N'Nam Từ Liêm')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC06', N'Ngọc Cường', N'084298992', N'Cầu Giấy')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC07', N'FamFood', N'070898292', N'Đông Anh')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC08', N'Sông Hồng', N'070192832', N'Bắc Từ Liêm')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC09', N'Sachfood', N'079981238', N'Đống Đa')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC10', N'Hoàng Hà', N'031878792', N'Bắc Từ Liêm')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC11', N'Thực phẩm Hà Nội', N'070878622', N'Thanh Xuân')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDTNCC], [DiaChi]) VALUES (N'NCC12', N'Exp Việt Nam', N'085722998', N'Thanh Xuân')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV01', N'Phạm Duy Hưng', CAST(N'2002-10-05' AS Date), N'Nam', N'Nam Định', N'0987567321', N'P01')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV02', N'Bùi Ngọc Tiến', CAST(N'2002-10-06' AS Date), N'Nam', N'Thanh Hóa', N'0987567322', N'P05')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV03', N'Nguyễn Đức Quân', CAST(N'2002-10-07' AS Date), N'Nam', N'Bắc Giang', N'0987567323', N'P07')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV04', N'Hà Tuấn Thành', CAST(N'2002-10-08' AS Date), N'Nam', N'Quảng Ninh', N'0987567324', N'P08')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV05', N'Tôn Trung Nghĩa', CAST(N'2002-10-09' AS Date), N'Nam', N'Hà Nội', N'0987567325', N'P04')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV06', N'Ngô Bá Khá', CAST(N'2002-10-10' AS Date), N'Nam', N'Phú Thọ ', N'0987567326', N'P02')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV07', N'Lê Công Tiến', CAST(N'2002-10-11' AS Date), N'Nam', N'Nghệ An', N'0987567327', N'P06')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV08', N'Đỗ Thị Ngọc', CAST(N'2002-10-12' AS Date), N'Nữ', N'Thái Bình', N'0987567328', N'P03')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV09', N'Nguyễn Phương Hoa', CAST(N'2002-10-13' AS Date), N'Nữ', N'Lào Cai', N'0987567329', N'P10')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV10', N'Nguyễn Thị Thanh', CAST(N'2002-10-14' AS Date), N'Nữ', N'Sơn La', N'0987567330', N'P09')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV11', N'Nguyễn Thùy Dương', CAST(N'2002-10-15' AS Date), N'Nữ', N'Điện Biên', N'0987567331', N'P01')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [SDTNV], [MaPhong]) VALUES (N'NV12', N'Nguyễn Văn Nam', CAST(N'2002-10-16' AS Date), N'Nam', N'Hà Tĩnh', N'0987567332', N'P03')
GO
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [SoChoNgoi]) VALUES (N'P01', 780000.0000, 36)
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [SoChoNgoi]) VALUES (N'P02', 780000.0000, 36)
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [SoChoNgoi]) VALUES (N'P03', 1000000.0000, 42)
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [SoChoNgoi]) VALUES (N'P04', 800000.0000, 36)
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [SoChoNgoi]) VALUES (N'P05', 800000.0000, 36)
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [SoChoNgoi]) VALUES (N'P06', 1200000.0000, 42)
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [SoChoNgoi]) VALUES (N'P07', 850000.0000, 36)
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [SoChoNgoi]) VALUES (N'P08', 850000.0000, 36)
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [SoChoNgoi]) VALUES (N'P09', 1300000.0000, 42)
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [SoChoNgoi]) VALUES (N'P10', 1300000.0000, 42)
GO
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD01', CAST(N'2022-12-10' AS Date))
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD02', CAST(N'2022-12-11' AS Date))
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD03', CAST(N'2022-12-12' AS Date))
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD04', CAST(N'2022-12-13' AS Date))
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD05', CAST(N'2022-12-14' AS Date))
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD06', CAST(N'2022-12-15' AS Date))
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD07', CAST(N'2022-12-16' AS Date))
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD08', CAST(N'2022-12-17' AS Date))
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD09', CAST(N'2022-12-18' AS Date))
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD10', CAST(N'2022-12-19' AS Date))
INSERT [dbo].[ThucDon] ([MaTD], [NgayTD]) VALUES (N'TD11', CAST(N'2022-12-20' AS Date))
GO
ALTER TABLE [dbo].[ChiTietHDB] ADD  DEFAULT ((0)) FOR [SLBan]
GO
ALTER TABLE [dbo].[ChiTietHDN] ADD  DEFAULT ((0)) FOR [SLNhap]
GO
ALTER TABLE [dbo].[HoaDonBan] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[HoaDonNhap] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[MonAn] ADD  DEFAULT ((0)) FOR [GiaMA]
GO
ALTER TABLE [dbo].[NguyenLieu] ADD  DEFAULT ((0)) FOR [GiaNL]
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [fk_cthdb_hdb] FOREIGN KEY([MaHDB])
REFERENCES [dbo].[HoaDonBan] ([MaHDB])
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [fk_cthdb_hdb]
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [fk_cthdb_ma] FOREIGN KEY([MaMA])
REFERENCES [dbo].[MonAn] ([MaMA])
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [fk_cthdb_ma]
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [fk_cthdn_hdn] FOREIGN KEY([MaHDN])
REFERENCES [dbo].[HoaDonNhap] ([MaHDN])
GO
ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [fk_cthdn_hdn]
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [fk_cthdn_nl] FOREIGN KEY([MaNL], [MaMA])
REFERENCES [dbo].[NguyenLieu] ([MaNL], [MaMA])
GO
ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [fk_cthdn_nl]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [fk_hdb_kh] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [fk_hdb_kh]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [fk_hdb_nv] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [fk_hdb_nv]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [fk_hdn_ncc] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [fk_hdn_ncc]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [fk_hdn_nv] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [fk_hdn_nv]
GO
ALTER TABLE [dbo].[MonAn]  WITH CHECK ADD  CONSTRAINT [fk_ma_td] FOREIGN KEY([MaTD])
REFERENCES [dbo].[ThucDon] ([MaTD])
GO
ALTER TABLE [dbo].[MonAn] CHECK CONSTRAINT [fk_ma_td]
GO
ALTER TABLE [dbo].[NguyenLieu]  WITH CHECK ADD  CONSTRAINT [fk_nl_ma] FOREIGN KEY([MaMA])
REFERENCES [dbo].[MonAn] ([MaMA])
GO
ALTER TABLE [dbo].[NguyenLieu] CHECK CONSTRAINT [fk_nl_ma]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_nv_p] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_nv_p]
GO
USE [master]
GO
ALTER DATABASE [QuanLiNhaHang] SET  READ_WRITE 
GO
