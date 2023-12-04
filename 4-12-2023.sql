-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 05:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `du_an_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten`) VALUES
(1, 'Văn Học'),
(2, 'Kinh Tế'),
(3, 'Tâm Lí - Kĩ Năng Sống'),
(4, 'Nuôi Dạy Con'),
(5, 'Sách Thiếu Nhi'),
(6, 'Giáo Khoa - Tham Khảo'),
(7, 'Sách Học Ngoại Ngữ');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `giamua` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id_order_detail`, `id_order`, `id_pro`, `giamua`, `soluong`, `thanhtien`) VALUES
(41, 18, 8, 155000, 1, 155000);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `id_danh_muc` int(11) NOT NULL,
  `gia_niem_yet` decimal(11,0) NOT NULL,
  `gia_ban` decimal(11,0) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `anh` varchar(255) DEFAULT NULL,
  `mo_ta` text NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `id_danh_muc`, `gia_niem_yet`, `gia_ban`, `so_luong`, `anh`, `mo_ta`, `trangthai`) VALUES
(1, 'Conan', 1, 100000, 50000, 100, '713a5a459c93379d57cc7f24c038b153.jpg', 'Mô tả sản phẩm', 0),
(2, 'Doraemon', 2, 100000, 50000, 100, 'download.jpg', 'Mô tả sản phẩm', 0),
(3, 'Shin', 3, 100000, 50000, 100, 'download (1).jpg', 'Mô tả sản phẩm', 0),
(4, 'Nuôi dạy con thời 4.0', 4, 200000, 150000, 1, '2022_09_16_15_46_06_1-390x510.jpg', 'Thông tin sản phẩm\r\nMã hàng	8935246933589\r\nTên Nhà Cung Cấp	MCBooks\r\n\r\nTác giả	Shimi Kang, MD\r\nNgười Dịch	Trương Thị Ngoan\r\nNXB	NXB Hồng Đức\r\nNăm XB	2022\r\nTrọng lượng (gr)	400\r\nKích Thước Bao Bì	20.5 x 13 x 2 cm\r\nSố trang	414\r\nHình thức	Bìa Mềm\r\nNuôi Con 4.0 - Làm Thế Nào Để Trẻ Không Bị Nghiện Thiết Bị Công Nghệ?\r\nTrẻ NGHIỆN thiết bị công nghệ sẽ dẫn đến những vấn nạn khác như mối quan hệ trong gia đình lỏng lẻo, trẻ bị rối loạn cảm xúc và hành vi, giảm sút sáng tạo, ảnh hưởng đến sức khỏe, thiếu kỹ năng giao tiếp xã hội, hay đòi hỏi... Cuốn sách Nuôi Con 4.0 – Làm Thế Nào Để Trẻ Không Bị Nghiện Thiết Bị Công Nghệ? Là cứu cánh cho các vị phụ huynh có trẻ từ 2-18 tuổi đang có thói quen sử dụng tivi, điện thoại, ipad quá nhiều.\r\nNội dung chính của cuốn sách Nuôi Con 4.0 – Làm Thế Nào Để Trẻ Không Bị Nghiện Thiết Bị Công Nghệ bao gồm:\r\nPhân tích khoa học về cách thức tác động của thiết bị công nghệ đến bộ não đang giai đoạn phát triển của trẻ và tác động xấu đến sức khỏe hành vi và đặc điểm tính cách của\r\nNhững thói quen được thiết lập trong thời thơ ấu đặt nền móng như thế nào cho những hành vi sau này của trẻ. Tác giả giải thích tầm quan trọng của việc tận dụng những năm tháng dầu đời của trẻ để hướng dẫn chúng thiết lập những thói quen lành mạnh nhất.\r\nHướng dẫn bạn cách giúp trẻ sử dụng công nghệ một cách lành mạnh, mang lợi hơn là mang hại.\r\nTác giả mang đến kế hoạch 6 bước thực tế nhằm giải quyết\r\nCách người lớn để mặc trẻ vô tư sử dụng điện thoại thông minh có thể gây hại cho chúng, khi trẻ trở nên vô cảm với thế giới xung quanh mà chìm trong thế giới ảo. Hãy cứu lấy con của mình từ bàn tay người vô hình là thế giới công nghệ bố mẹ nhé. Cuốn sách này chắc chắn sẽ hỗ trợ bố mẹ rất nhiều, hãy nhanh tay tìm đọc.\r\n', 0),
(5, 'Tuân thủ đúng thời gian đã định', 5, 50000, 310000, 1, 'image_195509_1_44257.jpg', '', 0),
(6, 'Em sẽ nuôi con chúng ta', 5, 100000, 188000, 1, 'image_183244_thanh_ly.jpg', '', 0),
(8, 'Bước Đội phá', 5, 100000, 155000, 1, 'image_195509_1_24475_thanh_ly.jpg', '', 0),
(9, 'Giúp con thành công', 5, 150000, 100000, 1, 'image_200755_thanh_ly.jpg', '', 0),
(10, 'Giao tiếp thông minh, Nói đâu trúng đó', 7, 100000, 150000, 100, 'anh-bia-1-cang-cam-tinh-cang-that-bai.png', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `tel`, `role`) VALUES
(13, 'hieu', '123', 'nguyenminhhieust10@gmail.com', '0988697904', 1),
(16, 'Rachel', '123', 'hangntkookie97@gmail.com', '0988697902', 0),
(17, 'phuong', '2345', 'phuongnvph33554@fpt.edu.vn', '035565456566', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `hoten` varchar(250) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `pttt` tinyint(4) NOT NULL COMMENT '1.Thanh toán trực tiếp\r\n2.Chuyển khoản',
  `ngaydathang` datetime NOT NULL,
  `trangthai` tinyint(4) NOT NULL COMMENT '0: Đơn hàng mới\r\n1.Đang xử lý\r\n2.Đang giao hàng\r\n3.Đã giao hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_user`, `hoten`, `sdt`, `email`, `diachi`, `tongtien`, `pttt`, `ngaydathang`, `trangthai`) VALUES
(18, 0, 'Thai', '0869902817', 'tbt2632004@gmail.com', 'Ha Long', 155000, 1, '2023-04-12 16:26:09', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_order_detail`),
  ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_san_pham_danh_muc` (`id_danh_muc`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_san_pham_danh_muc` FOREIGN KEY (`id_danh_muc`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
