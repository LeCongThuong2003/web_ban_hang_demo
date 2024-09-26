-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 22, 2024 lúc 05:35 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lecongthuong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `sid` int(11) NOT NULL,
  `pid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `status` enum('active','purchased') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`sid`, `pid`, `uid`, `product`, `price`, `quantity`, `status`) VALUES
(261, 30, 26, 'Geforce keyboard', 2000, 2, 'active'),
(262, 32, 31, 'HP inteli11', 150000, 2, 'active'),
(264, 34, 24, 'Lokai', 15000, 2, 'active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(100) NOT NULL,
  `customer_fname` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pwd` varchar(100) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_role` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_fname`, `customer_email`, `customer_pwd`, `customer_phone`, `customer_address`, `customer_role`) VALUES
(9, 'thuong', 'thuongah01110@gmail.com', 'thuong', '0911197592', 'viet nam', 'admin'),
(26, 'admin', 'admin@gmail.com', 'admin', '9817604185', 'vietnam', 'normal'),
(31, 'user', 'user@gmail.com', '2345', '9817604345', 'Lalbandi,Sarlahi', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `email`
--

INSERT INTO `email` (`id`, `name`, `email`, `subject`, `message`) VALUES
(6, 'bhabishyaghimire', 'bhabishyaghimire88@gmail.com', 'Request', 'I like to request you to bring iphone 14 pro max sooner');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_catag` varchar(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_date` varchar(50) NOT NULL,
  `product_img` text NOT NULL,
  `product_left` int(100) NOT NULL,
  `product_author` varchar(100) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_catag`, `product_title`, `product_price`, `product_desc`, `product_date`, `product_img`, `product_left`, `product_author`) VALUES
(19, 'mouse', 'Chuột chơi game không dây Logitech G502 Lightspeed', 2490000, 'Chuột chơi game không dây Logitech G502 Lightspeed mạnh mẽ, nhạy bén\r\nChuột chơi game không dây Logitech G502 Lightspeed sở hữu kiểu dáng mạnh mẽ dành cho các game thủ đích thực. Sản phẩm được thiết kế và sản xuất từ thương hiệu Logitech nổi tiếng chắc chắn là sự lựa chọn tuyệt vời cho các game với độ chính xác và độ nhạy bén tuyệt đối.\r\n\r\nThiết kế mạnh mẽ, trọng lượng siêu nhẹ\r\nChuột chơi game không dây Logitech G502 Lightspeed sở hữu vẻ ngoài vô cùng mạnh mẽ và độc đáo. Các đường góc cạnh của chuột được trau chuốt thiết kế tỉ mỉ và sắc nét, mang lại phong cách mạnh mẽ cho người sử dụng. Bên cạnh đó màu đen tinh tế vô cùng hiện đại. ', '01,05,2024', '15.jpg', 50, 'thuong'),
(21, 'laptop', 'Laptop HP Gaming Victus 15-FB1023AX 94F20PA', 17590000, 'Sở hữu màn hình 15.6 inch với lớp vỏ đen thời thượng\r\nCPU Intel Core R5-7535HS hỗ trợ mình giải quyết nhanh gọn hàng loạt tác vụ mà không lo giật lag\r\nCard  RTX 2050 giúp giải quyết được khối lượng công việc nặng\r\nRAM 8GB cùng ổ cứng 512 GB SSD ch không gian lưu trữ đủ lớn, lưu trữ tài liệu, hình ảnh,...', '9, feb, 2022', '9.jpg', 100, 'thuong'),
(22, 'laptop', 'Laptop Lenovo V14 G4 AMN 82YT00M8VN', 10990000, 'CPU AMD Ryzen 5 7520U cung cấp hiệu suất đủ mạnh để xử lý các tác vụ hàng ngày và văn phòng một cách mượt mà\r\nBộ nhớ RAM lên đến 16GB và ổ cứng SSD PCIe 512GB, cung cấp không gian lưu trữ đủ rộng rãi và tốc độ truy cập nhanh cho người dùng\r\nMàn hình 14 inch Full HD cung cấp hình ảnh sắc nét và chi tiết, giúp tăng cường trải nghiệm làm việc và giải trí\r\nVới hệ điều hành Windows 11, người dùng có thể tận dụng các tính năng mới nhất và tối ưu hóa hiệu suất của máy tính ', '01,05,2024', '8.jpg', 18, 'thuong'),
(23, 'mouse', 'Chuột Gaming ASUS ROG Keris Aimpoint', 2590000, 'Chuột gaming Asus Rog Keris Aimpoint – Độ nhạy cao cùng ba chế độ kết nối tiện lợi\r\nChuột Asus Rog Keris Aimpoint là mẫu chuột chơi game với thiết kế siêu nhẹ cùng với đó là cảm biến quang học với độ nhạy cao. Mẫu chuột Asus chơi game này hứa hẹn sẽ mang lại những trải nghiệm chơi game vượt trội cho người dùng.\r\n\r\nBa chế độ kết nối tiện lợi, độ trễ cực thấp\r\nChuột Asus Rog Keris Aimpoint được hãng sản xuất trang bị tới 3 chế độ kết nối vô cùng thông minh. Theo đó, người dùng có thể sử dụng dây USB để sử dụng với chế độ có dây hoặc kết nối không dây qua bluetooth hoặc qua cổng Wireless 2.4 GHz RF. Đặc biệt, khi kết nối qua bluetooth, thiết bị có thể kết nối cùng lúc lên tới 3 thiết bị.', '01,05,2024', '16.jpg', 50, 'thuong'),
(24, 'keyboard', 'Bàn phím Apple Magic Keyboard + Trackpad cho iPad Pro 12.9 2021 | Chính hãng Apple Việt Nam', 8990000, 'Bàn phím Magic Keyboard + Trackpad iPad Pro 12.9 2021 - Tăng hiệu suất làm việc\r\niPad Pro 12.9 2021 được Apple mang đến không chỉ phục vụ cho nhu cầu giải trí mà nó còn khả năng mở rộng để trở thành một công cụ giúp làm việc khi kết hợp với bàn phím bàn phím Magic Keyboard + Trackpad iPad Pro 12.9 qua cổng kết nối USB.\r\n\r\nThiết kế đơn giản, sang trọng, trang bị các tính năng hiện đại\r\nBộ phụ kiện Apple này vẫn không làm người đam mê công nghệ của Apple thất vọng, bởi một thiết kế đơn giản nhưng vô cùng sang trọng, được trau chuốt, tỉ mỉ từng chi tiết\r\n\r\nSử dụng chủ yếu chất liệu cao su, để hoàn thiện nên bàn phím iPad Pro 12.9 2021 Magic Keyboard + Trackpad có được độ bền cao nhưng vẫn đảm bảo tính thẩm mỹ.', '01,05,2024', '12.jpg', 56, 'thuong'),
(25, 'laptop', 'Lenovo xx556G i7', 15190000, 'Sở hữu thiết kế tinh tế với lớp vỏ nhôm sáng bóng, sang trọng\r\nMàn hình 14 inch WUXGA cực sắc nét, hỗ trợ làm việc, giải trí dễ dàng\r\nCPU Intel Core i5-12450H mạnh mẽ, giải quyết nhanh mọi tác vụ học tập, văn phòng\r\nRAM 16GB cùng ổ cứng 512GB SSD đa nhiệm, mở máy, mở ứng dụng cực nhanh\r\nĐộ sáng lên đến 300nits hỗ trợ làm việc ở nơi có ánh sáng yếu', '01,05,2024', '7.jpg', 30, 'thuong'),
(26, 'mouse', 'Chuột không dây Logitech G Pro X Superlight', 2950000, 'Chuột không dây Logitech G Pro X Superlight - Cảm biến Hero hiện đại \r\nChuột không dây Logitech G Pro X Superlight là mẫu chuột máy tính thế hệ mới được ra mắt. Sản phẩm chuột Logitech này được trang bị thiết kế, kiểu dáng và nhiều công nghệ tiên tiến, hiện đại, nhận được nhiều sự chú ý của người dùng công nghệ. \r\n\r\nThiết kế gọn nhẹ, sang trọng\r\nNgoài thiết kế đơn giản tinh tế, chuột không dây Logitech G Pro X Superlight còn tạo ấn tượng bởi sở hữu kiểu dáng đậm chất cổ điển. Cấu trúc chuột với các đường cạnh cong, được bo tròn, vừa với khuôn bàn tay, do đó tạo sự thoải mái cho người tiêu dùng khi phải sử dụng liên tục trong nhiều giờ đồng hồ. ', '01,05,2024', '14.jpg', 50, 'thuong'),
(27, 'keyboard', 'Bàn phím iPad Pro 12.9 inch Apple Magic Keyboard Trackpad', 8900000, 'Bàn phím iPad Pro 12.9 inch Apple Magic Keyboard Trackpad - Ngôn ngữ tinh tế thiết kế giản đơn\r\nBàn phím iPad Pro 12.9 inch Apple Magic Keyboard Trackpad là mẫu bàn phím iPad kết hợp bao da được nhiều người lựa chọn để nâng cao hiệu suất làm việc cũng như tốc độ thao tác khi sử dụng iPad Pro 12.9. Thiết kế đơn giản tinh tế cùng công năng hiện đại giúp những chiếc Apple Magic Keyboard Trackpad này dễ dàng biến iPad Pro 12.9 thành những chiếc laptop nhỏ gọn đa công năng.\r\n\r\nTính năng hiện đại ẩn trong thiết kế giản đơn mà sang trọng\r\nVẫn là những thiết kế đơn giản nhưng cao cấp, bàn phím iPad Pro 12.9 inch Magic Keyboard Trackpad là những thiết kế được trau chuốt từng đường nét. Sự tinh tế trong thiết kế của những chiếc bàn phím này chính là điểm khiến tổng thể thiết kế trở nên cực sang trọng và cuốn hút.', '01,05,2024', '11.jpg', 40, 'thuong'),
(28, 'laptop', 'Laptop ASUS VivoBook S 14 FLIP TP3402VA-LZ025W', 110000, 'Sở hữu thiết kế sang trọng, màu bạc sáng bóng dễ dàng thu hút mọi người\r\nCPU I3-1315U giúp bạn thực hiện các tác vụ văn phòng một cách tối đa, xử lý ảnh nhẹ\r\nRAM 8GB hỗ trợ mở các tab ổn định, không lag\r\nỔ cứng 256GB SSD giúp bạn lưu trữ không gian cực lớn, không cần sao chép qua USB\r\nTrang bị laptop có thiết kế gập và màn hình cảm ứng đem lại trải nghiệm tối đa.', '01,05,2024', '6.jpg', 49, 'thuong'),
(29, 'mouse', 'Chuột gaming Logitech Pro X Superlight 2 Lightspeed', 3190000, 'Sở hữu trọng lượng nhẹ 63g và khả năng trượt gần như không ma sát cho chiến game bứt tốc\r\nHiệu suất nhạy bén và khả năng kết nối mạnh mẽ với công nghệ không dây mới Lightspeed\r\nĐem đến độ chính xác cao và điều khiển chính xác nhờ cảm biến HERO 25K độc quyền\r\nChân bằng nhựa PTFE không pha tạp mang lại cảm giác lướt êm ái, kết nối mượt mà với trò chơi', '01,05,2024', '13.jpg', 45, 'thuong'),
(30, 'keyboard', 'Bàn phím gaming Logitech Pro X TKL Lightspeed', 3990000, 'Bố cục bàn phím tiêu chuẩn tương thích với 3P phù hợp cho cấp độ chơi thi đấu cao nhất\r\nDễ dàng kết nối, không vướng víu qua công nghệ Lightspeed không dây hoàn toàn mới\r\nBổ sung hiệu ứng ánh sáng tuyệt đẹp với thiết kế dải đèn RGB LIGHTSYNC dưới mặt phím\r\nThời lượng pin lên tới 50 giờ và có thể sạc lại, kết nối không dây trong phạm vi 10 mét trở lại', '01,05,2024', '10.jpg', 56, 'thuong'),
(31, 'laptop', 'Laptop ASUS TUF Gaming F15 FX506HF-HN078W', 17290000, 'CPU Intel Core i5 11260H đáp ứng tốt các tác vụ, mang lại trải nghiệm sử dụng tuyệt vời trong cả công việc lẫn giải trí, chiến game.\r\nCard đồ họa NVIDIA GeForce RTX 2050 đáp ứng tốt nhu cầu chơi game cấu hình cao và xử lý các file thiết kế nặng.\r\nRAM 16 GB cho bạn tận hưởng những giây phút chiến game đỉnh cao khi có thể mở nhiều ứng dụng cùng lúc.\r\nỔ cứng SSD 512 GB cho tốc độ khởi động nhanh chóng cùng khả năng tải ứng dụng mượt mà.\r\nMàn hình 15.6 inch Full HD và tần số quét 144 Hz mang lại hình ảnh sắc nét và mượt mà, cho trải nghiệm chơi game tuyệt vời,với tốc độ khung hình cao.', '01,05,2024', '5.jpg', 45, 'thuong'),
(32, 'laptop', 'MSI bravo15 vn24', 23990000, 'Chip R5-5600H cùng card rời RX5500M cho khả năng chiến các tựa game nặng, chỉnh sửa hình ảnh trên PTS, Render 3D.\r\nRam 8GB + 1 khe trống cho phép nâng cấp tối đa đến 64GB.\r\nKích thước màn hình 15.6 inches với độ phân giải Full HD mang lại trải nghiệm tuyệt vời, hình ảnh sắc nét.\r\nTản nhiệt 6 ống đồng - Giúp đảm bảo hiệu năng ổn định khi chiến game\r\nTrọng lượng 2.35kg cho cảm giác cầm chắc tay .\r\nMáy đi kèm windows 11 bản quyền.', '01,05,2024', '4.jpg', 100, 'thuong'),
(33, 'mouse', 'Dareu EM901 Pink- wireless', 539000, 'Chuột không dây Gaming Dareu EM901 Pink – Wireless là siêu phẩm không dây dành cho tín đồng đồng bộ gear “MÀU HƯỜNG cá tính\r\nDPI: 800-6000\r\nTracking: 150IPS\r\nPolling rate: 1000Hz\r\nDung lượng PIN: 930 mAh\r\nThời gian sử dụng: 30h / 18h LED RGB\r\nThời gian sạc: 3h\r\nSwitch: DareU (10 triệu lần click)\r\nKích thước: 125.5*68.6*39.6mm\r\nDây 1.8m\r\nTrọng lượng: 100g +/- 10g\r\nWIRELESS – 2.4G”\r\nBảo Hành : 24 THÁNG CHÍNH HÃNG', '01,05,2024', '3.jpg', 25, 'thuong'),
(34, 'keyboard', 'DAREW EK87 V2', 465000, 'Dareu EK87 V2 Multi Led được thiết kế với sự chú trọng đến mọi chi tiết. Dù bạn là game thủ hay đơn giản là một người dùng bình thường và đang tìm kiếm một bàn phím Dareu chất lượng cao để nâng cao trải nghiệm gõ phím của mình thì đây sẽ là lựa chọn tốt cho bạn.\r\n\r\nThiết kế đẹp mắt và đèn nền viền LED RGB\r\nDareu EK87 V2 Multi Led là một bàn phím cơ chất lượng cao với thiết kế đẹp mắt và đèn nền viền LED RGB sặc sỡ. Đây là một lựa chọn tuyệt vời cho những người yêu thích công nghệ và muốn tạo điểm nhấn cho không gian làm việc của mình.\r\n\r\n', '01,05,2024', '2.jpg', 120, 'thuong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `repair`
--

CREATE TABLE `repair` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_name` varchar(25) NOT NULL,
  `category` varchar(20) NOT NULL,
  `damage_type` varchar(40) NOT NULL,
  `uuid` varchar(40) DEFAULT NULL,
  `advance_amt` int(20) NOT NULL,
  `due` int(20) DEFAULT NULL,
  `status` enum('repaired','pending') NOT NULL DEFAULT 'pending',
  `booked_date` varchar(25) NOT NULL,
  `return_date` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `repair`
--

INSERT INTO `repair` (`id`, `user_id`, `p_name`, `category`, `damage_type`, `uuid`, `advance_amt`, `due`, `status`, `booked_date`, `return_date`) VALUES
(24, 9, 'thuong', 'laptop', 'water damage', 'ko', 200, 0, 'repaired', '20,5,2024', ''),
(25, 9, 'thuong', 'mobile', 'power surges', 'he', 180, NULL, 'pending', '20,5,2024', NULL),
(26, 9, 'thuong', 'laptop', 'water damage', 'test', 200, NULL, 'pending', '21,5,2024', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicestatus`
--

CREATE TABLE `servicestatus` (
  `sid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `pid` int(11) DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `servicestatus`
--

INSERT INTO `servicestatus` (`sid`, `uid`, `discount`, `status`, `pid`, `uuid`) VALUES
(131, 32, '(1)free repairing', 'pending', 33, '130-33-1716184058'),
(132, 32, '(1)free repairing', 'pending', 33, '41-33-1716184110'),
(133, 32, '(1)free repairing', 'pending', 33, '43-33-1716184113'),
(134, 32, '(1)free repairing', 'pending', 33, '177-33-1716184150'),
(135, 32, '(1)free repairing', 'pending', 33, '93-33-1716184152'),
(136, 32, '(1)free repairing', 'pending', 33, '122-33-1716184224'),
(137, 32, '(1)free repairing', 'pending', 33, '131-33-1716184239'),
(138, 32, '(1)free repairing', 'pending', 33, '65-33-1716184408'),
(139, 9, '50% discount', 'pending', 30, '19-30-1716208058'),
(140, 9, '(1)free repairing', 'pending', 31, '74-31-1716224719'),
(141, 9, '(1)free repairing', 'pending', 35, '98-35-1716272064'),
(142, 9, '(1)free repairing', 'pending', 35, '141-35-1716272064'),
(143, 9, '(1)free repairing', 'pending', 34, '198-34-1716272064'),
(144, 9, '(1)free repairing', 'pending', 27, '59-27-1716272493');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `website_name` varchar(60) NOT NULL,
  `website_logo` varchar(50) NOT NULL,
  `website_footer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`website_name`, `website_logo`, `website_footer`) VALUES
('TNT Shop', 'logo.jpg', '© TNT Shop 2024 <br> All right reserved.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `soldproducts`
--

CREATE TABLE `soldproducts` (
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(50) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `date` varchar(60) DEFAULT NULL,
  `status` enum('pending','delivered') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `soldproducts`
--

INSERT INTO `soldproducts` (`sid`, `uid`, `pid`, `quantity`, `price`, `date`, `status`) VALUES
(164, 32, 33, 1, 539050, '20,5,2024', 'pending'),
(165, 32, 33, 1, 539050, '20,5,2024', 'pending'),
(166, 32, 33, 1, 539050, '20,5,2024', 'pending'),
(167, 32, 33, 1, 539050, '20,5,2024', 'pending'),
(168, 32, 33, 1, 539050, '20,5,2024', 'pending'),
(169, 32, 33, 1, 539050, '20,5,2024', 'pending'),
(170, 32, 33, 1, 539050, '20,5,2024', 'pending'),
(171, 32, 33, 1, 539050, '20,5,2024', 'pending'),
(172, 9, 30, 1, 2050, '20,5,2024', 'pending'),
(173, 9, 31, 1, 17290050, '20,5,2024', 'pending'),
(174, 9, 35, 1, 27990000, '21,5,2024', 'pending'),
(175, 9, 35, 1, 27990000, '21,5,2024', 'pending'),
(176, 9, 34, 1, 465000, '21,5,2024', 'pending'),
(177, 9, 27, 1, 8900000, '21,5,2024', 'pending');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`sid`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Chỉ mục cho bảng `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `repair`
--
ALTER TABLE `repair`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `servicestatus`
--
ALTER TABLE `servicestatus`
  ADD PRIMARY KEY (`sid`);

--
-- Chỉ mục cho bảng `soldproducts`
--
ALTER TABLE `soldproducts`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `repair`
--
ALTER TABLE `repair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `servicestatus`
--
ALTER TABLE `servicestatus`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT cho bảng `soldproducts`
--
ALTER TABLE `soldproducts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
