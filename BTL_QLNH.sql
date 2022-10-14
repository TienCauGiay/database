--create database QuanLiNhaHang
--use QuanLiNhaHang
--go

CREATE TABLE KhachHang
(
  MaKH nvarchar(15) NOT NULL,
  TenKH nvarchar(50) NOT NULL,
  DiaChi nvarchar(100),
  SDTKH nvarchar(20),
  PRIMARY KEY (MaKH)
);

CREATE TABLE Phong
(
  MaPhong nvarchar(15) NOT NULL,
  GiaPhong money NOT NULL,
  SoChoNgoi INT NOT NULL,
  PRIMARY KEY (MaPhong)
);

CREATE TABLE NhaCungCap
(
  MaNCC nvarchar(15) NOT NULL,
  TenNCC nvarchar(100) NOT NULL,
  SDTNCC nvarchar(20) NOT NULL,
  DiaChi nvarchar(100),
  PRIMARY KEY (MaNCC)
);

CREATE TABLE NhanVien
(
  MaNV nvarchar(15) NOT NULL,
  HoTen nvarchar(50) NOT NULL,
  NgaySinh date,
  GioiTinh nvarchar(10),
  DiaChi nvarchar(100),
  SDTNV nvarchar(20) NOT NULL,
  MaPhong nvarchar(15) NOT NULL,
  PRIMARY KEY (MaNV),
  CONSTRAINT fk_nv_p FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong)
);

CREATE TABLE ThucDon
(
  MaTD nvarchar(15) NOT NULL,
  NgayTD date NOT NULL,
  PRIMARY KEY (MaTD),
);

CREATE TABLE MonAn
(
  MaMA nvarchar(15) NOT NULL,
  TenMA nvarchar(50) NOT NULL,
  GiaMA money default 0,
  MaTD nvarchar(15) not null,
  PRIMARY KEY (MaMA),
  CONSTRAINT fk_ma_td FOREIGN KEY (MaTD) REFERENCES ThucDon (MaTD)
);

CREATE TABLE NguyenLieu
(
  MaNL nvarchar(15) NOT NULL,
  MaMA nvarchar(15) not null,
  TenNL nvarchar(50) NOT NULL,
  GiaNL money default 0,
  PRIMARY KEY (MaNL, MaMA),
  CONSTRAINT fk_nl_ma FOREIGN KEY (MaMA) REFERENCES MonAn (MaMA)
);

CREATE TABLE HoaDonNhap
(
  MaHDN nvarchar(15) NOT NULL,
  NgayNhap date NOT NULL,
  MaNCC nvarchar(15) NOT NULL,
  MaNV nvarchar(15) NOT NULL,
  TongTien money default 0,
  PRIMARY KEY (MaHDN),
  CONSTRAINT fk_hdn_nv FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
  CONSTRAINT fk_hdn_ncc FOREIGN KEY (MaNCC) REFERENCES NhaCungCap(MaNCC)
);

CREATE TABLE HoaDonBan
(
  MaHDB nvarchar(15) NOT NULL,
  NgayBan date NOT NULL,
  MaKH nvarchar(15) NOT NULL,
  MaNV nvarchar(15) NOT NULL,
  TongTien money default 0,
  PRIMARY KEY (MaHDB),
  CONSTRAINT fk_hdb_nv FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
  CONSTRAINT fk_hdb_kh FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
);

CREATE TABLE ChiTietHDN
(
  MaHDN nvarchar(15) NOT NULL,
  MaNL nvarchar(15) NOT NULL,
  MaMA nvarchar(15) not null,
  SLNhap INT default 0,
  PRIMARY KEY (MaHDN,MaNL,MaMA),
  CONSTRAINT fk_cthdn_nl FOREIGN KEY (MaNL,MaMA) REFERENCES NguyenLieu(MaNL,MaMA),
  CONSTRAINT fk_cthdn_hdn FOREIGN KEY (MaHDN) REFERENCES HoaDonNhap(MaHDN)
);

CREATE TABLE ChiTietHDB
(
  MaHDB nvarchar(15) NOT NULL,
  MaMA nvarchar(15) NOT NULL,
  SLBan INT default 0,
  PRIMARY KEY (MaHDB,MaMA),
  CONSTRAINT fk_cthdb_ma FOREIGN KEY (MaMA) REFERENCES MonAn(MaMA),
  CONSTRAINT fk_cthdb_hdb FOREIGN KEY (MaHDB) REFERENCES HoaDonBan(MaHDB)
);


