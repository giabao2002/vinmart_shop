-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2024 at 05:42 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vinmart_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int NOT NULL,
  `adminName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `adminEmail` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `adminUser` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `adminPass` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `level` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '4297f44b13955235245b2497399d7a93', 0),
(2, 'Employee 1', 'employee1@gmail.com', 'employee1', '4297f44b13955235245b2497399d7a93', 1),
(3, 'Employee 2', 'employee2@gmail.com', 'employee2', '4297f44b13955235245b2497399d7a93', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int UNSIGNED NOT NULL,
  `brandName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Australia'),
(2, 'America'),
(3, 'Việt Nam'),
(4, 'Korea'),
(5, 'Japan'),
(6, 'France');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int NOT NULL,
  `productId` int UNSIGNED NOT NULL,
  `sId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(47, 5, '4r2a1s1730f28l72os5fup4nc7', 'Khổ qua', '22000', 1, 'b4077607cd.jpg'),
(48, 11, '4r2a1s1730f28l72os5fup4nc7', 'Gạo Lứt Huyết Rồng Loại 1', '30000', 1, '2ad4a3f42f.jpg'),
(61, 2, '9leuupl30157vgue320ild16o4', 'Cherries', '300000', 1, '73bd9c29c4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int UNSIGNED NOT NULL,
  `catName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Rau, thịt, hoa quả'),
(2, 'Đồ uống'),
(3, 'Gạo'),
(4, 'Thực phẩm khô'),
(5, 'Chăm sóc cá nhân'),
(6, 'Gia dụng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `cmtId` int NOT NULL,
  `cmtName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `cmt` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`cmtId`, `cmtName`, `cmt`, `product_id`) VALUES
(1, 'user1', 'sản phẩm tốt', 10),
(2, 'user1', 'đồ ăn ngon', 6),
(3, 'user1', 'sản phẩm tươi ngon', 5),
(4, 'user1', 'sản phẩm tốt', 19),
(5, 'user1', 'sản phẩm tốt', 22),
(6, 'user 2', 'chất lượng', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `phone`, `email`, `password`) VALUES
(1, 'User1', 'Hà Nội', '012345678', 'user@gmail.com', '4297f44b13955235245b2497399d7a93'),
(2, 'User2', 'Hà Nội', '0123456789', 'user2@gmail.com', '4297f44b13955235245b2497399d7a93');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int NOT NULL,
  `productId` int UNSIGNED NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `date_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(2, 13, 'ORGANIC GOJI BERRIES 100GR', 1, 1, '200000', '6d86160c73.png', 2, '2024-04-20 18:41:34'),
(3, 4, 'Dâu Tây', 1, 1, '110000', '43bf201cde.jpg', 2, '2024-04-20 18:41:34'),
(4, 9, 'Gạo đen Hoa Sữa', 1, 1, '50000', '3b73bae5a8.jpg', 2, '2024-04-20 18:41:34'),
(5, 15, 'ORGANIC MUNG BEAN 500GR', 1, 1, '700000', '6ff527128e.png', 2, '2024-04-20 22:45:03'),
(9, 10, 'Gạo Nàng Thơm', 1, 1, '12000', '7481b72f3a.jpg', 1, '2024-04-20 10:20:05'),
(10, 11, 'Gạo Lứt Huyết Rồng Loại 1', 1, 1, '30000', '2ad4a3f42f.jpg', 0, '2024-04-20 17:22:58'),
(11, 10, 'Gạo Nàng Thơm', 1, 1, '12000', '7481b72f3a.jpg', 0, '2024-04-20 10:29:53'),
(13, 14, 'ORGANIC HULLED MILLET 500GR', 1, 1, '50000', '66343b2171.png', 0, '2024-04-20 08:54:33'),
(14, 6, 'Súp lơ trắng', 1, 1, '43000', '39c5a00db2.jpg', 2, '2024-04-24 02:34:18'),
(15, 1, 'Kiwi', 1, 1, '90000', 'e8a3aab3aa.png', 2, '2024-04-24 02:34:18'),
(16, 14, 'ORGANIC HULLED MILLET 500GR', 1, 1, '50000', '66343b2171.png', 0, '2024-04-25 15:23:30'),
(17, 15, 'ORGANIC MUNG BEAN 500GR', 1, 1, '700000', '6ff527128e.png', 2, '2024-04-27 08:16:30'),
(18, 5, 'Khổ qua', 1, 1, '22000', 'b4077607cd.jpg', 0, '2024-04-27 15:56:59'),
(19, 18, 'Nồi chiên không dầu Rapido RAF-8.0M 8 lít', 1, 1, '1490000', '17fd1deb27.png', 2, '2024-04-27 15:58:35'),
(20, 22, 'Nước tăng lực Asahi Monster Energy 355mL', 1, 3, '204000', '09ccb76648.png', 0, '2024-04-27 15:58:35'),
(21, 10, 'Gạo Nàng Thơm', 1, 2, '24000', '7481b72f3a.jpg', 2, '2024-04-27 16:06:47'),
(22, 1, 'Kiwi', 1, 2, '180000', 'e8a3aab3aa.png', 0, '2024-04-27 16:06:47'),
(23, 10, 'Gạo Nàng Thơm', 1, 1, '12000', '7481b72f3a.jpg', 2, '2024-04-27 16:12:21'),
(24, 11, 'Gạo Lứt Huyết Rồng Loại 1', 1, 1, '30000', '2ad4a3f42f.jpg', 0, '2024-04-27 16:12:21'),
(25, 22, 'Nước tăng lực Asahi Monster Energy 355mL', 1, 1, '68000', '09ccb76648.png', 2, '2024-04-27 16:15:22'),
(26, 8, 'Coca cola', 1, 1, '50000', '2068157666.png', 0, '2024-04-27 16:15:22'),
(27, 22, 'Nước tăng lực Asahi Monster Energy 355mL', 1, 1, '68000', '09ccb76648.png', 1, '2024-05-04 15:49:36'),
(28, 26, 'Thịt Ba Chỉ Bò Úc', 1, 1, '100000', '0a525e644d.png', 1, '2024-05-04 16:48:40'),
(29, 10, 'Gạo Nàng Thơm', 1, 1, '12000', '7481b72f3a.jpg', 1, '2024-05-04 16:53:33'),
(30, 14, 'ORGANIC HULLED MILLET 500GR', 1, 1, '50000', '66343b2171.png', 1, '2024-05-04 16:56:42'),
(31, 22, 'Nước tăng lực Asahi Monster Energy 355mL', 1, 1, '68000', '09ccb76648.png', 1, '2024-05-04 17:00:07'),
(32, 2, 'Cherries', 1, 1, '300000', '73bd9c29c4.jpg', 1, '2024-05-04 17:03:18'),
(33, 3, 'Táo Úc', 1, 1, '70000', '42127d9b6c.jpg', 1, '2024-05-04 17:03:18'),
(34, 21, 'Sữa Rửa Mặt CeraVe Foaming Facial Cleanser', 1, 1, '236000', 'be67c65487.png', 1, '2024-05-04 17:04:28'),
(35, 3, 'Táo Úc', 1, 1, '70000', '42127d9b6c.jpg', 2, '2024-05-04 23:36:17'),
(36, 11, 'Gạo Lứt Huyết Rồng Loại 1', 1, 1, '30000', '2ad4a3f42f.jpg', 2, '2024-05-06 21:38:12'),
(37, 10, 'Gạo Nàng Thơm', 1, 1, '12000', '7481b72f3a.jpg', 1, '2024-05-06 21:39:35'),
(38, 8, 'Coca cola', 1, 1, '50000', '2068157666.png', 1, '2024-05-06 21:39:35'),
(39, 8, 'Coca cola', 1, 1, '50000', '2068157666.png', 0, '2024-05-06 21:46:48'),
(40, 22, 'Nước tăng lực Asahi Monster Energy 355mL', 1, 1, '68000', '09ccb76648.png', 0, '2024-05-06 21:46:48'),
(41, 22, 'Nước tăng lực Asahi Monster Energy 355mL', 1, 1, '68000', '09ccb76648.png', 1, '2024-05-06 22:04:07'),
(42, 8, 'Coca cola', 1, 1, '50000', '2068157666.png', 1, '2024-05-06 22:04:07'),
(43, 8, 'Coca cola', 1, 1, '50000', '2068157666.png', 1, '2024-05-09 17:24:00'),
(44, 20, 'Nước tẩy trang Bioderma 500ml', 1, 1, '274000', 'a2b7322af8.png', 1, '2024-05-10 17:11:17'),
(45, 13, 'ORGANIC GOJI BERRIES 100GR', 2, 1, '200000', '6d86160c73.png', 1, '2024-05-10 22:42:55'),
(46, 16, 'ORGANIC CINNAMON POWDER 100GR', 2, 1, '600000', '1c80ae2164.png', 0, '2024-05-10 22:44:36'),
(47, 9, 'Gạo đen Hoa Sữa', 2, 1, '50000', '3b73bae5a8.jpg', 1, '2024-05-11 00:01:15'),
(48, 12, 'Gạo Hương Lài', 2, 1, '17000', '09e9aba47d.jpg', 1, '2024-05-11 00:01:15'),
(49, 3, 'Táo Úc', 2, 1, '70000', '42127d9b6c.jpg', 1, '2024-05-11 00:02:09'),
(50, 22, 'Nước tăng lực Asahi Monster Energy 355mL', 2, 1, '68000', '09ccb76648.png', 0, '2024-05-11 00:04:21'),
(51, 1, 'Kiwi', 2, 1, '90000', 'e8a3aab3aa.png', 0, '2024-05-11 00:05:28'),
(52, 22, 'Nước tăng lực Asahi Monster Energy 355mL', 1, 1, '68000', '09ccb76648.png', 0, '2024-05-13 23:39:07'),
(53, 2, 'Cherries', 1, 1, '300000', '73bd9c29c4.jpg', 0, '2024-05-18 16:02:25'),
(54, 4, 'Dâu Tây', 1, 1, '110000', '43bf201cde.jpg', 0, '2024-05-18 16:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int UNSIGNED NOT NULL,
  `productName` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `catId` int UNSIGNED NOT NULL,
  `brandId` int UNSIGNED NOT NULL,
  `product_desc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(1, 'Kiwi', 1, 4, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 0, '90000', 'e8a3aab3aa.png'),
(2, 'Cherries', 1, 2, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '300000', '73bd9c29c4.jpg'),
(3, 'Táo Úc', 1, 1, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '70000', '42127d9b6c.jpg'),
(4, 'Dâu Tây', 1, 3, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '110000', '43bf201cde.jpg'),
(5, 'Khổ qua', 1, 3, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 0, '22000', 'b4077607cd.jpg'),
(6, 'Súp lơ trắng', 1, 4, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '43000', '39c5a00db2.jpg'),
(7, 'Củ cải đỏ', 1, 2, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '30000', 'afa4e68509.jpg'),
(8, 'Coca cola', 2, 2, '<p><span>Loại Coca-Cola được pha nhầm đ&oacute; lại ngon miệng hơn b&igrave;nh thường, l&agrave;m sảng kho&aacute;i kh&aacute;c thường v&agrave; l&uacute;c đ&oacute; Coca-Cola mới c&oacute; thể phục vụ số đ&ocirc;ng người ti&ecirc;u d&ugrave;ng</span></p>', 0, '50000', '2068157666.png'),
(9, 'Gạo đen Hoa Sữa', 3, 4, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 0, '50000', '3b73bae5a8.jpg'),
(10, 'Gạo Nàng Thơm', 3, 3, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '12000', '7481b72f3a.jpg'),
(11, 'Gạo Lứt Huyết Rồng Loại 1', 3, 2, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '30000', '2ad4a3f42f.jpg'),
(12, 'Gạo Hương Lài', 3, 1, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '17000', '09e9aba47d.jpg'),
(13, 'ORGANIC GOJI BERRIES 100GR', 4, 4, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 0, '200000', '6d86160c73.png'),
(14, 'ORGANIC HULLED MILLET 500GR', 4, 3, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '50000', '66343b2171.png'),
(15, 'ORGANIC MUNG BEAN 500GR', 4, 2, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '700000', '6ff527128e.png'),
(16, 'ORGANIC CINNAMON POWDER 100GR', 4, 1, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '600000', '1c80ae2164.png'),
(17, 'Bắp cải tím', 1, 1, '<p>Thực phẩm hữu cơ l&agrave; thực phẩm được sản xuất bằng phương ph&aacute;p tu&acirc;n thủ c&aacute;c ti&ecirc;u chuẩn của canh t&aacute;c hữu cơ. C&aacute;c ti&ecirc;u chuẩn kh&aacute;c nhau tr&ecirc;n to&agrave;n thế giới, nhưng canh t&aacute;c hữu cơ n&oacute;i chung c&oacute; c&aacute;c đặc điểm thực h&agrave;nh nhằm cố gắng lu&acirc;n chuyển t&agrave;i nguy&ecirc;n, th&uacute;c đẩy c&acirc;n bằng sinh th&aacute;i v&agrave; bảo tồn đa dạng sinh học.</p>', 1, '30000', '523b61dc52.jpg'),
(18, 'Nồi chiên không dầu Rapido RAF-8.0M 8 lít', 6, 4, '<p><em><strong>Nồi chi&ecirc;n kh&ocirc;ng dầu Rapido RAF-8.0M 8 l&iacute;t</strong></em><span>&nbsp;</span><strong><em>dễ sử dụng với 2 n&uacute;t xoay đơn giản, chi&ecirc;n nướng thoải m&aacute;i cho cả gia đ&igrave;nh nhờ</em></strong><em><strong>&nbsp;<a title=\"Xem th&ecirc;m c&aacute;c mẫu nồi chi&ecirc;n kh&ocirc;ng dầu 5 - 10 l&iacute;t đang b&aacute;n tại Điện m&aacute;y XANH\" href=\"https://www.dienmayxanh.com/noi-chien-khong-dau-tu-5-den-10-lit\" target=\"_blank\">dung t&iacute;ch sử dụng lớn 8 l&iacute;t</a></strong></em><strong><em>, chất liệu bền tốt v&agrave; an to&agrave;n khi nấu.</em></strong></p>', 1, '1490000', '17fd1deb27.png'),
(19, 'Bếp điện từ đơn Kangaroo KG18IH2', 6, 3, '<p><span>Bếp điện từ đơn Kangaroo KG18IH2</span><span>&nbsp;</span><span>l&agrave; sản phẩm hữu &iacute;ch, tiết kiệm thời gian nấu nướng, sạch sẽ an to&agrave;n v&agrave; được rất nhiều người lựa chọn v&agrave; được d&ugrave;ng kh&aacute; phổ biến ở nhiều gia đ&igrave;nh v&agrave; nhờ khả năng l&agrave;m n&oacute;ng nhanh v&agrave; được t&iacute;ch hợp nhiều t&iacute;nh năng tiện &iacute;ch.</span></p>', 1, '1290000', '96b8f1b69c.png'),
(20, 'Nước tẩy trang Bioderma 500ml', 5, 6, '<p>Loại da: Da dầu, da nhạy cảm</p>\r\n<p>C&ocirc;ng dụng: Gi&uacute;p cho l&agrave;n da được l&agrave;m sạch s&acirc;u v&agrave; duy tr&igrave; độ ẩm tự nhi&ecirc;n của da một c&aacute;ch hiệu quả.</p>', 1, '274000', 'a2b7322af8.png'),
(21, 'Sữa Rửa Mặt CeraVe Foaming Facial Cleanser', 5, 2, '<p><span>Cerave Foaming Facial Cleanser</span><span>&nbsp;l&agrave; d&ograve;ng sữa rửa mặt được khuy&ecirc;n d&ugrave;ng h&agrave;ng ng&agrave;y cho mọi loại da, từ da thường đến da dầu, da mụn, kể cả l&agrave; da nhạy cảm. Sữa rửa mặt Cerave c&oacute; độ dịu nhẹ, th&acirc;n thiện với da, c&oacute; khả năng l&agrave;m sạch da, loại bỏ dầu thừa nhẹ nh&agrave;ng, kh&ocirc;ng g&acirc;y kh&ocirc; r&aacute;p nhờ độ pH l&yacute; tưởng. Ngo&agrave;i ra n&oacute; c&ograve;n gi&uacute;p giảm mụn, se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng.</span></p>', 0, '236000', 'be67c65487.png'),
(22, 'Nước tăng lực Asahi Monster Energy 355mL', 2, 5, '<p><span>Nước tăng lực Asahi Monster Energy với h&agrave;m lượng caffeine khoảng 120 mg trong một lon nước c&oacute; dung t&iacute;ch 355ml gi&uacute;p đem đến sinh lực dồi d&agrave;o v&agrave; minh mẫn, đ&aacute;nh thức năng lượng hoạt động cả ng&agrave;y d&agrave;i. Đ&acirc;y ch&iacute;nh l&agrave; thức uống l&yacute; tưởng với những c&ocirc;ng việc đ&ograve;i hỏi tập trung cao hay phải di chuyển nhiều.</span><span><span><em>&nbsp;</em></span></span></p>', 1, '68000', '09ccb76648.png'),
(23, 'Thịt Ba Rọi Heo', 1, 3, '<p><span>Ba Rọi Heo CJ gi&uacute;p cung cấp lượng lớn protein, &iacute;t chất b&eacute;o gi&uacute;p ph&aacute;t triển cơ bắp. Thịt ba rọi chứa nhiều vitamin nh&oacute;m B. Hỗ trợ duy tr&igrave; hoạt động, cung cấp năng lượng cho cơ thể. Vitamin B2 c&oacute; lợi cho da, c&oacute; t&aacute;c dụng giải độc. Tốt cho n&atilde;o v&agrave; c&aacute;c tế b&agrave;o thần kinh, nhờ c&oacute; vitamin A, D trong th&agrave;nh phần dinh dưỡng.</span><br /><span>Hướng dẫn bảo quản: Bảo quản m&aacute;t ở nhiệt độ 0-4 độ C, trong v&ograve;ng 3 ng&agrave;y kể từ ng&agrave;y sản xuất.</span></p>', 1, '60000', 'fcf87cdb86.png'),
(24, 'Thịt Thăn Lưng Bò Tuyết', 1, 3, '<p><span>T&ecirc;n sản phẩm: Thăn lưng b&ograve; tuyết (Nh&atilde;n hiệu Aukobe)</span><br /><span>Th&agrave;nh phần: Thịt b&ograve;, mỡ b&ograve;, nước, chất l&agrave;m ẩm,&hellip;</span><br /><span>Hướng dẫn sử dụng: D&ugrave;ng chế biến th&agrave;nh m&oacute;n ăn t&ugrave;y th&iacute;ch. Sản phẩm c&oacute; chế biến ngay kh&ocirc;ng cần r&atilde; đ&ocirc;ng, kh&ocirc;ng t&aacute;i cấp đ&ocirc;ng lại sản phẩm.</span><br /><span>Hướng dẫn bảo quản: Bảo quản ở nhiệt độ: -18 độ C hoặc trong ngăn đ&ocirc;ng tủ lạnh</span></p>', 0, '135000', '493988f52d.png'),
(25, 'Thịt Ba Rọi Xông Khói', 1, 3, '<p><span>Được tuyển chọn từ phần ba rọi tươi ngon nhất của những ch&uacute; heo non dưới 50kg với c&ocirc;ng nghệ x&ocirc;ng kh&oacute;i tự nhi&ecirc;n bằng gỗ sồi, Ba rọi x&ocirc;ng kh&oacute;i Shinshu Nhật Bản giữ trọn vị ngọt thanh của thịt h&ograve;a quyện c&ugrave;ng lớp mỡ mịn m&agrave;ng nhưng lại kh&ocirc;ng hề b&eacute;o ngậy, đem đến cho bạn cảm gi&aacute;c ngất ng&acirc;y khi thưởng thức từng miếng thịt mềm, tan trong miệng. Ba rọi x&ocirc;ng kh&oacute;i Shinshu ngon hơn khi nướng hoặc &aacute;p chảo.</span></p>', 1, '75000', '2b386667e5.png'),
(26, 'Thịt Ba Chỉ Bò Úc', 1, 3, '<p><span>Đặc điểm sản phẩm:</span><br /><span>- Phần thịt c&oacute; m&agrave;u đỏ, xen kẽ v&acirc;n mỡ c&oacute; m&agrave;u trắng, tuy nhi&ecirc;n &iacute;t hơn thịt b&ograve; Mỹ</span><br /><span>- Phần thịt d&agrave;y xen kẽ với mỡ với tỉ lệ mỡ cao n&ecirc;n tạo cho miếng thịt c&oacute; độ thơm, mềm, kh&ocirc;ng bị kh&ocirc; khi chế biến</span></p>', 1, '100000', '0a525e644d.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int NOT NULL,
  `sliderName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slider_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(51, 'slide1', '82aba99c1f.png', 1),
(52, 'slide2', '0c2c957440.png', 1),
(53, 'slide3', '1a05c05738.png', 1),
(54, 'slide4', '8811787002.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int NOT NULL,
  `created_date` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `orders` int NOT NULL,
  `sales` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `created_date`, `orders`, `sales`, `quantity`) VALUES
(1, '2024-04-20', 3, '2000000', 3),
(2, '2024-04-24', 2, '180000', 2),
(3, '2024-04-25', 2, '133000', 2),
(4, '2024-04-27', 11, '2592000', 16),
(5, '2024-05-05', 9, '622000', 9),
(6, '2024-05-06', 4, '120000', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`cmtId`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`,`productName`),
  ADD KEY `productName` (`productName`,`customer_id`),
  ADD KEY `productName_2` (`productName`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`,`brandId`),
  ADD KEY `brandId` (`brandId`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `cmtId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
