-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2017 at 01:20 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khachsan`
--

-- --------------------------------------------------------

--
-- Table structure for table `chinhsachtraphong`
--

CREATE TABLE `chinhsachtraphong` (
  `MaChinhSach` varchar(8) NOT NULL,
  `ThoiGianQuyDinh` varchar(16) NOT NULL,
  `PhuThu` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chinhsachtraphong`
--

INSERT INTO `chinhsachtraphong` (`MaChinhSach`, `ThoiGianQuyDinh`, `PhuThu`) VALUES
('Muc1', '12h-13h', 0),
('Muc2', '13h-15h', 0.2),
('Muc3', '15h-17h', 0.4),
('Muc4', '17h-19h', 0.5),
('Muc5', 'sau 19h', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHoaDon` varchar(8) NOT NULL,
  `MaPhong` varchar(8) NOT NULL,
  `MaSuDungDichVu` varchar(8) NOT NULL,
  `MaChinhSach` varchar(8) NOT NULL,
  `PhuThu` float NOT NULL,
  `TienPhong` float NOT NULL,
  `TienDichVu` float NOT NULL,
  `GiamGiaKhachHang` float NOT NULL,
  `HinhThucThanhToan` varchar(64) NOT NULL,
  `SoNgay` int(8) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHoaDon`, `MaPhong`, `MaSuDungDichVu`, `MaChinhSach`, `PhuThu`, `TienPhong`, `TienDichVu`, `GiamGiaKhachHang`, `HinhThucThanhToan`, `SoNgay`, `ThanhTien`) VALUES
('1', '201', 'SD01', 'Muc2', 0.2, 400000, 200000, 0.1, 'Tiền mặt', 1, 540000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhanphong`
--

CREATE TABLE `chitietphieunhanphong` (
  `MaNhanPhong` int(8) NOT NULL,
  `MaPhong` varchar(8) NOT NULL,
  `TenKhachHang` varchar(64) NOT NULL,
  `CMND` int(16) NOT NULL,
  `NgayNhan` date NOT NULL,
  `NgayTraDuKien` date NOT NULL,
  `NgayTraThucTe` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietphieunhanphong`
--

INSERT INTO `chitietphieunhanphong` (`MaNhanPhong`, `MaPhong`, `TenKhachHang`, `CMND`, `NgayNhan`, `NgayTraDuKien`, `NgayTraThucTe`) VALUES
(2, '201', 'Phí Hồng Mạnh', 123456789, '2017-10-11', '2017-10-12', '2017-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieuthuephong`
--

CREATE TABLE `chitietphieuthuephong` (
  `MaPhieuThue` int(8) NOT NULL,
  `MaPhong` varchar(8) NOT NULL,
  `NgayDangKi` date NOT NULL,
  `NgayNhan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietphieuthuephong`
--

INSERT INTO `chitietphieuthuephong` (`MaPhieuThue`, `MaPhong`, `NgayDangKi`, `NgayNhan`) VALUES
(1, '201', '2017-10-10', '2017-10-11'),
(2, '202', '2017-10-12', '2017-10-13'),
(3, '203', '2017-10-17', '2017-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `danhsachsudungdichvu`
--

CREATE TABLE `danhsachsudungdichvu` (
  `MaSuDungDichVu` varchar(8) NOT NULL,
  `MaDichVu` varchar(8) NOT NULL,
  `MaNhanPhong` int(8) NOT NULL,
  `SoLuong` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhsachsudungdichvu`
--

INSERT INTO `danhsachsudungdichvu` (`MaSuDungDichVu`, `MaDichVu`, `MaNhanPhong`, `SoLuong`) VALUES
('SD01', 'DV01', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `MaDichVu` varchar(8) NOT NULL,
  `MaLoaiDichVu` varchar(8) NOT NULL,
  `MaDonVi` varchar(8) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`MaDichVu`, `MaLoaiDichVu`, `MaDonVi`, `DonGia`) VALUES
('DV01', 'BH', 'Lon', 12000),
('DV02', 'M', 'vé', 80000),
('DV03', 'BH', 'Lon', 8000),
('DV04', 'NB', 'Lon', 12000),
('DV05', 'NL', 'Chai', 8000),
('DV06', 'GASM', 'Cái', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `donvi`
--

CREATE TABLE `donvi` (
  `MaDonVi` varchar(8) NOT NULL,
  `TenDonVi` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donvi`
--

INSERT INTO `donvi` (`MaDonVi`, `TenDonVi`) VALUES
('B', 'Bộ'),
('C', 'Cái'),
('CH', 'Chai'),
('H', 'Giờ'),
('L', 'Lon'),
('V', 'Vé');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` varchar(8) NOT NULL,
  `NhanVienLap` varchar(64) NOT NULL,
  `MaKhachHang` varchar(8) NOT NULL,
  `MaNhanPhong` varchar(8) NOT NULL,
  `TongTien` float NOT NULL,
  `NgayLap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `NhanVienLap`, `MaKhachHang`, `MaNhanPhong`, `TongTien`, `NgayLap`) VALUES
('1', 'Phí Hồng Mạnh', '1', '2', 1000000, '2017-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(8) NOT NULL,
  `TenKhachHang` varchar(64) NOT NULL,
  `CMND` int(16) NOT NULL,
  `GioiTinh` int(8) NOT NULL,
  `DiaChi` text NOT NULL,
  `DienThoai` int(16) NOT NULL,
  `QuocTich` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `TenKhachHang`, `CMND`, `GioiTinh`, `DiaChi`, `DienThoai`, `QuocTich`) VALUES
(1, 'Phí Hồng Mạnh', 123456789, 1, 'Tiền Hải, Thải Bình', 1234567890, 'Việt Nam'),
(2, 'acb', 123456789, 0, 'ACB', 1234567890, 'Campuchia'),
(3, 'Khách hàng 3', 1111, 0, 'DIA CHI', 3333, 'QUOC TICH');

-- --------------------------------------------------------

--
-- Table structure for table `loaidichvu`
--

CREATE TABLE `loaidichvu` (
  `MaLoaiDichVu` varchar(8) NOT NULL,
  `TenLoaiDichVu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaidichvu`
--

INSERT INTO `loaidichvu` (`MaLoaiDichVu`, `TenLoaiDichVu`) VALUES
('BH', 'Bò húc'),
('GADAI', 'Giặt áo dài'),
('GADAM', 'Giặt áo đầm'),
('GASM', 'Giặt áo sơ my'),
('GAT', 'Giặt áo thun'),
('GQAN', 'Giặt quần áo ngủ'),
('GQJ', 'Giặt quần jean'),
('GQS', 'Giặt quần sọt'),
('GQT', 'Giặt quần tây'),
('GVD', 'Giặt váy dài'),
('GVN', 'Giặt váy ngắn'),
('K', 'Karaoke'),
('M', 'Massage'),
('NB', 'Nước Bí'),
('NL', 'Nước Lavie'),
('TG', 'Tiger Beer'),
('UADAI', 'Ủi áo dài'),
('UADAM', 'Ủi áo đầm'),
('UASM', 'Ủi áo sơ my'),
('UAT', 'Ủi áo thun'),
('UQAN', 'Ủi quần áo ngủ'),
('UQJ', 'Ủi quần jean'),
('UQS', 'ủi quần sọt'),
('UQT', 'ủi quần tây'),
('UVD', 'ủi váy dài'),
('UVN', 'Ủi váy ngắn');

-- --------------------------------------------------------

--
-- Table structure for table `loainguoidung`
--

CREATE TABLE `loainguoidung` (
  `LoaiNguoiDung` int(8) NOT NULL,
  `TenLoaiNguoiDung` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loainguoidung`
--

INSERT INTO `loainguoidung` (`LoaiNguoiDung`, `TenLoaiNguoiDung`) VALUES
(1, 'ADMIN'),
(2, 'Nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table `loaiphong`
--

CREATE TABLE `loaiphong` (
  `MaLoaiPhong` varchar(8) NOT NULL,
  `TenLoaiPhong` varchar(16) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuongNguoiChuan` int(8) NOT NULL,
  `SoLuongNguoiToiDa` int(8) NOT NULL,
  `TyLeTang` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaiphong`
--

INSERT INTO `loaiphong` (`MaLoaiPhong`, `TenLoaiPhong`, `DonGia`, `SoLuongNguoiChuan`, `SoLuongNguoiToiDa`, `TyLeTang`) VALUES
('DB', 'Đặc biệt', 720000, 2, 4, 0),
('L1', 'Loại 1', 320000, 2, 4, 0),
('L2', 'Loại 2', 270000, 2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaitinhtrangphong`
--

CREATE TABLE `loaitinhtrangphong` (
  `MaLoaiTinhTrangPhong` int(8) NOT NULL,
  `TenLoaiTinhTrangPhong` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaitinhtrangphong`
--

INSERT INTO `loaitinhtrangphong` (`MaLoaiTinhTrangPhong`, `TenLoaiTinhTrangPhong`) VALUES
(1, 'Trống'),
(2, 'Đặt trước'),
(3, 'Có người ở');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `IDNguoiDung` int(8) NOT NULL,
  `TenDangNhap` varchar(64) NOT NULL,
  `MatKhau` varchar(64) NOT NULL,
  `LoaiNguoiDung` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`IDNguoiDung`, `TenDangNhap`, `MatKhau`, `LoaiNguoiDung`) VALUES
(1, 'phihongmanh', 'manh1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhanphong`
--

CREATE TABLE `phieunhanphong` (
  `MaNhanPhong` int(8) NOT NULL,
  `MaPhieuThue` int(8) NOT NULL,
  `MaKhachHang` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phieunhanphong`
--

INSERT INTO `phieunhanphong` (`MaNhanPhong`, `MaPhieuThue`, `MaKhachHang`) VALUES
(1, 2, 3),
(2, 1, 1),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `phieuthuephong`
--

CREATE TABLE `phieuthuephong` (
  `MaPhieuThue` int(8) NOT NULL,
  `MaKhachHang` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phieuthuephong`
--

INSERT INTO `phieuthuephong` (`MaPhieuThue`, `MaKhachHang`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `MaPhong` varchar(8) NOT NULL,
  `MaLoaiPhong` varchar(8) NOT NULL,
  `MaLoaiTinhTrangPhong` int(8) NOT NULL,
  `GhiChu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`MaPhong`, `MaLoaiPhong`, `MaLoaiTinhTrangPhong`, `GhiChu`) VALUES
('201', 'DB', 3, 'Đã có người ở đây rồi'),
('202', 'L1', 2, 'Phòng loại 2\r\nĐặt trước'),
('203', 'L2', 1, 'Phòng loại 2\r\nTrống');

-- --------------------------------------------------------

--
-- Table structure for table `quydinh`
--

CREATE TABLE `quydinh` (
  `TenQuyDinh` varchar(64) NOT NULL,
  `MoTa` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quydinh`
--

INSERT INTO `quydinh` (`TenQuyDinh`, `MoTa`) VALUES
('Chính sách trả phòng', '1. Thời gian trả mỗi ngày là 12h\r\n2. Trả phòng sau 12h đến 13h không phụ thu tiền phòng\r\n3. Trả phòng sau 13h đến 15h phụ thu 20% tiền phòng\r\n4. Trả phòng sau 15h đến 17h phụ thu 40% tiền phòng\r\n5. Trả phòng sau 17h đến 19h phụ thu 50% tiền phòng\r\n6. Trả phòng sau 19h tính nguyên giá đêm'),
('Nội quy khách sạn', '1. Khách đến thuê phòng phải xuất trình hộ chiếu có thị thực nhập cảnh hợp lệ cho tiếp tân ( hoặc chứng minh thư nhân dân đối với khách trong nước )\r\n2. Không mang vũ khí, chất độc, chất cháy nổ và gia súc vào khách sạn\r\n3. Khách sạn chỉ chịu trách nhiệm về những tư trang, tiền bạc mà khách ký gởi tại khách sạn và có biên nhận\r\n4. Không tự ý thay đổi phòng và thêm người\r\n5. Không đưa gái mại dâm vào khách sạn');

-- --------------------------------------------------------

--
-- Table structure for table `thietbi`
--

CREATE TABLE `thietbi` (
  `MaThietBi` varchar(16) NOT NULL,
  `TenThietBi` varchar(64) NOT NULL,
  `MaLoaiPhong` varchar(8) NOT NULL,
  `SoLuong` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thietbi`
--

INSERT INTO `thietbi` (`MaThietBi`, `TenThietBi`, `MaLoaiPhong`, `SoLuong`) VALUES
('BDKML', 'Bộ điều khiển máy lạnh', 'DB', 1),
('BDKTV', 'Bộ điều khiển Ti Vi', 'DB', 1),
('BDKTVL1', 'Bộ điều khiển Ti Vi loại 1', 'l1', 2),
('BDKTVL2', 'Bộ điều khiển Ti Vi loại 2', 'L2', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chinhsachtraphong`
--
ALTER TABLE `chinhsachtraphong`
  ADD PRIMARY KEY (`MaChinhSach`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHoaDon`,`MaPhong`,`MaSuDungDichVu`,`MaChinhSach`);

--
-- Indexes for table `chitietphieunhanphong`
--
ALTER TABLE `chitietphieunhanphong`
  ADD PRIMARY KEY (`MaNhanPhong`,`MaPhong`);

--
-- Indexes for table `chitietphieuthuephong`
--
ALTER TABLE `chitietphieuthuephong`
  ADD PRIMARY KEY (`MaPhieuThue`,`MaPhong`);

--
-- Indexes for table `danhsachsudungdichvu`
--
ALTER TABLE `danhsachsudungdichvu`
  ADD PRIMARY KEY (`MaSuDungDichVu`);

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`MaDichVu`);

--
-- Indexes for table `donvi`
--
ALTER TABLE `donvi`
  ADD PRIMARY KEY (`MaDonVi`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Indexes for table `loaidichvu`
--
ALTER TABLE `loaidichvu`
  ADD PRIMARY KEY (`MaLoaiDichVu`);

--
-- Indexes for table `loaiphong`
--
ALTER TABLE `loaiphong`
  ADD PRIMARY KEY (`MaLoaiPhong`);

--
-- Indexes for table `loaitinhtrangphong`
--
ALTER TABLE `loaitinhtrangphong`
  ADD PRIMARY KEY (`MaLoaiTinhTrangPhong`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`IDNguoiDung`);

--
-- Indexes for table `phieunhanphong`
--
ALTER TABLE `phieunhanphong`
  ADD PRIMARY KEY (`MaNhanPhong`);

--
-- Indexes for table `phieuthuephong`
--
ALTER TABLE `phieuthuephong`
  ADD PRIMARY KEY (`MaPhieuThue`,`MaKhachHang`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaPhong`);

--
-- Indexes for table `quydinh`
--
ALTER TABLE `quydinh`
  ADD PRIMARY KEY (`TenQuyDinh`);

--
-- Indexes for table `thietbi`
--
ALTER TABLE `thietbi`
  ADD PRIMARY KEY (`MaThietBi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `IDNguoiDung` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
