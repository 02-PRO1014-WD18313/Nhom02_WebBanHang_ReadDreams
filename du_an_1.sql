-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2023 lúc 12:11 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
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
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `iduser` int(10) DEFAULT 0,
  `order_name` varchar(250) NOT NULL,
  `order_address` varchar(255) NOT NULL,
  `order_tel` varchar(50) NOT NULL,
  `order_email` varchar(100) NOT NULL,
  `order_pttt` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1.Thanh toán trực tiếp\r\n2.Chuyển khoản\r\n3.Thanh toán online',
  `ngaydathang` varchar(50) DEFAULT NULL,
  `total` int(10) NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Đơn hàng mới\r\n1.Đang xử lý\r\n2.Đang giao hàng\r\n3.Đã giao hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `id_danh_muc` int(11) NOT NULL,
  `gia_niem_yet` decimal(11,0) NOT NULL,
  `gia_ban` decimal(11,0) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `anh` varchar(255) DEFAULT NULL,
  `mo_ta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `id_danh_muc`, `gia_niem_yet`, `gia_ban`, `so_luong`, `anh`, `mo_ta`) VALUES
(1, 'Conan', 1, 100000, 50000, 100, '713a5a459c93379d57cc7f24c038b153.jpg', 'Mô tả sản phẩm'),
(2, 'Doraemon', 2, 100000, 50000, 100, 'download.jpg', 'Mô tả sản phẩm'),
(3, 'Shin', 3, 100000, 50000, 100, 'download (1).jpg', 'Mô tả sản phẩm'),
(4, 'Nuôi dạy con thời 4.0', 4, 200000, 150000, 1, '2022_09_16_15_46_06_1-390x510.jpg', 'Thông tin sản phẩm\r\nMã hàng	8935246933589\r\nTên Nhà Cung Cấp	MCBooks\r\n\r\nTác giả	Shimi Kang, MD\r\nNgười Dịch	Trương Thị Ngoan\r\nNXB	NXB Hồng Đức\r\nNăm XB	2022\r\nTrọng lượng (gr)	400\r\nKích Thước Bao Bì	20.5 x 13 x 2 cm\r\nSố trang	414\r\nHình thức	Bìa Mềm\r\nNuôi Con 4.0 - Làm Thế Nào Để Trẻ Không Bị Nghiện Thiết Bị Công Nghệ?\r\nTrẻ NGHIỆN thiết bị công nghệ sẽ dẫn đến những vấn nạn khác như mối quan hệ trong gia đình lỏng lẻo, trẻ bị rối loạn cảm xúc và hành vi, giảm sút sáng tạo, ảnh hưởng đến sức khỏe, thiếu kỹ năng giao tiếp xã hội, hay đòi hỏi... Cuốn sách Nuôi Con 4.0 – Làm Thế Nào Để Trẻ Không Bị Nghiện Thiết Bị Công Nghệ? Là cứu cánh cho các vị phụ huynh có trẻ từ 2-18 tuổi đang có thói quen sử dụng tivi, điện thoại, ipad quá nhiều.\r\nNội dung chính của cuốn sách Nuôi Con 4.0 – Làm Thế Nào Để Trẻ Không Bị Nghiện Thiết Bị Công Nghệ bao gồm:\r\nPhân tích khoa học về cách thức tác động của thiết bị công nghệ đến bộ não đang giai đoạn phát triển của trẻ và tác động xấu đến sức khỏe hành vi và đặc điểm tính cách của\r\nNhững thói quen được thiết lập trong thời thơ ấu đặt nền móng như thế nào cho những hành vi sau này của trẻ. Tác giả giải thích tầm quan trọng của việc tận dụng những năm tháng dầu đời của trẻ để hướng dẫn chúng thiết lập những thói quen lành mạnh nhất.\r\nHướng dẫn bạn cách giúp trẻ sử dụng công nghệ một cách lành mạnh, mang lợi hơn là mang hại.\r\nTác giả mang đến kế hoạch 6 bước thực tế nhằm giải quyết\r\nCách người lớn để mặc trẻ vô tư sử dụng điện thoại thông minh có thể gây hại cho chúng, khi trẻ trở nên vô cảm với thế giới xung quanh mà chìm trong thế giới ảo. Hãy cứu lấy con của mình từ bàn tay người vô hình là thế giới công nghệ bố mẹ nhé. Cuốn sách này chắc chắn sẽ hỗ trợ bố mẹ rất nhiều, hãy nhanh tay tìm đọc.\r\n'),
(5, 'Tuân thủ đúng thời gian đã định', 5, 50, 30, 1, 'image_195509_1_44257.jpg', 'Bộ truyện Tủ sách rèn nhân cách sống cho trẻ xoay quanh cuộc sống của các bạn động vật đáng yêu được nhân hóa. Khi cha mẹ cùng con cái đọc những câu chuyện này, có thể bồi dưỡng EQ, nhân cách, phẩm chất đạo đức, thái độ sống lạc quan'),
(6, 'Em sẽ nuôi con chúng ta', 5, 100, 88, 1, 'image_183244_thanh_ly.jpg', 'Cuốn sách là tự truyện của một cô gái làm mẹ đơn thân năm 22, khoảng thời gian của câu chuyện bắt đầu từ khi quen hắn (bố đứa bé) cho đến ngày đứa bé chào đời. Cô gái đã vượt qua đau khổ vì bị phụ bạc, trải qua những dị nghị của người đời về việc không “chồng mà chửa” để sinh một bé gái khỏe mạnh.'),
(7, 'Bước Đội phá', 5, 100, 0, 0, '', ''),
(8, 'Bước Đội phá', 5, 100, 86, 1, 'image_195509_1_24475_thanh_ly.jpg', 'Một trong những sai lầm cơ bản nhất của các bà mẹ hiện đại là chiều chuộng con quá mức, làm thay con cả những việc đáng ra chúng phải tự làm. Họ cho rằng đó là biểu hiện của tình yêu thương, và hy vọng đứa con hiểu được ý nghĩa của chúng.'),
(9, 'Giúp con thành công', 5, 150, 100, 1, 'image_200755_thanh_ly.jpg', 'Hầu hết các cha mẹ luôn gặp khó khăn khi đặt ra các quy tắc trong nhà…gia đình trở nên xa cách, các thành viên đều không có kết nối, bọn trẻ thiếu các kĩ năng xã hội cần thiết… tất cả gióng lên hồi chuông khiến cha mẹ cảnh tỉnh. Họ cần làm gì đó để thay đổi cục diện.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
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
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `tel`, `role`) VALUES
(13, 'hieu', '123', 'nguyenminhhieust10@gmail.com', '0988697904', 0),
(16, 'Rachel', '123', 'hangntkookie97@gmail.com', '0988697902', 0),
(17, 'phuong', '2345', 'phuongnvph33554@fpt.edu.vn', '035565456566', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_san_pham_danh_muc` (`id_danh_muc`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_san_pham_danh_muc` FOREIGN KEY (`id_danh_muc`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
