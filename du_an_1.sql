-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2023 lúc 05:25 PM
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
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `img`, `name`, `price`, `soluong`) VALUES
(108, 'upload/8932000133124_1.jpg', 'Thất Lạc Cõi Người (Tái Bản 2023)', 119, 1);

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
(1, 'Conan', 1, 100000, 50000, 100, '713a5a459c93379d57cc7f24c038b153.jpg', 'không có gì cả'),
(2, 'Doraemon', 2, 100000, 50000, 100, 'download.jpg', 'không có'),
(3, 'Shin', 3, 100000, 50000, 100, 'download (1).jpg', 'ko'),
(13, 'Thất Lạc Cõi Người (Tái Bản 2023)', 1, 119, 119, 100, '8932000133124_1.jpg', 'Thông tin sản phẩm\r\nMã hàng	8932000134077\r\nNhà Cung Cấp	Cty Bán Lẻ Phương Nam\r\n\r\nTác giả	Dazai Osamu\r\nNgười Dịch	Hoàng Long\r\nNXB	Hội Nhà Văn\r\nNăm XB	2023\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	281\r\nKích Thước Bao Bì	20.5 x 13 x 1.4cm\r\nSố trang	275\r\nHình thức	Bìa Mềm\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng\r\n\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\r\nThất Lạc Cõi Người là một tác phẩm kinh điển nổi tiếng của văn học Nhật Bản hiện đại và là cuốn tiểu thuyết cuối cùng của Dazai Osamu. Thất Lạc Cõi Người mang nhiều nét tự thuật, là một tiểu thuyết tự truyện. Sau khi hoàn thành tác phẩm này, Dazai cùng với người tình là Tomie trầm mình tự sát ở hồ nước ngọt Tamagawa, chấm dứt cuộc đời 39 năm ngắn ngủi. Cuộc đời của Dazai là cuộc đời đau thương và vỡ mộng. Tự sát đến năm lần, nghiện rượu, nghiện thuốc giảm đau, vào bệnh viện tâm thần, ly dị vợ, tái hôn, một con trai tật nguyền, đường văn chương lận đận. Tất cả những điều này in dấu trong tác phẩm của ông, làm nên nét độc đáo và mang lại vinh quang cho Dazai Osamu.\r\nThất Lạc Cõi Người được thể hiện dưới dạng ghi chép của chàng trai trẻ Oba Yozo được một người lạ mặt tìm thấy từ một người phụ nữ từng ở quán bar, gồm 3 quyển sổ.\r\n- Quyển sổ ghi chép thứ nhất\r\nYozo từ nhỏ đã cảm thấy không thể nào hiểu được con người. Cậu buộc phải làm trò hề để có thể quan hệ với người khác và cũng để nhằm quên đi việc bị gia nhân xâm hại thuở nhỏ.\r\n- Quyển sổ ghi chép thứ hai\r\nYozo trở nên cực kì nhạy cảm với những ai có thể bóc mẽ màn giả vờ của cậu. Sau khi quen với Horiki, một sinh viên cùng học ở trường mỹ thuật tư thục, cậu bắt đầu sao nhãng việc học mà rượu chè, hút hít và mại dâm. Đỉnh điểm, cậu quan hệ với một phụ nữ đã có chồng và cùng tự sát đôi với cô ta. Nhưng người phụ nữ thì chết, chỉ Yozo được cứu sống, mang trên mình mặc cảm tội lỗi.\r\n- Quyển sổ ghi chép thứ ba\r\nYozo bị đuổi học khỏi trường đại học và sau đó, sống nhờ nhà một người bạn của cha cậu. Một thời gian sau, cậu sống với một bà mẹ đơn thân là chỗ quen biết của Horiki, nhưng cũng không lâu sau lại đến sống với một madam quán bar. Về sau, Yozo yêu thương và cưới một cô gái trẻ và ngây thơ. Nhờ cô mà trong một thời gian, Yozo tu chí làm việc là một hoạ sĩ truyện tranh và vẽ minh hoạ. Tuy nhiên, Horiki lại xuất hiện và Yozo lại ngựa quen đường cũ. Qua thời gian, Yozo nghiện rượu và ma túy. Cậu bị đưa vào viện tâm thần và sau đó được đưa về nhà một người phụ nữ do anh cả cậu sắp xếp. Chuỗi ngày như ác mộng của cậu tiếp tục khi quanh năm bị người phụ nữ đó lạm dụng nhưng bây giờ cậu không còn thấy vui hay buồn. Tóc Yozao trở nên bạc như người đã qua 40 dù mới 27 tuổi.\r\nThất Lạc Cõi Người đã được dựng thành phim, chuyển thể thành truyện tranh, bản thân cuộc đời của Dazai Osamu cũng được lên màn ảnh. Xưa nay những tác phẩm nổi tiếng được dựng thành phim không có gì lạ, nhưng chính cuộc đời tác giả được dựng phim thì là một điều xưa nay hiếm. Cuộc đời tác giả đã trở thành tác phẩm. Chính bản thân tác giả cũng trở thành huyền thoại.\r\n \r\n\r\n'),
(14, 'Ra Bờ Suối Ngắm Hoa Kèn Hồng', 1, 145, 116, 100, '600ra-bo-suoi---bm_1.jpg', 'Thông tin sản phẩm \r\nRa Bờ Suối Ngắm Hoa Kèn Hồng\r\nRa bờ suối ngắm hoa kèn hồng là tác phẩm trong trẻo, tràn đầy tình yêu thương mát lành, trải ra trước mắt người đọc khu vườn trại rực rỡ cỏ hoa của vùng quê thanh bình, kèm theo đó là những “nhân vật” đáng yêu, làm nên một “thế giới giàu có, rộng lớn và vô cùng hấp dẫn” mà dường như người lớn đã bỏ quên đâu đó từ lâu.\r\nSau Tôi là Bê Tô, Có hai con mèo ngồi bên cửa sổ, Con chó nhỏ mang giỏ hoa hồng, đây là một cuốn sách nữa của nhà văn Nguyễn Nhật Ánh mà nhân vật chính là những bé động vật ngộ nghĩnh, được mô tả sống động dưới ngòi bút tài hoa và giàu tình thương.\r\nCâu chuyện chạy qua 8 phần với 64 chương sách nhỏ đầy ắp lòng thương yêu, tính lương thiện, tình thân bạn bè, lòng dũng cảm và bao dung, đánh bạt sự ác độc và cả mọi thói xấu.\r\nKhép cuốn sách lại, tự nhiên thấy lòng mình dịu lắng, bình yên đến lạ lùng…\r\nVài đoạn trích trong tác phẩm Ra bờ suối ngắm hoa kèn hồng\r\n“Tắm mình trong suối âm thanh, vẫn là những điệu buồn quen thuộc, nhưng đêm nay Mắt Tròn thấy tâm hồn mình như bay lên. Âm nhạc như một bàn tay vô hình đã nâng đỡ nó, lên cao, lên cao mãi. Cao hơn nỗi buồn, cao hơn những phiền muộn vẫn dày vò nó trong những ngày qua.\r\nNỗi buồn, ờ thì nó vẫn ở đó, trong trái tim Mắt Tròn, nhưng nó không làm trái tim con gà xây xát nữa. Mắt Tròn ngạc nhiên nhận ra nỗi buồn có thể phát sáng, trở nên đẹp đẽ dưới sự vỗ về của âm nhạc.\r\nTiếng đàn của chàng nhạc sĩ giang hồ đã sưởi ấm con gà, đã an ủi nó thật nhiều trong đêm hôm đó.\r\nMắt Tròn neo mình trên cỏ, bất động, lặng thinh, đầy xao xuyến. Nó lắng nghe tiếng đàn, cảm tưởng đang lắng nghe chính bản thân nó, bắt gặp mình đang xúc động.\r\nCó lẽ bạn cũng thế thôi, khi nỗi buồn trong lòng bạn được âm nhạc chắp cánh, nó sẽ thăng hoa. Thay vì nhấn chìm bạn, nỗi buồn sẽ giúp bạn giàu có hơn về cảm xúc. Nó trở thành một giá trị và bạn chợt nhận ra nó là một phần thanh xuân của bạn.\r\n.............................................\r\nCó gì đâu! Đâu có gì đâu!\r\nThời gian như nước chảy qua cầu\r\nBờ cỏ không còn in dấu cũ\r\nVườn địa đàng kia táo đã sâu.\r\nCó gì không? Không có gì đâu!\r\nTem chưa đóng dấu đã phai màu\r\nĐường đi không tới đành quay lại\r\nCuộc sống chưa xong lại bắt đầu\r\n............................................\r\nMắt Tròn đưa mắt nhìn quanh. Ở đằng xa kia, chỗ nhà giam, cây lộc vừng đang buông lững lờ những chuỗi hoa màu gạch cua, chốc chốc lại chao đi trong gió hệt như một tấm rèm ai treo trên nhánh lá. Trên bãi cỏ xanh bên dưới, thiên nhiên đã đính rải rác những chùm hoa ích mẫu, những cụm hoa mắc cỡ đan cài với cơ man là hoa xuyến chi và hoa sao nhái dệt nên một tấm thảm chi chít các hoa văn ngũ sắc.\r\nCánh Cam nói đúng, “trong vườn thiếu gì hoa”. Và Mắt Tròn công nhận tất cả loài hoa trong vườn đều đẹp.\r\nNhưng nó cũng thấy một điều khác đáng công nhận không kém: Chỉ có hoa kèn hồng kia bên dòng suối kia ngoài cánh đồng kia mới có thể đánh thức giấc mơ của nó, khiến trái tim nó tưng bừng reo ca như có chim về hót.”\r\nMã hàng	8934974175995\r\nTên Nhà Cung Cấp	NXB Trẻ\r\n\r\nTác giả	Nguyễn Nhật Ánh\r\n\r\nNXB	NXB Trẻ\r\nNăm XB	2022\r\nNgôn Ngữ	Tiếng Việt\r\nTrọng lượng (gr)	350\r\nKích Thước Bao Bì	20 x 13 cm\r\nSố trang	336\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	•	Nguyễn Nhật Ánh\r\n•	Các Tác Giả Trẻ Được Yêu Thích\r\n•	RƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\n\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng\r\n\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\r\nRa Bờ Suối Ngắm Hoa Kèn Hồng\r\nRa bờ suối ngắm hoa kèn hồng là tác phẩm trong trẻo, tràn đầy tình yêu thương mát lành, trải ra trước mắt người đọc khu vườn trại rực rỡ cỏ hoa của vùng quê thanh bình, kèm theo đó là những “nhân vật” đáng yêu, làm nên một “thế giới giàu có, rộng lớn và vô cùng hấp dẫn” mà dường như người lớn đã bỏ quên đâu đó từ lâu.\r\nSau Tôi là Bê Tô, Có hai con mèo ngồi bên cửa sổ, Con chó nhỏ mang giỏ hoa hồng, đây là một cuốn sách nữa của nhà văn Nguyễn Nhật Ánh mà nhân vật chính là những bé động vật ngộ nghĩnh, được mô tả sống động dưới ngòi bút tài hoa và giàu tình thương.\r\nCâu chuyện chạy qua 8 phần với 64 chương sách nhỏ đầy ắp lòng thương yêu, tính lương thiện, tình thân bạn bè, lòng dũng cảm và bao dung, đánh bạt sự ác độc và cả mọi thói xấu.\r\nKhép cuốn sách lại, tự nhiên thấy lòng mình dịu lắng, bình yên đến lạ lùng…\r\nVài đoạn trích trong tác phẩm Ra bờ suối ngắm hoa kèn hồng\r\n“Tắm mình trong suối âm thanh, vẫn là những điệu buồn quen thuộc, nhưng đêm nay Mắt Tròn thấy tâm hồn mình như bay lên. Âm nhạc như một bàn tay vô hình đã nâng đỡ nó, lên cao, lên cao mãi. Cao hơn nỗi buồn, cao hơn những phiền muộn vẫn dày vò nó trong những ngày qua.\r\nNỗi buồn, ờ thì nó vẫn ở đó, trong trái tim Mắt Tròn, nhưng nó không làm trái tim con gà xây xát nữa. Mắt Tròn ngạc nhiên nhận ra nỗi buồn có thể phát sáng, trở nên đẹp đẽ dưới sự vỗ về của âm nhạc.\r\nTiếng đàn của chàng nhạc sĩ giang hồ đã sưởi ấm con gà, đã an ủi nó thật nhiều trong đêm hôm đó.\r\nMắt Tròn neo mình trên cỏ, bất động, lặng thinh, đầy xao xuyến. Nó lắng nghe tiếng đàn, cảm tưởng đang lắng nghe chính bản thân nó, bắt gặp mình đang xúc động.\r\nCó lẽ bạn cũng thế thôi, khi nỗi buồn trong lòng bạn được âm nhạc chắp cánh, nó sẽ thăng hoa. Thay vì nhấn chìm bạn, nỗi buồn sẽ giúp bạn giàu có hơn về cảm xúc. Nó trở thành một giá trị và bạn chợt nhận ra nó là một phần thanh xuân của bạn.\r\n.............................................\r\nCó gì đâu! Đâu có gì đâu!\r\nThời gian như nước chảy qua cầu\r\nBờ cỏ không còn in dấu cũ\r\nVườn địa đàng kia táo đã sâu.\r\nCó gì không? Không có gì đâu!\r\nTem chưa đóng dấu đã phai màu\r\nĐường đi không tới đành quay lại\r\nCuộc sống chưa xong lại bắt đầu\r\n............................................\r\nMắt Tròn đưa mắt nhìn quanh. Ở đằng xa kia, chỗ nhà giam, cây lộc vừng đang buông lững lờ những chuỗi hoa màu gạch cua, chốc chốc lại chao đi trong gió hệt như một tấm rèm ai treo trên nhánh lá. Trên bãi cỏ xanh bên dưới, thiên nhiên đã đính rải rác những chùm hoa ích mẫu, những cụm hoa mắc cỡ đan cài với cơ man là hoa xuyến chi và hoa sao nhái dệt nên một tấm thảm chi chít các hoa văn ngũ sắc.\r\nCánh Cam nói đúng, “trong vườn thiếu gì hoa”. Và Mắt Tròn công nhận tất cả loài hoa trong vườn đều đẹp.\r\nNhưng nó cũng thấy một điều khác đáng công nhận không kém: Chỉ có hoa kèn hồng kia bên dòng suối kia ngoài cánh đồng kia mới có thể đánh thức giấc mơ của nó, khiến trái tim nó tưng bừng reo ca như có chim về hót.”\r\n'),
(15, 'Cây Cam Ngọt Của Tôi', 1, 108, 108, 100, 'image_217480.jpg', 'Thông tin sản phẩm\r\nMã hàng	8935235228351\r\nTên Nhà Cung Cấp	Nhã Nam\r\n\r\nTác giả	José Mauro de Vasconcelos\r\nNgười Dịch	Nguyễn Bích Lan, Tô Yến Ly\r\nNXB	NXB Hội Nhà Văn\r\nNăm XB	2020\r\nTrọng lượng (gr)	280\r\nKích Thước Bao Bì	20 x 14.5 cm\r\nSố trang	244\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	•	Đồ Chơi Cho Bé - Giá Cực Tốt\r\n•	Nhã Nam\r\n•	RƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\n\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng\r\n\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\r\n“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” - Booklist\r\n“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.” - The National\r\nHãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.\r\nCó hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.\r\nMở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.\r\nTÁC GIẢ:\r\nJOSÉ MAURO DE VASCONCELOS (1920-1984) là nhà văn người Brazil. Sinh ra trong một gia đình nghèo ở ngoại ô Rio de Janeiro, lớn lên ông phải làm đủ nghề để kiếm sống. Nhưng với tài kể chuyện thiên bẩm, trí nhớ phi thường, trí tưởng tượng tuyệt vời cùng vốn sống phong phú, José cảm thấy trong mình thôi thúc phải trở thành nhà văn nên đã bắt đầu sáng tác năm 22 tuổi. Tác phẩm nổi tiếng nhất của ông là tiểu thuyết mang màu sắc tự truyện Cây cam ngọt của tôi. Cuốn sách được đưa vào chương trình tiểu học của Brazil, được bán bản quyền cho hai mươi quốc gia và chuyển thể thành phim điện ảnh. Ngoài ra, José còn rất thành công trong vai trò diễn viên điện ảnh và biên kịch.\r\n\r\n'),
(16, 'Vầng Trăng Máu', 1, 120, 102, 100, 'vang_trang_mau.jpg', 'Thông tin sản phẩm\r\nMã hàng	8935278602361\r\nTên Nhà Cung Cấp	Saigon Books\r\n\r\nTác giả	David Grann\r\nNXB	NXB Văn hóa - Văn nghệ\r\nNăm XB	2018\r\nTrọng lượng (gr)	350\r\nKích Thước Bao Bì	14.5 x 20.5 x 1.7\r\nSố trang	348\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	•	Saigon Books\r\n\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng\r\n\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\r\nVầng Trăng Máu\r\nTrong bối cảnh thế giới ngày nay, khi các nguồn nhiên liệu tái tạo được tôn vinh là nguồn nhiên liệu phát triển bền vững, không phát thải và thân thiện với môi trường, dầu mỏ cùng các nhiên liệu hóa thạch khác bị buộc tội là thủ phạm gây ra biến đổi khí hậu cùng hàng loạt các cáo buộc khác về ô nhiễm môi trường. Tiềm ẩn trong giá trị của dầu mỏ là quyền lực, có thể tác động và quyết định cục diện chính trị toàn cầu. Lịch sử thế giới ghi nhận nhiều cuộc chiến tranh đẫm máu quy mô lớn nổ ra đểgiành quyền kiểm soát tài nguyên được ví là “vàng đen” này.\r\nVầng trăng máu là một công trình nghiên cứu khá tận tâm, cho thấy một góc nhìn về những cuộc chiến tranh giành dầu mỏ ở quy mô nhỏ, gói gọn trong phạm vi các ngôi làng quy hoạch dành cho những thổ dân bản địa châu Mỹ vào đầu những năm 1900. Cuốn sách phơi bày lịch sử đẫm máu trải dài nhiều thập kỷ, mà nạn nhân chính là một trong những bộ tộc thổ dân hùng mạnh nhất thời bấy giờ, những người Osage.\r\nBị Chính phủ Mỹ buộc rời khỏi vùng đất rộng lớn màu mỡ sau cuộc Nội chiến, người Osage phải ly hương và định cư trên một vùng đất mới khô cằn không sức sống. Nhờ nguồn tài nguyên dầu mỏ nằm dưới những làng định cư này, trong cơn sốt dầu mỏ trên khắp nước Mỹ, người Osage trở thành những cư dân giàu có nhất thế giới. Từ cuộc sống săn bắt trong những căn lều gỗ nhỏ, từ gia sản gần như là hai bàn tay trắng, người Osage bỗng chốc có người hầu kẻ hạ, có xe hơi, dinh thự và tất cả những vật phẩm xa xỉ nhất thời bấy giờ. Dầu mỏ được coi như điềm phúc bất ngờ được ban tặng bởi Đấng tối cao mà người Osage luôn kính sợ, nhưng họ không ngờ rằng, nó cũng chính là điềm báo chết chóc bao trùm lên vận mệnh của toàn bộ tộc.\r\nThông qua cuốn sách này, bạn đọc sẽ có thêm hiểu biết về những trang lịch sử đã bị xé nát một cách thô bạo, những con người vô tội bị đẩy ra bên rìa xã hội – không được công nhận, không được bảo vệ, không làm gì sai nhưng vẫn phải chịu ngược đãi, phân biệt và không được quyền đòi “công lý”. Như tựa đề của mục cuối cùng khép lại cuốn sách, đây quả thật là “lời khóc than của máu”!\r\n\r\n \r\n'),
(17, 'Làm Bạn Với Bầu Trời ', 1, 110, 88, 100, 'untitled-2_44.jpg', 'Thông tin sản phẩm\r\nMã hàng	8934974164135\r\nTên Nhà Cung Cấp	NXB Trẻ\r\n\r\nTác giả	Nguyễn Nhật Ánh\r\n\r\nNXB	NXB Trẻ\r\nNăm XB	2019\r\nTrọng lượng (gr)	300\r\nKích Thước Bao Bì	13 x 20 x 1.1\r\nSố trang	220\r\nHình thức	Bìa Mềm\r\nSản phẩm hiển thị trong	•	Nguyễn Nhật Ánh\r\n•	RƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU\r\n\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Tiểu thuyết bán chạy của tháng\r\n\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\r\nLàm Bạn Với Bầu Trời\r\nMột câu chuyện giản dị, chứa đầy bất ngờ cho tới trang cuối cùng. Và đẹp lộng lẫy, vì lòng vị tha và tình yêu thương, khiến mắt rưng rưng vì một nỗi mừng vui hân hoan. Cuốn sách như một đốm lửa thắp lên lòng khát khao sống tốt trên đời.\r\nViết về điều tốt đã không dễ, viết sao cho người đọc có thể đón nhận đầy cảm xúc tích cực, và muốn được hưởng, được làm những điều tốt dù nhỏ bé... mới thật là khó. Làm bạn với bầu trời của Nguyễn Nhật Ánh đã làm được điều này.\r\nNhư nhà văn từng phát biểu “...điểm mạnh của văn chương nằm ở khả năng thẩm thấu. Bằng hình thức đặc thù của mình, văn chương góp phần mài sắc các ý niệm đạo đức nơi người đọc một cách vô hình. Bồi đắp tâm hồn và nhân cách một cách âm thầm và bền bỉ, đó là chức năng gốc rễ của văn chương, đặc biệt là văn chương viết cho thanh thiếu niên.”\r\n\r\n \r\n');

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
(16, 'Rachel', '123', 'hangntkookie97@gmail.com', '0988697902', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
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
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
