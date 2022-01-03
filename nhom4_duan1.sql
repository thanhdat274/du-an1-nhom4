-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2021 lúc 03:15 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom4_duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name_brand` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name_brand`, `image`, `show_menu`) VALUES
(4, 'Louis Vuitton', '', 1),
(5, 'CHANEL', '', 1),
(6, 'PRADA', '', 1),
(7, 'GUCCI', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `show_menu`) VALUES
(3, 'Áo nam', 1),
(4, 'Quần nam', 1),
(5, 'Phụ Kiện ', 1),
(7, 'Thắt Lưng', 1),
(8, 'Cà Vạt', 1),
(9, 'Giày Nam', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailcmt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avtcmt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://localhost/nhom4/public/uploads/avtcmt.png',
  `id_sp` int(11) DEFAULT NULL,
  `contents` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite_products`
--

CREATE TABLE `favorite_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favorite_products`
--

INSERT INTO `favorite_products` (`id`, `user_id`, `product_id`, `created_at`) VALUES
(7, 16, 57, '2021-12-17 18:30:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone_number`, `subject_name`, `note`, `created_at`) VALUES
(6, 'Nguyen Dac Phuong', 'dacphuongotp@gmail.com', '+84969645534', 'dsadasdas', 'sadasdasdada', '2021-12-29 00:00:00'),
(7, '255', 'trongndph13723@fpt.edu.vn', '0963209332', 'qsa', 'qưewe', '1212-12-12 00:00:00'),
(8, 'Admin1', 'admin1@gmail.com', '0969645534', 'adas', 'sdsadsads', '2021-12-06 04:23:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `news_name`, `content`, `news_img`, `update_at`, `created_at`) VALUES
(9, 'Khám phá bộ sưu tập phụ kiện bằng da xịn xò của DOLO Men', '\"Thời trang cho các quý ông thực thụ\" chính là tôn chỉ của DOLO Men, một trong những thương hiệu thời trang phụ kiện nam bằng da cao cấp nổi bật trong làng thời trang Việt. Trong suốt hành trình của mình, DOLO Men không ngừng sáng tạo, khơi nguồn cảm hứng thời trang với những thiết kế mang tính nghệ thuật cao.\r\n\r\nKhám phá bộ sưu tập phụ kiện bằng da xịn xò của DOLO Men - Ảnh 1.\r\nDOLO Men phong cách quý ông thực thụ\r\n\r\nNhững thiết kế của DOLO Men mang tinh thần thời thượng, bắt kịp trào lưu hiện đại nhưng vẫn tôn vinh những nét đẹp hoài cổ, linh hồn của thời trang châu Âu từ các thế kỷ trước. Sự sang trọng, chuyên nghiệp được thể hiện trong từng tấm da thuộc và mũi chỉ khâu tỉ mỉ. Với bộ sưu tập mới này, DOLO Men đem đến những mẫu phụ kiện mà bất cứ người đàn ông thành đạt nào cũng cần phải có: những đôi giày da, thắt lưng da, cặp/ túi xách, ví da, clutch…\r\n\r\nNgoài việc đề cao sự nam tính và sang trọng của các quý ông, điểm khác biệt trong bộ sưu tập DOLO Men lần này chính là luồng gió năng động và trẻ trung được thổi hồn vào. Các thiết kế là giao thoa giữa thời trang cổ điển bất biến và hơi thở đương đại tràn ngập sự tươi trẻ. DOLO Men đã thêm thắt những chi tiết phá cách giúp các thiết kế chuẩn mực thoát khỏi lối mòn nhàm chán.\r\n\r\nKhám phá bộ sưu tập phụ kiện bằng da xịn xò của DOLO Men - Ảnh 2.\r\nCổ điển cùng tông màu nâu\r\n\r\nMột quy tắc bất di bất dịch khi phối phụ kiện da chính là phải đồng đều trong chất liệu và màu sắc để tạo nên tổng thể hài hòa. Với những quý ông yêu thích nét truyền thống cổ điển thì giày tây vân gỗ chất liệu da bò DOLO Men cùng các phụ kiện tone nâu chính là một sự lựa chọn hoàn hảo. Những phụ kiện này không bao giờ lỗi mốt, phù hợp cho những ngày đi làm hay các buổi gặp đối tác quan trọng, giúp các chàng xây dựng được hình ảnh lịch lãm và chuyên nghiệp.\r\n\r\n\r\n', 'uploads/61bdc48f7217f-tintuc1.jpg', '2021-12-18', '2021-12-18'),
(10, 'Hermès Xuân Hè 2022: Khi nhà mốt số một ưa chuộng những số “2”', 'Cho mùa Xuân - Hè 2022, NTK Véronique Nichanian đã đem tới một BST thật sự lạc quan, bất chấp tiết trời ẩm ướt của mùa xuân ôn đới.\r\n\r\nHermès Xuân Hè 2022: Khi nhà mốt số một ưa chuộng những số “2” - Ảnh 1.\r\nBST thời trang nam mới từ Hermès tiết chế đến bất ngờ khi chỉ bao gồm 41 mẫu - và theo lời Nichanian, bà \"không muốn có quá nhiều quần áo\" và thay vào đó, chỉ muốn đem tới những thứ phù hợp và cần thiết nhất. Trở lại với khoảng sân đá đẹp đẽ của Mobilier National - cơ quan lưu trữ nội thất và đồ đạc của hoàng gia Pháp sau 2 năm vắng bóng - những người mẫu xuất hiện và diện loạt phục trang xuân - hè mới nhất để rồi nhận về vô số những lời tán dương từ chuyên gia và giới mộ điệu ngay sau show trình diễn. Nhiều người có thể coi đây là tín hiệu tích cực và lạc quan từ Hermès khi nhà mốt dường như đã sẵn sàng để đưa những giá trị thẩm mỹ tươi đẹp và tích cực trở lại với cuộc sống thường nhật.\r\n\r\nKhi tiểu tiết làm nên chuyện\r\n\r\n\"Một bí mật nhỏ nhé: Người ta chỉ có thể nhìn thấu mọi thứ bằng trái tim, bởi những điều quan trọng thường vô hình trước đôi mắt.\" - trích Hoàng Tử Bé, Antoine de Saint-Exupéry.\r\n\r\nChẳng phải tự nhiên mà ký giả Luke Leitch lại sử dụng trích dẫn trên để nói về BST Xuân - Hè 2022 của Hermès. BST thoạt trông thật đơn giản, nhưng nếu quan sát nó đủ lâu, những nét chấm phá lạ lùng sẽ dần được lộ ra như một trò chơi Escape Room kỳ lạ, nơi các tín đồ thời trang sẽ dần tìm thấy những mảnh thú vị được khéo léo cài cắm trong từng món phục trang. Đó hẳn cũng là lý do để Nichanian đặt tên BST là \"Double Game\".\r\n\r\nHermès Xuân Hè 2022: Khi nhà mốt số một ưa chuộng những số “2” - Ảnh 2.\r\nBST sử dụng bảng màu rạng rỡ, thanh lịch với trắng hồng, vàng hoàng yến, xanh ngọc sáng và nhiều sắc độ trung tính cho mùa xuân - hè sắp tới. Hầu hết các món đồ của BST lần này nói không với monotone nhàm chán, thay vào đó sử dụng 2 tông màu trên áo khoác (jacket mỏng nhẹ cho tiết trời xuân hay áo khoác đi đường dày dặn để tránh những cơn mưa bất chợt) hay áo cardigan len dệt kim dày dặn chuyển tông màu từ tím nhạt sang xanh biển.\r\n\r\n\r\nHermès Xuân Hè 2022: Khi nhà mốt số một ưa chuộng những số “2” - Ảnh 3.\r\nKhông chỉ màu sắc, những đường nét trong thiết kế cũng gây hứng thú cho giới mộ điệu như chiếc áo khoác parka có thể mặc đổi chiều phối túi da đẹp mắt được phối với quần short và thắt lưng sợi được cố định bằng những nút buộc. Mảng phụ kiện cũng được tập trung cho BST lần này khi một lượng lớn túi xách được thêm vào mà đặc biệt nhất là chiếc Bolide được tạo hình giống với phần cứng của một chiếc ván trượt có thể kết hợp hoàn hảo với boots vải bố bền bỉ.\r\n\r\nVới bất cứ món đồ nào trong runway năm nay, con số 2 đều hiện diện như một lẽ hiển nhiên: Hai chất liệu như da pha trên vải kỹ thuật, hai tông màu từ từ chuyển qua - lại trên cùng một nền vải, hai công dụng thú vị của cùng một món đồ, hai diện mạo có thể dễ dàng nhận ra của một chiếc túi.\r\n\r\n', 'uploads/61bdc5be4f6de-tintuc2.jpg', '2021-12-18', '2021-12-18'),
(11, 'Chuỗi sự kiện tri ân cực “khủng” của thương hiệu thời trang nam cao cấp Santino mừng sinh nhật 7 tuổi', 'Chào đón sự kiện sinh nhật 7 tuổi, Santino hé lộ chuỗi sự kiện tri ân khách hàng cùng nhiều phần quà hấp dẫn không thể bỏ lỡ vào tháng 6 này.\r\n\r\nMang trong mình hơi thở thời trang Ý, Santino là thương hiệu thời trang nam đẳng cấp với phong cách chuẩn quốc tế. Gia nhập thị trường vào năm 2015, tính đến hiện tại, Santino đã có 27 cửa hàng trên toàn quốc và là một trong số ít thương hiệu có cửa hàng tại nước ngoài. Với hướng đi trở thành một trong những thương hiệu dẫn đầu về phong cách, Santino đã khẳng định vị thế của mình trên thị trường thời trang Việt nói chung và thời trang dành riêng cho phái mạnh nói riêng.\r\n\r\nĐể tạo nên thành công đó, không thể không nhắc đến chất lượng sản phẩm và sự sáng tạo trong từng set đồ. Với tôn chỉ luôn đặt sự hài lòng của khách hàng lên hàng đầu, Santino luôn không ngừng nâng cao chất lượng dịch vụ, sẵn sàng lắng nghe và ghi nhận mọi phản hồi từ phía khách hàng. Các sản phẩm của Santino đa dạng về mẫu mã, thiết kế tinh tế, đơn giản mà đẳng cấp. Không khó hiểu khi thương hiệu thời trang Santino đã có bước phát triển mạnh mẽ, trở thành một trong những thương hiệu dẫn đầu xu hướng thời trang nam.\r\n\r\nChuỗi sự kiện tri ân cực “khủng” của thương hiệu thời trang nam cao cấp Santino mừng sinh nhật 7 tuổi - Ảnh 1.\r\nSantino cũng luôn tin rằng, sự ủng hộ và tin tưởng của khách hàng chính là nguồn động lực lớn lao giúp Santino liên tục phát triển. Chuỗi sự kiện mừng sinh nhật 7 tuổi của thương hiệu Santino là lời tri ân tới tất cả các khách hàng đã luôn sát cánh cùng Santino trong thời gian vừa qua.\r\n\r\nKhởi đầu chuỗi sự kiện đặc biệt, các khách hàng sẽ có nhiều cơ hội nhận được các món quà có giá trị như nhận ngay iPhone 12 Pro Max khi mua sắm online tại Santino và Santino Outlets trong tháng 6/2021. Santino cũng dành nhiều ưu đãi cho các khách hàng trên Shopee với chuỗi Flash Sale giảm giá lên tới 50%++ các sản phẩm. Các chương trình Flash Sale sẽ kéo dài 1- 2 tiếng mỗi ngày để các khách hàng thoải mái lựa chọn được những món đồ ưng ý cho bản thân và gia đình. Không những vậy, khách hàng còn được giảm thêm 7% cho tổng hóa đơn mua hàng online trong 6 tháng (hoặc giảm thêm 17% cho hóa đơn mua hàng trên 1 triệu đồng) kèm tặng thêm một Voucher 1000 SAN sử dụng cho lần mua hàng kế tiếp.\r\n\r\nChuỗi sự kiện tri ân cực “khủng” của thương hiệu thời trang nam cao cấp Santino mừng sinh nhật 7 tuổi - Ảnh 2.\r\nNgoài các phần quà giá trị khủng và chương trình giảm giá hấp dẫn nhất từ trước đến nay, các khách hàng của Santino còn có cơ hội tham gia Vòng quay may mắn để nhận quà sinh nhật miễn phí khi tham gia chương trình.\r\n\r\nChương trình tri ân khách hàng mừng sinh nhật 7 tuổi của thương hiệu thời trang Santino được dự báo là chương trình bùng nổ và không thể bỏ lỡ trong tháng 6 này. Chương trình không chỉ đặt dấu mốc trưởng thành của thương hiệu thời trang Santino mà còn đánh dấu bước chuyển mình phát triển vượt bậc trong tương lai. Tiết lộ về định hướng sắp tới, Santino dự định sẽ đưa những chất liệu vải tự nhiên, thân thiện với môi trường vào các sản phẩm thời trang của người tiêu dùng Việt.\r\n\r\nChuỗi sự kiện tri ân cực “khủng” của thương hiệu thời trang nam cao cấp Santino mừng sinh nhật 7 tuổi - Ảnh 3.\r\nĐặc biệt hơn, trong thời gian diễn ra sự kiện sinh nhật 7 tuổi, thương hiệu thời trang Santino cũng trình làng bộ sưu tập Mini Collection Summer 2021 với chủ đề \"Back To The Natural World\". Các sản phẩm trong bộ sưu tập 2021 của Santino sử dụng các chất liệu chủ đạo là Bamboo, Modal và Cotton. Với ưu điểm của sợi vải Bamboo như khả năng hấp thụ tốt, thấm hút mồ hôi tốt hơn gấp 3 - 4 lần sợi vải thông thường và giúp điều hòa thân nhiệt, đây là chất liệu cực kỳ phù hợp cho mùa hè nóng bức sắp tới. Bên cạnh đó, chất liệu vải Bamboo cũng có công dụng tối ưu trong việc kháng khuẩn khử mùi và an toàn tuyệt đối với người sử dụng vì vải tre không chứa bất kỳ loại chất hóa học nào.\r\n\r\nViệc sử dụng các chất liệu thân thiện với môi trường cũng là sự khẳng định trách nhiệm của thương hiệu đối với xã hội và đưa tinh hoa của thiên nhiên đến từng sản phẩm. Đem lại trải nghiệm khác biệt cho khách hàng. Những thiết kế của Santino vẫn giữ lại sự đơn giản, tinh tế trong từng đường kim mũi chỉ, phù hợp với quý ông Việt.\r\n\r\nChuỗi sự kiện tri ân cực “khủng” của thương hiệu thời trang nam cao cấp Santino mừng sinh nhật 7 tuổi - Ảnh 4.\r\nTrước thời điểm đại dịch Covid-19 đang hoành hành, thương hiệu thời trang Santino vẫn luôn giữ vững quan điểm của mình, đem đến các sản phẩm tốt nhất với giá thành hợp lý nhất.\r\n\r\nĐừng bỏ lỡ sự kiện có một không hai bùng nổ nhất mùa hè này của Santino bằng cách bấm quan tâm sự kiện để được liên tục cập nhật các thông tin mới nhất.\r\n\r\nChi tiết sự kiện, các khách hàng có thể theo dõi tại:\r\n\r\nWebsite: http://santino.com.vn/.\r\n\r\nFanpage: https://www.facebook.com/SantinoVietnam.', 'uploads/61bdc5e2cf435-tintuc4.jpg', '2021-12-18', '2021-12-18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_ttdh` int(11) NOT NULL DEFAULT 1,
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `payment_method` int(11) NOT NULL DEFAULT 1,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `id_ttdh`, `order_id`, `customer_name`, `customer_phone_number`, `customer_email`, `customer_address`, `total_price`, `payment_method`, `note`, `reason`, `created_at`, `updated_at`) VALUES
(33, NULL, 3, 0, 'Nguyen Dac Phuong', '+84969645534', 'dacphuongotp@gmail.com', 'Tỳ Điện - Phú Hòa - Lương Tài', 1325432, 1, '', '', '2021-12-13 14:31:16', '2021-12-17 14:34:14'),
(34, NULL, 1, 0, 'Admin', '0969645534', 'admin@gmail.com', 'Bắc NInh', 1515000, 1, '', '', '2021-12-18 11:17:41', '2021-12-18 11:17:41'),
(35, NULL, 1, 0, 'Nguyen Dac Phuong', '+84969645534', 'dacphuongotp@gmail.com', 'Tỳ Điện - Phú Hòa - Lương Tài', 3510000, 1, 'đấ', '', '2021-12-18 11:23:47', '2021-12-18 11:23:47'),
(36, NULL, 1, 0, '', '+84969645534', 'dacphuongotp@gmail.com', 'Tỳ Điện - Phú Hòa - Lương Tài', 540000, 1, '', '', '2021-12-18 12:38:00', '2021-12-18 12:38:00'),
(37, NULL, 1, 0, 'Nguyen Dac Phuong', '+84969645534', 'dacphuongotp@gmail.com', 'Tỳ Điện - Phú Hòa - Lương Tài', 4670000, 1, 'dấdsa', '', '2021-12-18 12:23:01', '2021-12-18 12:23:01'),
(38, NULL, 1, 0, 'Nguyen Dac Phuong', '+84969645534', 'dacphuongotp@gmail.com', 'Tỳ Điện - Phú Hòa - Lương Tài', 1940000, 1, 'đa', '', '2021-12-18 12:47:02', '2021-12-18 12:47:02'),
(39, NULL, 1, 0, 'Nguyen Dac Phuong', '+84969645534', 'dacphuongotp@gmail.com', 'Tỳ Điện - Phú Hòa - Lương Tài', 270000, 1, '', '', '2021-12-18 12:43:07', '2021-12-18 12:43:07'),
(40, NULL, 1, 0, 'Nguyen Dac Phuong', '+84969645534', 'dacphuongotp@gmail.com', 'Tỳ Điện - Phú Hòa - Lương Tài', 1970000, 1, '', '', '2021-12-18 12:39:09', '2021-12-18 12:39:09'),
(41, NULL, 1, 0, 'Nguyen Dac Phuong', '+84969645534', 'dacphuongotp@gmail.com', 'Tỳ Điện - Phú Hòa - Lương Tài', 2340000, 1, '', '', '2021-12-18 12:12:12', '2021-12-18 12:12:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `product_id`, `name`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(33, 33, '', 3, 345000, NULL, NULL),
(33, 34, '', 1, 290000, NULL, NULL),
(33, 35, '', 1, 432, NULL, NULL),
(34, 33, '', 1, 345000, NULL, NULL),
(34, 37, '', 1, 300000, NULL, NULL),
(34, 38, '', 1, 270000, NULL, NULL),
(34, 43, '', 1, 600000, NULL, NULL),
(35, 57, '', 13, 270000, NULL, NULL),
(36, 38, '', 2, 270000, NULL, NULL),
(37, 37, '', 3, 300000, NULL, NULL),
(37, 39, '', 1, 370000, NULL, NULL),
(37, 44, '', 2, 1400000, NULL, NULL),
(37, 55, '', 1, 600000, NULL, NULL),
(38, 38, '', 2, 270000, NULL, NULL),
(38, 56, '', 1, 1400000, NULL, NULL),
(39, 38, '', 1, 270000, NULL, NULL),
(40, 37, '', 1, 300000, NULL, NULL),
(40, 38, '', 1, 270000, NULL, NULL),
(40, 44, '', 1, 1400000, NULL, NULL),
(41, 37, '', 1, 300000, NULL, NULL),
(41, 38, '', 1, 270000, NULL, NULL),
(41, 39, '', 1, 370000, NULL, NULL),
(41, 44, '', 1, 1400000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `brand_id`, `title`, `price`, `number`, `discount`, `view`, `thumbnail`, `description`, `status`, `created_at`, `updated_at`, `deleted`) VALUES
(37, 3, 4, 'Áo Thời Trang', 300000, 55, 249000, 3, 'uploads/61bdb0b95be51-1.jpg', 'Áo Thun Lacoste Men’s Form Slim Fit Màu Xanh Đen thiết kế kiểu dáng trẻ trung, hiện đại đến từ thương hiệu Lacoste nổi tiếng của Mỹ. Với chiếc áo thun thời trang này bạn dễ dàng kết hợp với nhiều trang phục khác nhau để trở nên nổi bật hơn.\r\n\r\n\r\n\r\nVề thương hiệu Lacoste nổi tiếng\r\nLacoste là thương hiệu thời trang thể thao mang bản sắc Pháp cổ điển kết hợp với tinh thần hiện đại kiểu Mỹ, dễ nhận biết với phong cách lịch lãm điển hình và biểu tượng cá sấu trên ngực áo.\r\nĐược biết đến là một thương hiệu thời trang Pháp có nguồn gốc ra đời gắn liền với nước Mỹ. Thương hiệu Lacoste tiên phong trong việc kết hợp tinh thần thể thao của Mỹ, với sự lịch lãm truyền thống của người Pháp. Lacoste là thương hiệu nổi tiếng nhất tại Hoa Kỳ ở thập niên 70, và trở thành một trong những “biểu tượng” của phong cách Preppy suốt những năm 1980.\r\nĐặc điểm nổi bật của Áo Thun Lacoste Men’s Form Slim Fit Màu Xanh Đen\r\n- Áo được làm từ chất vải cotton thoáng mát mang lại cảm giác thoải mái cho người mặc.\r\n- Form áo chuẩn đẹp từng đường kim mũi chỉ hài lòng ngay cả với khách hàng khó tínht.\r\n\r\n- Phần cổ áo thiết kế nổi bật với đường viền kẻ màu trắng xám nổi bật. Áo cổ bẻ, tay ngắn tạo nên phong cách thời trang trẻ trung, năng động.\r\n\r\n- Màu sắc đơn giản dễ phối đồ với quần short, jean, quần âu...', 1, '2021-12-18 10:17:58', '2021-12-18 10:17:58', NULL),
(38, 3, 5, 'Áo Thun Nam', 270000, 14, 249000, 3, 'uploads/61bdb1009fd52-17.jpg', 'Áo Thun Lacoste Men’s Form Slim Fit Màu Xanh Đen thiết kế kiểu dáng trẻ trung, hiện đại đến từ thương hiệu Lacoste nổi tiếng của Mỹ. Với chiếc áo thun thời trang này bạn dễ dàng kết hợp với nhiều trang phục khác nhau để trở nên nổi bật hơn.\r\n\r\n\r\n\r\nVề thương hiệu Lacoste nổi tiếng\r\nLacoste là thương hiệu thời trang thể thao mang bản sắc Pháp cổ điển kết hợp với tinh thần hiện đại kiểu Mỹ, dễ nhận biết với phong cách lịch lãm điển hình và biểu tượng cá sấu trên ngực áo.\r\n\r\n\r\n\r\nĐược biết đến là một thương hiệu thời trang Pháp có nguồn gốc ra đời gắn liền với nước Mỹ. Thương hiệu Lacoste tiên phong trong việc kết hợp tinh thần thể thao của Mỹ, với sự lịch lãm truyền thống của người Pháp. Lacoste là thương hiệu nổi tiếng nhất tại Hoa Kỳ ở thập niên 70, và trở thành một trong những “biểu tượng” của phong cách Preppy suốt những năm 1980.\r\n\r\nĐặc điểm nổi bật của Áo Thun Lacoste Men’s Form Slim Fit Màu Xanh Đen\r\n- Áo được làm từ chất vải cotton thoáng mát mang lại cảm giác thoải mái cho người mặc.\r\n\r\n- Form áo chuẩn đẹp từng đường kim mũi chỉ hài lòng ngay cả với khách hàng khó tínht.\r\n\r\n- Phần cổ áo thiết kế nổi bật với đường viền kẻ màu trắng xám nổi bật. Áo cổ bẻ, tay ngắn tạo nên phong cách thời trang trẻ trung, năng động.\r\n\r\n- Màu sắc đơn giản dễ phối đồ với quần short, jean, quần âu...', 1, '2021-12-18 10:28:59', '2021-12-18 10:28:59', NULL),
(39, 3, 5, 'Áo Thun Lacoste Men’s Form Slim Fit ', 370000, 21, 300000, 0, 'uploads/61bdb14779425-ao5.png', 'Áo Thun Lacoste Men’s Form Slim Fit Màu Xanh Đen thiết kế kiểu dáng trẻ trung, hiện đại đến từ thương hiệu Lacoste nổi tiếng của Mỹ. Với chiếc áo thun thời trang này bạn dễ dàng kết hợp với nhiều trang phục khác nhau để trở nên nổi bật hơn.\r\n\r\n\r\n\r\nVề thương hiệu Lacoste nổi tiếng\r\nLacoste là thương hiệu thời trang thể thao mang bản sắc Pháp cổ điển kết hợp với tinh thần hiện đại kiểu Mỹ, dễ nhận biết với phong cách lịch lãm điển hình và biểu tượng cá sấu trên ngực áo.\r\n\r\n\r\n\r\nĐược biết đến là một thương hiệu thời trang Pháp có nguồn gốc ra đời gắn liền với nước Mỹ. Thương hiệu Lacoste tiên phong trong việc kết hợp tinh thần thể thao của Mỹ, với sự lịch lãm truyền thống của người Pháp. Lacoste là thương hiệu nổi tiếng nhất tại Hoa Kỳ ở thập niên 70, và trở thành một trong những “biểu tượng” của phong cách Preppy suốt những năm 1980.\r\n\r\nĐặc điểm nổi bật của Áo Thun Lacoste Men’s Form Slim Fit Màu Xanh Đen\r\n- Áo được làm từ chất vải cotton thoáng mát mang lại cảm giác thoải mái cho người mặc.\r\n\r\n- Form áo chuẩn đẹp từng đường kim mũi chỉ hài lòng ngay cả với khách hàng khó tínht.\r\n\r\n- Phần cổ áo thiết kế nổi bật với đường viền kẻ màu trắng xám nổi bật. Áo cổ bẻ, tay ngắn tạo nên phong cách thời trang trẻ trung, năng động.\r\n\r\n- Màu sắc đơn giản dễ phối đồ với quần short, jean, quần âu...', 1, '2021-12-18 11:39:00', '2021-12-18 11:39:00', NULL),
(40, 3, 7, 'Áo Polo Versace Logo', 1350000, 13, 1300000, 0, 'uploads/61bdb64721567-4.jpg', 'Về thương hiệu Versace nổi tiếng\r\nTên đầy đủ của thương hiệu Versace là Gianni Versace S.p.A., đây là một hãng thời trang cao cấp nổi tiếng của Ý được thành lập bởi nhà thiết kế thời trang nổi tiếng Gianni Versace vào năm 1978. Versace được coi là một trong những thương hiệu lớn trên thế giới với nhiều sản phẩm từ quần áo, quần jean đến váy, giày dép, phụ kiện... dành cho cả nam và nữ.\r\n\r\n\r\n\r\nThương hiệu Versace với logo hình đầu quỷ Medusa là minh họa một cách tinh tế hình ảnh một công ty thời trang với những thiết kế quyến rũ, gợi cảm, mang tính đột phá và độc đáo. Versace hiện nay có đến khoảng 81 cửa hàng trên toàn thế giới với quy mô rộng lớn.\r\n\r\nĐặc điểm nổi bật Áo Polo Versace Logo Màu Trắng Size M\r\nÁo Polo Versace Logo Màu Trắng Size M được thiết kế cổ nhọn, tay áo ngắn và một chiếc cúc ba nút, áo ở ngực được in hình logo quen thuộc của thương hiệu Versace. ', 0, '2021-12-18 11:38:22', '2021-12-18 11:38:22', NULL),
(41, 9, 6, 'Giày Tây Lười Da Nam NC02', 850000, 21, 690000, 0, 'uploads/61bdb6dec064e-giay1.png', '- Điểm nổi bật:  Sản phẩm hoàn hảo từ thiết kế, kiểu dáng cho tới chất liệu. Chất da nguyên miếng nhập khẩu tạo nên vẻ bóng lì rất hút mắt và sang trọng khi đặt cạnh những chất da khác. Từng đường kim mũi chỉ trên thân giày đều đặn, chắc chắn, cho độ bền ở mức cao nhất. Đế giày kết hợp cao su chóng trơn trượt và đế phíp đẳng cấp đẹp mắt. \r\n\r\n- Điểm khác biệt: Sản phẩm Giày mọi nam MWC NAMO- 6625 mang vẻ đẹp đầy quyền uy mà vẫn thời thượng, hiện đại. Khi sử dụng, bạn sẽ cực kỳ tự tin với một đôi giày êm chân và không gây bức bí khó chịu. \r\n\r\n- Mix đồ: Thiết kế này rất \"dễ tính\" khi phối đồ. Bạn có thể mix giày cùng trang phục trẻ trung như sơ mi dáng ôm và quần chinos có độ dài trên mắt cá chân. Những bộ suit may đo lịch lãm cũng sẽ thêm phần hiện đại khi được phối cùng sản phẩm này.', 1, '2021-12-18 11:30:24', '2021-12-18 11:30:24', NULL),
(42, 9, 5, 'Giày Tây Nam', 2600000, 33, 1990000, 0, 'uploads/61bdb73a167ca-giay4.png', '- Điểm nổi bật:  Sản phẩm hoàn hảo từ thiết kế, kiểu dáng cho tới chất liệu. Chất da nguyên miếng nhập khẩu tạo nên vẻ bóng lì rất hút mắt và sang trọng khi đặt cạnh những chất da khác. Từng đường kim mũi chỉ trên thân giày đều đặn, chắc chắn, cho độ bền ở mức cao nhất. Đế giày kết hợp cao su chóng trơn trượt và đế phíp đẳng cấp đẹp mắt. \r\n\r\n- Điểm khác biệt: Sản phẩm Giày mọi nam MWC NAMO- 6629 mang vẻ đẹp đầy quyền uy mà vẫn thời thượng, hiện đại. Khi sử dụng, bạn sẽ cực kỳ tự tin với một đôi giày êm chân và không gây bức bí khó chịu. \r\n\r\n- Mix đồ: Thiết kế này rất \"dễ tính\" khi phối đồ. Bạn có thể mix giày cùng trang phục trẻ trung như sơ mi dáng ôm và quần chinos có độ dài trên mắt cá chân. Những bộ suit may đo lịch lãm cũng sẽ thêm phần hiện đại khi được phối cùng sản phẩm này.', 1, '2021-12-18 11:02:26', '2021-12-18 11:02:26', NULL),
(43, 9, 6, 'Giày Tây Có Dây 2021 ', 600000, 313, 599000, 0, 'uploads/61bdb7d835e5d-giay2.png', '- Điểm nổi bật:  Sản phẩm hoàn hảo từ thiết kế, kiểu dáng cho tới chất liệu. Chất da nguyên miếng nhập khẩu tạo nên vẻ bóng lì rất hút mắt và sang trọng khi đặt cạnh những chất da khác. Từng đường kim mũi chỉ trên thân giày đều đặn, chắc chắn, cho độ bền ở mức cao nhất. Đế giày kết hợp cao su chóng trơn trượt và đế phíp đẳng cấp đẹp mắt. \r\n\r\n- Điểm khác biệt: Sản phẩm Giày mọi nam MWC NAMO- 6629 mang vẻ đẹp đầy quyền uy mà vẫn thời thượng, hiện đại. Khi sử dụng, bạn sẽ cực kỳ tự tin với một đôi giày êm chân và không gây bức bí khó chịu. \r\n\r\n- Mix đồ: Thiết kế này rất \"dễ tính\" khi phối đồ. Bạn có thể mix giày cùng trang phục trẻ trung như sơ mi dáng ôm và quần chinos có độ dài trên mắt cá chân. Những bộ suit may đo lịch lãm cũng sẽ thêm phần hiện đại khi được phối cùng sản phẩm này. ', 0, '2021-12-18 11:40:28', '2021-12-18 11:40:28', NULL),
(44, 9, 5, 'Giày Da Cao Cấp 2021', 1400000, 33, 1299000, 1, 'uploads/61bdb79ea909c-giay3.png', '- Điểm nổi bật:  Sản phẩm hoàn hảo từ thiết kế, kiểu dáng cho tới chất liệu. Chất da nguyên miếng nhập khẩu tạo nên vẻ bóng lì rất hút mắt và sang trọng khi đặt cạnh những chất da khác. Từng đường kim mũi chỉ trên thân giày đều đặn, chắc chắn, cho độ bền ở mức cao nhất. Đế giày kết hợp cao su chóng trơn trượt và đế phíp đẳng cấp đẹp mắt. \r\n\r\n- Điểm khác biệt: Sản phẩm Giày mọi nam MWC NAMO- 6629 mang vẻ đẹp đầy quyền uy mà vẫn thời thượng, hiện đại. Khi sử dụng, bạn sẽ cực kỳ tự tin với một đôi giày êm chân và không gây bức bí khó chịu. \r\n\r\n- Mix đồ: Thiết kế này rất \"dễ tính\" khi phối đồ. Bạn có thể mix giày cùng trang phục trẻ trung như sơ mi dáng ôm và quần chinos có độ dài trên mắt cá chân. Những bộ suit may đo lịch lãm cũng sẽ thêm phần hiện đại khi được phối cùng sản phẩm này.', 1, '2021-12-18 11:42:27', '2021-12-18 11:42:27', NULL),
(45, 4, 4, 'Quần Âu Nam 2021', 975000, 30, 950000, 0, 'uploads/61bdb85892bc2-qn1.png', 'Đặc điểm sản phẩm\r\nChất liệu Denim 98% cotton + 2% spandex\r\n\r\nKhả năng thấm hút tốt giúp giảm nhiệt và đem tới sự thoải mái tự nhiên cho người mặc\r\n\r\nCo giãn 4 chiều thoải mái, thoáng mát và không có cảm giác bị gò bó.\r\n\r\nĐộ bền cao\r\n\r\nMềm nhẹ, ít nhăn và dễ nhuộm màu\r\n\r\nPhom dáng suông dễ dàng phối đồ cùng áo sơ mi, áo thun, áo polo...\r\n\r\nYODY - Look good. Feel good.', 1, '2021-12-18 11:48:30', '2021-12-18 11:48:30', NULL),
(46, 4, 5, 'Quần Âu Màu Đen', 270000, 17, 240000, 0, 'uploads/61bdb8918fafb-qn2.png', 'Đặc điểm sản phẩm\r\nChất liệu Denim 98% cotton + 2% spandex\r\n\r\nKhả năng thấm hút tốt giúp giảm nhiệt và đem tới sự thoải mái tự nhiên cho người mặc\r\n\r\nCo giãn 4 chiều thoải mái, thoáng mát và không có cảm giác bị gò bó.\r\n\r\nĐộ bền cao\r\n\r\nMềm nhẹ, ít nhăn và dễ nhuộm màu\r\n\r\nPhom dáng suông dễ dàng phối đồ cùng áo sơ mi, áo thun, áo polo...\r\n\r\nYODY - Look good. Feel good.', 1, '2021-12-18 11:45:31', '2021-12-18 11:45:31', NULL),
(47, 4, 5, 'Quần Công Sở 2021', 1200000, 32, 990000, 0, 'uploads/61bdb8c6c302a-qn44.png', 'Đặc điểm sản phẩm\r\nChất liệu Denim 98% cotton + 2% spandex\r\n\r\nKhả năng thấm hút tốt giúp giảm nhiệt và đem tới sự thoải mái tự nhiên cho người mặc\r\n\r\nCo giãn 4 chiều thoải mái, thoáng mát và không có cảm giác bị gò bó.\r\n\r\nĐộ bền cao\r\n\r\nMềm nhẹ, ít nhăn và dễ nhuộm màu\r\n\r\nPhom dáng suông dễ dàng phối đồ cùng áo sơ mi, áo thun, áo polo...\r\n\r\nYODY - Look good. Feel good.', 1, '2021-12-18 11:38:32', '2021-12-18 11:38:32', NULL),
(48, 4, 4, 'Quần Âu FHC', 550000, 22, 499000, 0, 'uploads/61bdb8f5a596a-qn4.png', 'Đặc điểm sản phẩm\r\nChất liệu Denim 98% cotton + 2% spandex\r\n\r\nKhả năng thấm hút tốt giúp giảm nhiệt và đem tới sự thoải mái tự nhiên cho người mặc\r\n\r\nCo giãn 4 chiều thoải mái, thoáng mát và không có cảm giác bị gò bó.\r\n\r\nĐộ bền cao\r\n\r\nMềm nhẹ, ít nhăn và dễ nhuộm màu\r\n\r\nPhom dáng suông dễ dàng phối đồ cùng áo sơ mi, áo thun, áo polo...\r\n\r\nYODY - Look good. Feel good.', 1, '2021-12-18 11:25:33', '2021-12-18 11:25:33', NULL),
(49, 5, 4, 'Bộ 3 Sản PhẩmTất 2 Lớp GHC', 100000, 173, 99000, 0, 'uploads/61bdb9a5843e4-vonam1.png', 'Kháng Khuẩn – Khử Mùi\r\nSợi Cotton thấm hút, mềm mại, không bai dão\r\nÊm ái, dễ chịu khi đeo cả ngày dài\r\nThiết kế hoạ tiết kẻ tương phản ở cổ tất', 1, '2021-12-18 11:21:36', '2021-12-18 11:21:36', NULL),
(50, 5, 4, 'Tất nam', 100000, 33, 99000, 0, 'uploads/61bdb9cc3179a-vonam1.png', 'Kháng Khuẩn – Khử Mùi\r\nSợi Cotton thấm hút, mềm mại, không bai dão\r\nÊm ái, dễ chịu khi đeo cả ngày dài\r\nThiết kế hoạ tiết kẻ tương phản ở cổ tất', 1, '2021-12-18 11:00:37', '2021-12-18 11:00:37', NULL),
(51, 7, 5, 'Thắt Lưng Da Bò Cao Cấp', 1350000, 313, 1300000, 0, 'uploads/61bdba0cc1a4d-tl1.png', '• Chất liệu dây da bò sần nam tính, mạnh mẽ\r\n• Viền khóa màu bạc bằng hợp kim cao cấp\r\n• Thiết kế khóa trượt thời trang, tiện dụng\r\n• Đường chỉ may tỉ mỉ, chắc chắn\r\n• Kích thước (độ rộng dây x độ dài dây): 3,2 cm x 110 cm\r\n• Mặt khoá với hoạ tiết hình khối màu xanh lạ mắt, logo tinh tế, phù hợp với mọi loại trang phục, hoàn cảnh', 1, '2021-12-18 11:04:38', '2021-12-18 11:04:38', NULL),
(52, 7, 5, 'Thắt lưng nam mặt khóa tạo hình nổi da cá sấu D390-202002', 1350000, 33, 1300000, 0, 'uploads/61bdba40e1253-tl2.png', '• Chất liệu dây da bò sần nam tính, mạnh mẽ\r\n• Viền khóa màu vàng bằng hợp kim cao cấp\r\n• Thiết kế khóa trượt thời trang, tiện dụng\r\n• Đường chỉ may tỉ mỉ, chắc chắn\r\n• Kích thước (độ rộng dây x độ dài dây): 3,2 cm x 110 cm\r\n• Mặt khoá màu đen cùng hoạ tiết in 3d vân cá sấu xanh lạ mắt, logo tinh tế, phù hợp với mọi loại trang phục, hoàn cảnh', 1, '2021-12-18 11:56:38', '2021-12-18 11:56:38', NULL),
(53, 7, 5, 'Thắt lưng da nam cá sấu liền bản 4 cm DTA1600-08V-T-D', 1350000, 3131, 1300000, 0, 'uploads/61bdba6c3882a-tl4.png', '\r\n– Chất liệu da cá sấu thật 100%\r\n\r\n– Thiết kế vân da cá sấu trơn độc đáo, không trùng lặp, dễ dàng phối hợp nhiều loại trang phục thời trang\r\n\r\n– Mặt khóa màu vàng bằng hợp kim cao cấp chống hoen, ố, gỉ\r\n\r\n– Dây lưng da cá sấu liền\r\n\r\n– Kích thước (Độ rộng dây x độ dài dây): 4cm x 120 cm\r\n\r\n– Màu sắc: Đen\r\n\r\n– Sản xuất tại Tâm Anh\r\n\r\n– Bảo hành 12 tháng', 1, '2021-12-18 11:40:39', '2021-12-18 11:40:39', NULL),
(54, 7, 5, 'Thắt lưng nam quần Jean da bò nguyên miếng DJTANHZ-294-KHAKI', 1350000, 33, 1300000, 0, 'uploads/61bdba96d205f-tl3.png', '\r\n– Chất liệu da bò thật 100%\r\n\r\n– Màu sắc: Kaki\r\n\r\n– Mặt khóa sang trọng, đầu khoá vuông nam tính, hoạ tiết vân da lạ mắt, phù hợp mọi loại quần jean\r\n\r\n– Sản xuất tại đồ da Tâm Anh\r\n\r\n– Kích thước : 3,5cm x 110cm\r\n\r\n– Giá tốt nhất thị trường', 1, '2021-12-18 11:22:40', '2021-12-18 11:22:40', NULL),
(55, 8, 5, 'Cà Vạt Cao Cấp 2021', 600000, 223, 599000, 0, 'uploads/61bdbbb93268c-cv1.png', 'Vải lụa là một loại vải mịn, mỏng được dệt từ các sợi tơ tự nhiên. Các sợi tơ đó được lấy từ quá trình tạo kén của loài côn trùng như bướm, tằm, hoặc loài nhện,… Loại lụa tốt nhất được dệt từ tơ tằm. Đây là chất liệu có truyền thống lâu đời. Nó vốn chỉ dành cho tầng lớp quý tộc, thượng lưu của Trung Hoa thời cổ. Sau này vì ưu điểm của mình, nó đã chu du ra khắp năm Châu, bốn Bể. Để rồi trở thành loại chất liệu thịnh hành như ngày nay. Để không làm mất đi những giá trị vốn có của lụa, chúng tôi đã tìm kiếm những sợi lụa tuyệt hảo bậc nhất để dệt nên sản phẩm Cà Vạt Lụa Thượng Uyển. Qua đó gửi tới khách hàng thứ chất lượng của quý tộc.\r\n\r\nCà Vạt Lụa Thượng Uyển được dệt từ Lụa tơ tằm nguyên chất. Sau đó được đem đi nhuộm cùng hóa chất đặc chế, không kích ứng da hay gây hại cho người dùng cũng như môi trường. Vì được dệt bằng lụa tơ tằm tự nhiên nên sản phẩm cà vạt lụa của chúng tôi có những đặc tính ưu việt mà Lụa vốn có như:\r\n\r\nNhẻ, mỏng  và mềm mịn.\r\nKhi chạm vào có cảm giác mát chứ không lạnh, phù hợp với hầu hết thời tiết.\r\nKhông tích điện, cách nhiệt tốt.\r\nHút ẩm tốt, thoải mái không gây bí bách. Dù hoạt động mạnh ra mồ hôi nhiều không lo ngại sẽ bị ám mùi.\r\nCà Vạt Lụa Thượng Uyển\r\nSản phẩm của chúng tôi được dệt từ lụa tơ tằm tự nhiên Việt Nam. Những sợi lụa được chọn lọc kĩ càng. Sau đó đem dệt tại nhà máy tại Bảo Lộc trước khi mang đi in thủ công. Chúng tôi tìm kiếm những nghệ nhân lành nghề nhất để đảm bảo có thể cho ra đời những sản phẩm chất lượng với đường nét tinh xảo.\r\n\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nVới chất liệu lụa tơ tằm tự nhiên, đôi tất sẽ mang lại cảm giác thoải mái và dễ chịu cho người dùng. Đồng thời, giúp bạn có những bước chân vững chải, tự tin. Hãy đến Lụa Thượng Uyển gần nhất để chọn cho mình chiếc cà vạt phù hợp nhất. Hoặc bạn cũng có thể dành tặng sản phẩm này cho bạn bè, người thân nữa đấy.\r\n\r\nSản phẩm lụa tơ tằm cao cấp Lụa Thượng Uyển luôn bảo đảm mang đến cho bạn những sản phẩm chất lượng nhất.', 1, '2021-12-18 11:13:45', '2021-12-18 11:13:45', NULL),
(56, 8, 5, 'Cà Vạt Lụa', 1400000, 323, 1299000, 0, 'uploads/61bdbbe22215d-cv2.png', 'Vải lụa là một loại vải mịn, mỏng được dệt từ các sợi tơ tự nhiên. Các sợi tơ đó được lấy từ quá trình tạo kén của loài côn trùng như bướm, tằm, hoặc loài nhện,… Loại lụa tốt nhất được dệt từ tơ tằm. Đây là chất liệu có truyền thống lâu đời. Nó vốn chỉ dành cho tầng lớp quý tộc, thượng lưu của Trung Hoa thời cổ. Sau này vì ưu điểm của mình, nó đã chu du ra khắp năm Châu, bốn Bể. Để rồi trở thành loại chất liệu thịnh hành như ngày nay. Để không làm mất đi những giá trị vốn có của lụa, chúng tôi đã tìm kiếm những sợi lụa tuyệt hảo bậc nhất để dệt nên sản phẩm Cà Vạt Lụa Thượng Uyển. Qua đó gửi tới khách hàng thứ chất lượng của quý tộc.\r\n\r\nCà Vạt Lụa Thượng Uyển được dệt từ Lụa tơ tằm nguyên chất. Sau đó được đem đi nhuộm cùng hóa chất đặc chế, không kích ứng da hay gây hại cho người dùng cũng như môi trường. Vì được dệt bằng lụa tơ tằm tự nhiên nên sản phẩm cà vạt lụa của chúng tôi có những đặc tính ưu việt mà Lụa vốn có như:\r\n\r\nNhẻ, mỏng  và mềm mịn.\r\nKhi chạm vào có cảm giác mát chứ không lạnh, phù hợp với hầu hết thời tiết.\r\nKhông tích điện, cách nhiệt tốt.\r\nHút ẩm tốt, thoải mái không gây bí bách. Dù hoạt động mạnh ra mồ hôi nhiều không lo ngại sẽ bị ám mùi.\r\nCà Vạt Lụa Thượng Uyển\r\nSản phẩm của chúng tôi được dệt từ lụa tơ tằm tự nhiên Việt Nam. Những sợi lụa được chọn lọc kĩ càng. Sau đó đem dệt tại nhà máy tại Bảo Lộc trước khi mang đi in thủ công. Chúng tôi tìm kiếm những nghệ nhân lành nghề nhất để đảm bảo có thể cho ra đời những sản phẩm chất lượng với đường nét tinh xảo.\r\n\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nVới chất liệu lụa tơ tằm tự nhiên, đôi tất sẽ mang lại cảm giác thoải mái và dễ chịu cho người dùng. Đồng thời, giúp bạn có những bước chân vững chải, tự tin. Hãy đến Lụa Thượng Uyển gần nhất để chọn cho mình chiếc cà vạt phù hợp nhất. Hoặc bạn cũng có thể dành tặng sản phẩm này cho bạn bè, người thân nữa đấy.\r\n\r\nSản phẩm lụa tơ tằm cao cấp Lụa Thượng Uyển luôn bảo đảm mang đến cho bạn những sản phẩm chất lượng nhất.', 1, '2021-12-18 11:54:45', '2021-12-18 11:54:45', NULL),
(57, 8, 5, 'Cà Vạt Cao Cấp 2021', 270000, 313, 250000, 8, 'uploads/61bdbbfd1f698-cv3.png', 'Vải lụa là một loại vải mịn, mỏng được dệt từ các sợi tơ tự nhiên. Các sợi tơ đó được lấy từ quá trình tạo kén của loài côn trùng như bướm, tằm, hoặc loài nhện,… Loại lụa tốt nhất được dệt từ tơ tằm. Đây là chất liệu có truyền thống lâu đời. Nó vốn chỉ dành cho tầng lớp quý tộc, thượng lưu của Trung Hoa thời cổ. Sau này vì ưu điểm của mình, nó đã chu du ra khắp năm Châu, bốn Bể. Để rồi trở thành loại chất liệu thịnh hành như ngày nay. Để không làm mất đi những giá trị vốn có của lụa, chúng tôi đã tìm kiếm những sợi lụa tuyệt hảo bậc nhất để dệt nên sản phẩm Cà Vạt Lụa Thượng Uyển. Qua đó gửi tới khách hàng thứ chất lượng của quý tộc.\r\n\r\nCà Vạt Lụa Thượng Uyển được dệt từ Lụa tơ tằm nguyên chất. Sau đó được đem đi nhuộm cùng hóa chất đặc chế, không kích ứng da hay gây hại cho người dùng cũng như môi trường. Vì được dệt bằng lụa tơ tằm tự nhiên nên sản phẩm cà vạt lụa của chúng tôi có những đặc tính ưu việt mà Lụa vốn có như:\r\n\r\nNhẻ, mỏng  và mềm mịn.\r\nKhi chạm vào có cảm giác mát chứ không lạnh, phù hợp với hầu hết thời tiết.\r\nKhông tích điện, cách nhiệt tốt.\r\nHút ẩm tốt, thoải mái không gây bí bách. Dù hoạt động mạnh ra mồ hôi nhiều không lo ngại sẽ bị ám mùi.\r\nCà Vạt Lụa Thượng Uyển\r\nSản phẩm của chúng tôi được dệt từ lụa tơ tằm tự nhiên Việt Nam. Những sợi lụa được chọn lọc kĩ càng. Sau đó đem dệt tại nhà máy tại Bảo Lộc trước khi mang đi in thủ công. Chúng tôi tìm kiếm những nghệ nhân lành nghề nhất để đảm bảo có thể cho ra đời những sản phẩm chất lượng với đường nét tinh xảo.\r\n\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nCà Vạt Lụa Thượng Uyển bản to CT12\r\nVới chất liệu lụa tơ tằm tự nhiên, đôi tất sẽ mang lại cảm giác thoải mái và dễ chịu cho người dùng. Đồng thời, giúp bạn có những bước chân vững chải, tự tin. Hãy đến Lụa Thượng Uyển gần nhất để chọn cho mình chiếc cà vạt phù hợp nhất. Hoặc bạn cũng có thể dành tặng sản phẩm này cho bạn bè, người thân nữa đấy.\r\n\r\nSản phẩm lụa tơ tằm cao cấp Lụa Thượng Uyển luôn bảo đảm mang đến cho bạn những sản phẩm chất lượng nhất.', 1, '2021-12-18 11:21:46', '2021-12-18 11:21:46', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `slideshow_img` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `slide_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`id`, `slideshow_img`, `slide_name`) VALUES
(16, 'uploads/61ab1a3757c7d-slider2.jpg', 'a'),
(17, 'uploads/61ab1a70d0c09-slider1.jpg', 'b'),
(18, 'uploads/61ab1aac2bd10-banner_slider04.jpg', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrangdh`
--

CREATE TABLE `tinhtrangdh` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Đang chờ xử lý'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtrangdh`
--

INSERT INTO `tinhtrangdh` (`id`, `name`) VALUES
(1, 'Đang chờ xử lý'),
(2, 'Đang xử lý'),
(3, 'Đặt hàng thành công'),
(4, 'Hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT 2,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uploads/avtcmt.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_at`, `updated_at`, `deleted`, `avatar`) VALUES
(3, 'Nguyễn Đắc Trọng', 'dactrong2001@gmail.com', '0963209332', 'Bắc Ninh', '123456', 1, '2021-11-27 08:42:19', '2021-12-13 09:42:18', NULL, 'uploads/61b6fd1e16a88-1.jpg'),
(13, 'Nguyen Dac Phuong', 'admin@gmail.com', '0373620028', 'Tỳ Thanh - Phú Hòa - Lương Tài - Bắc Ninh', '123', 1, '2021-12-18 10:51:32', '2021-12-18 10:51:32', NULL, 'uploads/avtcmt.png'),
(14, 'Admin', 'admin2@gmail.com', '0969645534', 'Bắc NInh', '123', 2, NULL, NULL, NULL, 'uploads/avtcmt.png'),
(15, 'Nguyen Dac Phuong', 'dacphuongotp@gmail.com', '+84969645534', 'Tỳ Điện - Phú Hòa - Lương Tài', '123', 2, NULL, NULL, NULL, 'uploads/avtcmt.png'),
(16, 'Thành Đạt Nguyễn', 'nguyenthanhdat27042002@gmail.com', '0823865962', 'phường vạn phúc, quận hà đông, thành phó hà nội', '12345', 1, NULL, NULL, NULL, 'uploads/avtcmt.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `favorite_products`
--
ALTER TABLE `favorite_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_ttdh` (`id_ttdh`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`category_id`),
  ADD KEY `product_brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tinhtrangdh`
--
ALTER TABLE `tinhtrangdh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ibfk_1` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `favorite_products`
--
ALTER TABLE `favorite_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tinhtrangdh`
--
ALTER TABLE `tinhtrangdh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `contents_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `favorite_products`
--
ALTER TABLE `favorite_products`
  ADD CONSTRAINT `favorite_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `favorite_products_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_ttdh`) REFERENCES `tinhtrangdh` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
