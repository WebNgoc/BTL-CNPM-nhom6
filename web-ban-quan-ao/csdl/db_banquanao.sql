-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2021 lúc 11:22 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_web_ban_quan_ao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`) VALUES
(1, 'admin', 'hieuadmin'),
(2, 'ad', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `fullname` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `fullname`, `createdate`) VALUES
(20, 'admin', '2021-10-22 03:22:29'),
(21, 'admin', '2021-10-22 03:22:29'),
(22, 'VanA', '2021-10-22 03:22:29'),
(23, 'VanA', '2021-10-22 03:22:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL,
  `price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`, `price`) VALUES
(32, 20, 90, 1, '1000000'),
(33, 20, 92, 5, '1100000'),
(34, 22, 93, 7, '1500000'),
(35, 22, 92, 5, '1200000'),
(36, 21, 91, 1, '800000'),
(37, 23, 94, 1, '2000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangky`
--

CREATE TABLE `dangky` (
  `id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachinhan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dangky`
--

INSERT INTO `dangky` (`id_khachhang`, `tenkhachhang`, `email`, `matkhau`, `dienthoai`, `diachinhan`) VALUES
(59, 'Phan Văn Đức', 'phanduc123@gmail.com', '91166439287cd2186c04075c551c462e', 936459231, '560 Đ.Láng,Trung Hoà,Đống Đa,Hà Nội'),
(60, 'Trần Đức Nam', 'trannam123@gmail.com', '9323565ebf55c72a96660433b171dfc9', 366127405, '113 Cầu Giấy,Quan Hoa,Cầu Giấy,Hà Nội'),
(61, 'Nguyễn Văn Mạnh', 'nguyenvanmanh1@gmail.com', '7312d089d68f871c12aebcdb5e5c8b1a', 364590018, '73 Nguyễn Lương Bằng,Nam Đồng,Đống Đa,Hà Nội'),
(62, 'Bùi Thị Hoa', 'buithihoa123@gmail.com', '007e66b44194b51c58cf8b51b2bfc918', 936489363, '76 Nguyễn Trãi,Thượng Đình,Đống Đa,Hà Nội'),
(63, 'Phạm Văn Khôi', 'vankhoi112@gmail.com', 'e1e060f794df93be3fa9b73b86bd9958', 367852014, '81 Lê Văn Lương,Nhân Chính,Cầu Giấy,Hà Nội'),
(64, '', '', '', 0, ''),
(65, '', '', '', 0, ''),
(66, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinhanhsp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hieusp`
--

CREATE TABLE `hieusp` (
  `idhieusp` int(11) NOT NULL,
  `tenhieusp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hieusp`
--

INSERT INTO `hieusp` (`idhieusp`, `tenhieusp`, `tinhtrang`) VALUES
(15, 'Adidas', '1'),
(16, 'Nike', '1'),
(17, 'Gucci', '1'),
(18, 'Hermes', '1'),
(19, 'Chanel', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `idloaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`idloaisp`, `tenloaisp`, `tinhtrang`) VALUES
(26, 'Áo phông', '1'),
(27, 'Quần jean', '1'),
(28, 'Áo khoác', '1'),
(29, 'Áo len', '1'),
(30, 'Mũ len', '1'),
(31, 'Mũ lưỡi trai', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` int(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giadexuat` float NOT NULL,
  `giagiam` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `loaisp` int(11) NOT NULL,
  `nhasx` int(11) NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensp`, `masp`, `hinhanh`, `giadexuat`, `giagiam`, `soluong`, `loaisp`, `nhasx`, `tinhtrang`, `noidung`) VALUES
(90, 'Áo phông - Adidas', 'P-01', 'ao-phong-adidas-2.jpg', 1000000, 950000, 1, 26, 15, '1', ''),
(91, 'Mũ lưỡi trai - Nike', 'LT-01', 'mu-luoi-trai-nike.jpg', 800000, 800000, 1, 31, 16, '1', ''),
(92, 'Quần Jean - Gucci', 'J-01', 'quan-jean-gucci.jpg', 1200000, 1100000, 1, 27, 17, '1', ''),
(93, 'Áo len - Chanel', 'C-01', 'ao-len-1.jpg', 1500000, 1500000, 1, 29, 19, '1', ''),
(94, 'Áo khoác - Hermes', 'H-01', 'ao-khoac.jpg', 2000000, 1850000, 1, 28, 18, '1', ''),
(95, 'áo phông', 'p-01', 'ao-phong.gif', 1000000, 1000000, 1, 26, 15, '1', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `idtintuc` int(11) NOT NULL,
  `tentintuc` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Chỉ mục cho bảng `hieusp`
--
ALTER TABLE `hieusp`
  ADD PRIMARY KEY (`idhieusp`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`idloaisp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idtintuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `hieusp`
--
ALTER TABLE `hieusp`
  MODIFY `idhieusp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `idloaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idtintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
