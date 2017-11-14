-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2017 at 08:41 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khachsan_dev1`
--

-- --------------------------------------------------------

--
-- Table structure for table `chinh_sach_tra_phongs`
--

CREATE TABLE `chinh_sach_tra_phongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ThoiGianQuyDinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PhuThu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chinh_sach_tra_phongs`
--

INSERT INTO `chinh_sach_tra_phongs` (`id`, `ThoiGianQuyDinh`, `PhuThu`, `created_at`, `updated_at`) VALUES
(1, '12h-13h', '0', NULL, NULL),
(2, '13h-15h', '20', NULL, '2017-11-13 08:57:17'),
(3, '15h-17h', '40', NULL, '2017-11-13 08:57:23'),
(5, '17h-19h', '50', NULL, '2017-11-13 08:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_dons`
--

CREATE TABLE `chi_tiet_hoa_dons` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaSuDungDichVu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaChinhSach` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PhuThu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TienPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TienDichVu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GiamGiaKhachHang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HinhThucThanhToan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoNgay` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ThanhTien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_hoa_dons`
--

INSERT INTO `chi_tiet_hoa_dons` (`id`, `MaPhong`, `MaSuDungDichVu`, `MaChinhSach`, `PhuThu`, `TienPhong`, `TienDichVu`, `GiamGiaKhachHang`, `HinhThucThanhToan`, `SoNgay`, `ThanhTien`, `created_at`, `updated_at`) VALUES
(1, '6', '3', '3', '20 %', '400000', '200000', '10 %', 'Tiền mặt', '1', '540000', NULL, '2017-11-14 00:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_phieu_nhan_phongs`
--

CREATE TABLE `chi_tiet_phieu_nhan_phongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HoTenKhachHang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CMND` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayNhan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayTraDuKien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayTraThucTe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_phieu_nhan_phongs`
--

INSERT INTO `chi_tiet_phieu_nhan_phongs` (`id`, `MaPhong`, `HoTenKhachHang`, `CMND`, `NgayNhan`, `NgayTraDuKien`, `NgayTraThucTe`, `created_at`, `updated_at`) VALUES
(2, '201', 'Phí Hồng Mạnh', '123456789', '2017-10-11', '2017-10-12', '2017-10-12', NULL, NULL),
(3, '7', 'Mạnh', '12345678', '2017-11-16', '2017-11-24', '2017-11-24', '2017-11-13 22:46:39', '2017-11-13 22:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_phieu_thue_phongs`
--

CREATE TABLE `chi_tiet_phieu_thue_phongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaKhachHang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayDangKi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayNhan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_phieu_thue_phongs`
--

INSERT INTO `chi_tiet_phieu_thue_phongs` (`id`, `MaKhachHang`, `MaPhong`, `NgayDangKi`, `NgayNhan`, `created_at`, `updated_at`) VALUES
(4, '2', '6', '2017-11-16', '2017-11-17', '2017-11-13 23:22:15', '2017-11-13 23:23:24'),
(5, '4', '6', '2017-11-17', '2017-11-17', '2017-11-13 23:33:08', '2017-11-13 23:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `danh_sach_su_dung_dich_vus`
--

CREATE TABLE `danh_sach_su_dung_dich_vus` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaDichVu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaNhanPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danh_sach_su_dung_dich_vus`
--

INSERT INTO `danh_sach_su_dung_dich_vus` (`id`, `MaDichVu`, `MaNhanPhong`, `SoLuong`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '2', NULL, NULL),
(3, '6', '3', '333', '2017-11-13 22:04:39', '2017-11-13 22:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `dich_vus`
--

CREATE TABLE `dich_vus` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaLoaiDichVu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaDonVi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DonGia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dich_vus`
--

INSERT INTO `dich_vus` (`id`, `MaLoaiDichVu`, `MaDonVi`, `DonGia`, `created_at`, `updated_at`) VALUES
(7, '1', '5', '12000', '2017-11-13 20:34:32', '2017-11-13 20:34:32'),
(8, '6', '2', '210000', '2017-11-13 20:40:16', '2017-11-13 20:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `don_vis`
--

CREATE TABLE `don_vis` (
  `id` int(10) UNSIGNED NOT NULL,
  `TenDonVi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `don_vis`
--

INSERT INTO `don_vis` (`id`, `TenDonVi`, `created_at`, `updated_at`) VALUES
(1, 'Bộ', NULL, NULL),
(2, 'Cái', NULL, NULL),
(3, 'Chai', NULL, NULL),
(4, 'Giờ', NULL, NULL),
(5, 'Lon', NULL, NULL),
(6, 'Vé', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_dons`
--

CREATE TABLE `hoa_dons` (
  `id` int(10) UNSIGNED NOT NULL,
  `NhanVienLap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaKhachHang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaNhanPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TongTien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayLap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hoa_dons`
--

INSERT INTO `hoa_dons` (`id`, `NhanVienLap`, `MaKhachHang`, `MaNhanPhong`, `TongTien`, `NgayLap`, `created_at`, `updated_at`) VALUES
(1, 'Phí Hồng Mạnh', '1', '2', '1000000', '2017-10-17', NULL, NULL),
(2, 'Mạnh', '2', '3', '100000000', '2017-11-14', '2017-11-13 23:55:57', '2017-11-13 23:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `khach_hangs`
--

CREATE TABLE `khach_hangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `TenKhachHang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CMND` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DienThoai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QuocTich` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khach_hangs`
--

INSERT INTO `khach_hangs` (`id`, `TenKhachHang`, `CMND`, `GioiTinh`, `DiaChi`, `DienThoai`, `QuocTich`, `created_at`, `updated_at`) VALUES
(1, 'Phí Hồng Mạnh', '123456789', '1', 'Tiền Hải, Thái Bình', '1234567890', 'Việt Nam', NULL, NULL),
(2, 'abc', '123456789', '0', 'ABC', '1234567890', 'Lào', NULL, NULL),
(3, 'TenKhachHang', 'CMND', 'GioiTinh', 'DiaChi', 'DienThoai', 'QuocTich', '2017-11-13 19:34:44', '2017-11-13 19:34:44'),
(4, 'Mạnh_2', '123456789', 'khác', 'thái bình', '1234', 'abc', '2017-11-13 23:32:40', '2017-11-13 23:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `loai_dich_vus`
--

CREATE TABLE `loai_dich_vus` (
  `id` int(10) UNSIGNED NOT NULL,
  `TenLoaiDichVu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_dich_vus`
--

INSERT INTO `loai_dich_vus` (`id`, `TenLoaiDichVu`, `created_at`, `updated_at`) VALUES
(1, 'Bò húc', NULL, NULL),
(6, 'Giặt áo sơ mi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loai_phongs`
--

CREATE TABLE `loai_phongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `TenLoaiPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DonGia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoNguoiChuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoNguoiToiDa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TyLeTang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_phongs`
--

INSERT INTO `loai_phongs` (`id`, `TenLoaiPhong`, `DonGia`, `SoNguoiChuan`, `SoNguoiToiDa`, `TyLeTang`, `created_at`, `updated_at`) VALUES
(1, 'Đặc biệt ', '720000', '2', '4', '0', NULL, NULL),
(2, 'Loại 1', '320000', '2', '4', '0', NULL, NULL),
(3, 'Loại 2', '270000', '2', '4', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loai_tinh_trangs`
--

CREATE TABLE `loai_tinh_trangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `TenLoaiTinhTrang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_tinh_trangs`
--

INSERT INTO `loai_tinh_trangs` (`id`, `TenLoaiTinhTrang`, `created_at`, `updated_at`) VALUES
(1, 'Trống', NULL, NULL),
(2, 'Đặt trước', NULL, NULL),
(3, 'Có người ở', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2017_10_23_135723_add_role_column_to_users_table', 1),
(25, '2017_11_04_044858_create_tham_sos_table', 1),
(26, '2017_11_04_044910_create_quy_dinhs_table', 1),
(27, '2017_11_04_044924_create_chi_tiet_phieu_nhan_phongs_table', 1),
(28, '2017_11_04_044938_create_phieu_nhan_phongs_table', 1),
(29, '2017_11_04_045013_create_loai_tinh_trangs_table', 1),
(30, '2017_11_04_045022_create_phieu_thue_phongs_table', 1),
(31, '2017_11_04_045040_create_khach_hangs_table', 1),
(32, '2017_11_04_045045_create_hoa_dons_table', 1),
(33, '2017_11_04_045108_create_thiet_bis_table', 1),
(34, '2017_11_04_045113_create_loai_phongs_table', 1),
(35, '2017_11_04_045120_create_phongs_table', 1),
(36, '2017_11_04_045132_create_chi_tiet_phieu_thue_phongs_table', 1),
(37, '2017_11_04_045205_create_chinh_sach_tra_phongs_table', 1),
(38, '2017_11_04_045216_create_chi_tiet_hoa_dons_table', 1),
(39, '2017_11_04_045229_create_danh_sach_su_dung_dich_vus_table', 1),
(40, '2017_11_04_045239_create_dich_vus_table', 1),
(41, '2017_11_04_045244_create_don_vis_table', 1),
(42, '2017_11_04_045252_create_loai_dich_vus_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieu_nhan_phongs`
--

CREATE TABLE `phieu_nhan_phongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaPhieuThue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaKhachHang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phieu_nhan_phongs`
--

INSERT INTO `phieu_nhan_phongs` (`id`, `MaPhieuThue`, `MaKhachHang`, `created_at`, `updated_at`) VALUES
(3, '3', '3', NULL, NULL),
(4, '2', '1', '2017-11-13 23:14:08', '2017-11-13 23:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `phieu_thue_phongs`
--

CREATE TABLE `phieu_thue_phongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaKhachHang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phieu_thue_phongs`
--

INSERT INTO `phieu_thue_phongs` (`id`, `MaKhachHang`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, NULL),
(2, '2', NULL, NULL),
(3, '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phongs`
--

CREATE TABLE `phongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `TenPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaLoaiPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaLoaiTinhTrangPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GhiChu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phongs`
--

INSERT INTO `phongs` (`id`, `TenPhong`, `MaLoaiPhong`, `MaLoaiTinhTrangPhong`, `GhiChu`, `created_at`, `updated_at`) VALUES
(1, '201', '1', '3', 'Đã có người ở', NULL, NULL),
(6, '202', '3', '3', 'abc', '2017-11-13 21:16:22', '2017-11-13 21:16:22'),
(7, '203', '1', '1', 'Mạnh đặt', '2017-11-13 22:45:52', '2017-11-13 22:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `quy_dinhs`
--

CREATE TABLE `quy_dinhs` (
  `id` int(10) NOT NULL,
  `TenQuyDinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quy_dinhs`
--

INSERT INTO `quy_dinhs` (`id`, `TenQuyDinh`, `MoTa`, `created_at`, `updated_at`) VALUES
(1, 'Chính sách trả phòng', 'thời gian trả mỗi ngày là 12h', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tham_sos`
--

CREATE TABLE `tham_sos` (
  `PhieuDangKi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PhieuNhan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HoaDon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STT` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thiet_bis`
--

CREATE TABLE `thiet_bis` (
  `id` int(10) UNSIGNED NOT NULL,
  `TenThietBi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaLoaiPhong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thiet_bis`
--

INSERT INTO `thiet_bis` (`id`, `TenThietBi`, `MaLoaiPhong`, `SoLuong`, `created_at`, `updated_at`) VALUES
(1, 'Bộ điều khiển máy lạnh', '1', '1', NULL, NULL),
(2, 'Bộ điều khiển tivi', '1', '1', NULL, NULL),
(3, 'Bộ điều khiển tivi loại 1', '2', '2', NULL, NULL),
(4, 'Bộ điều khiển tivi loại 2', '3', '2', NULL, NULL),
(5, '1', '1', '1', '2017-11-13 09:24:39', '2017-11-13 09:24:39'),
(6, 'Tên thiết bị', 'Mã loại phòng', 'Số lượng', '2017-11-13 19:37:53', '2017-11-13 19:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mạnh', 'phimanh@gmail.com', 'manh1234', '1', 'hoạt động', NULL, NULL, NULL),
(2, 'PhiHongManh', 'phimanh2905@gmail.com', 'abc', '', '', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chinh_sach_tra_phongs`
--
ALTER TABLE `chinh_sach_tra_phongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chi_tiet_hoa_dons`
--
ALTER TABLE `chi_tiet_hoa_dons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chi_tiet_phieu_nhan_phongs`
--
ALTER TABLE `chi_tiet_phieu_nhan_phongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chi_tiet_phieu_thue_phongs`
--
ALTER TABLE `chi_tiet_phieu_thue_phongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danh_sach_su_dung_dich_vus`
--
ALTER TABLE `danh_sach_su_dung_dich_vus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dich_vus`
--
ALTER TABLE `dich_vus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_vis`
--
ALTER TABLE `don_vis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_dons`
--
ALTER TABLE `hoa_dons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khach_hangs`
--
ALTER TABLE `khach_hangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_dich_vus`
--
ALTER TABLE `loai_dich_vus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_phongs`
--
ALTER TABLE `loai_phongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_tinh_trangs`
--
ALTER TABLE `loai_tinh_trangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phieu_nhan_phongs`
--
ALTER TABLE `phieu_nhan_phongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phieu_thue_phongs`
--
ALTER TABLE `phieu_thue_phongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phongs`
--
ALTER TABLE `phongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quy_dinhs`
--
ALTER TABLE `quy_dinhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thiet_bis`
--
ALTER TABLE `thiet_bis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chinh_sach_tra_phongs`
--
ALTER TABLE `chinh_sach_tra_phongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `chi_tiet_hoa_dons`
--
ALTER TABLE `chi_tiet_hoa_dons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `chi_tiet_phieu_nhan_phongs`
--
ALTER TABLE `chi_tiet_phieu_nhan_phongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `chi_tiet_phieu_thue_phongs`
--
ALTER TABLE `chi_tiet_phieu_thue_phongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `danh_sach_su_dung_dich_vus`
--
ALTER TABLE `danh_sach_su_dung_dich_vus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dich_vus`
--
ALTER TABLE `dich_vus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `don_vis`
--
ALTER TABLE `don_vis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hoa_dons`
--
ALTER TABLE `hoa_dons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `khach_hangs`
--
ALTER TABLE `khach_hangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `loai_dich_vus`
--
ALTER TABLE `loai_dich_vus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `loai_phongs`
--
ALTER TABLE `loai_phongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `loai_tinh_trangs`
--
ALTER TABLE `loai_tinh_trangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `phieu_nhan_phongs`
--
ALTER TABLE `phieu_nhan_phongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `phieu_thue_phongs`
--
ALTER TABLE `phieu_thue_phongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phongs`
--
ALTER TABLE `phongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `quy_dinhs`
--
ALTER TABLE `quy_dinhs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `thiet_bis`
--
ALTER TABLE `thiet_bis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;