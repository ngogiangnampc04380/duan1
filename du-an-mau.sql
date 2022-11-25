-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2022 lúc 08:10 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du-an-mau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(29, 'Thời trang nam'),
(30, 'Thời trang nữ'),
(31, 'Đồng hồ'),
(32, 'Túi xách');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_add` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `content`, `id_product`, `id_user`, `date_add`) VALUES
(24, 'qua dep\r\n', 54, 24, '2022/10/16'),
(28, 'dep', 27, 24, '2021/10/17'),
(37, 'thiet ke qua dep', 55, 24, '2022/10/12'),
(38, 'cai nay lua cho ban gai kha la vua y', 53, 24, '2022/10/12'),
(39, 'đawad', 27, 37, '2022/10/23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id`, `name`, `phone`, `address`, `gmail`, `logo`) VALUES
(1, 'Ngô Giang Nam', '0783885366', 'Cao đẳng thực hành FPT Polytechnic Cần Thơ', 'namngpc04380@fpt.edu.vn', 'logo.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `date_add` varchar(255) DEFAULT NULL,
  `detail` text NOT NULL,
  `view` int(11) DEFAULT NULL,
  `id_cate` int(11) NOT NULL,
  `sale` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `intro` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `images`, `price`, `date_add`, `detail`, `view`, `id_cate`, `sale`, `total`, `intro`) VALUES
(18, 'Sơ mi trắng cổ đũi', '5d99812ba407d-somi3.jpg', 200000, '2019/10/06', '                \r\n                                ', 25, 29, 5, 10, 'Được nhập khẩu từ Hàn Quốc                    \r\n                                '),
(19, 'Bộ thời trang nam', '5d9981ab3cfba-bonam2.jpg', 300000, '2019/10/06', '                Sản phẩm được nhập khẩu từ Hàn Quốc với chất vải cotton 100%. Mặc vào không cảm thấy nóng hoặc khó chịu.<br>Phù hợp với các bạn nam từ 52-70kg                \r\n                                                ', 2, 29, 9, 7, 'Được nhập khẩu từ Hàn Quốc                                        \r\n                                                '),
(20, 'Thời trang hè', '5d9981debed18-bonam1.jpeg', 200000, '2019/10/06', '                                Sản phẩm được nhập khẩu từ Hàn Quốc với chất vải cotton 100%. Mặc vào không cảm thấy nóng hoặc khó chịu.<br>Phù hợp với các bạn nam từ 52-70kg                \r\n                                                                ', 2, 29, 7, 20, '                    Được nhập khẩu từ Hàn Quốc                                        \r\n                                                                '),
(21, 'Áo phông trắng', '5d9981fbee8d2-aophong1.jpeg', 120000, '2019/10/06', '                Sản phẩm được nhập khẩu từ Hàn Quốc với chất vải cotton 100%. Mặc vào không cảm thấy nóng hoặc khó chịu.<br>Phù hợp với các bạn nam từ 52-70kg                \r\n                                                ', 1, 29, 2, 20, 'Được nhập khẩu từ Hàn Quốc                                        \r\n                                                '),
(22, 'Áo phông đen', '5d99b26a7d6f1-aophongden.jpg', 170000, '2019/10/06', '                Sản phẩm được nhập khẩu từ Hàn Quốc với chất vải cotton 100%. Mặc vào không cảm thấy nóng hoặc khó chịu.<br>Phù hợp với các bạn nam từ 52-70kg                \r\n                                                ', 1, 29, 5, 20, 'Được nhập khẩu từ Hàn Quốc                                        \r\n                                                '),
(23, 'Áo sơ mi và quần âu', '5d99b29747421-congso.jpg', 320000, '2019/10/06', '                Sản phẩm được nhập khẩu từ Hàn Quốc với chất vải cotton 100%. Mặc vào không cảm thấy nóng hoặc khó chịu.<br>Phù hợp với các bạn nam từ 52-70kg                \r\n                                                ', 2, 29, 10, 20, 'Được nhập khẩu từ Hàn Quốc                                        \r\n                                                '),
(24, 'Sơ mi đen sành điệu', '5d99b2c67a48b-somiden.jpeg', 120000, '2019/10/06', '                Sản phẩm được nhập khẩu từ Hàn Quốc với chất vải cotton 100%. Mặc vào không cảm thấy nóng hoặc khó chịu.<br>Phù hợp với các bạn nam từ 52-70kg                \r\n                                                ', 3, 29, 3, 20, 'Được nhập khẩu từ Hàn Quốc                                        \r\n                                                '),
(25, 'Áo gió vàng', '5d99c97a36e32-aokhoacnam.jpg', 220000, '2019/10/06', '                Sản phẩm được nhập khẩu từ Hàn Quốc với chất vải cotton 100%. Mặc vào không cảm thấy nóng hoặc khó chịu.<br>Phù hợp với các bạn nam từ 52-70kg                \r\n                                                ', 1, 29, 5, 20, 'Được nhập khẩu từ Hàn Quốc                                        \r\n                                                '),
(26, 'Bộ thể thao Adidas', '5d99c9a2b82cd-thethaonam.jpeg', 100000, '2019/10/06', '                Sản phẩm được nhập khẩu từ Hàn Quốc với chất vải cotton 100%. Mặc vào không cảm thấy nóng hoặc khó chịu.<br>Phù hợp với các bạn nam từ 52-70kg                                \r\n                                                                ', 8, 29, 5, 20, 'Được nhập khẩu từ Hàn Quốc                                                            \r\n                                                                '),
(27, 'Véc 2019', '5d99ca7a3cc35-vec.jpg', 320000, '2019/10/06', '                Sản phẩm được nhập khẩu từ Hàn Quốc với chất vải cotton 100%. Mặc vào không cảm thấy nóng hoặc khó chịu.<br>Phù hợp với các bạn nam từ 52-70kg                \r\n                                                ', 24, 29, 10, 9, 'Được nhập khẩu từ Hàn Quốc                                        \r\n                                                '),
(28, 'Áo hồng Cotton', '5d99f0ec313fc-ao1.jpg', 120000, '2019/10/06', '\r\n                ', 4, 30, 3, 20, '\r\n                '),
(29, 'Áo cổ tim', '5d99f18b640db-ao2.jpg', 220000, '2019/10/06', '\r\n                ', 2, 30, 5, 30, '\r\n                '),
(30, 'Bộ kẻ cá tính', '5d99f1d994bb5-bo1.jpg', 180000, '2019/10/06', '\r\n                ', 1, 30, 10, 12, '\r\n                '),
(31, 'Bộ kẻ phong cách', '5d99f2107cc4e-bo2.jpg', 180000, '2019/10/06', '\r\n                ', 3, 30, 5, 21, '\r\n                '),
(32, 'Bộ vàng', '5d99f29ab34f7-bo3.jpg', 150000, '2019/10/06', '\r\n                ', 1, 30, 10, 21, '\r\n                '),
(33, 'Bộ công sở', '5d99f3175c1a5-bo4.jpg', 250000, '2019/10/06', '\r\n                ', 1, 30, 0, 21, '\r\n                '),
(34, 'Bộ ngủ nữ', '5d99f33155756-bongunu.jpg', 120000, '2019/10/06', '\r\n                ', 2, 30, 0, 31, '\r\n                '),
(35, 'Váy công sở', '5d99f34fe7565-congso.jpg', 220000, '2019/10/06', '\r\n                ', 3, 30, 20, 18, '\r\n                '),
(36, 'Váy dự tiệc', '5d99f42585364-dahoi.jpeg', 500000, '2019/10/06', '\r\n                ', 13, 30, 20, 10, '\r\n                '),
(37, 'Váy xám cá tính', '5d99f43dbdd6b-vay1.jpg', 200000, '2019/10/06', '\r\n                ', 5, 30, 20, 12, '\r\n                '),
(38, 'Jum xám xanh', '5d99f45a847f5-vay2.jpg', 180000, '2019/10/06', '\r\n                ', 6, 30, 10, 21, '\r\n                '),
(39, 'Chân váy xòe', '5d99f481d6758-vay3.jpg', 210000, '2019/10/06', '\r\n                ', 7, 30, 10, 20, '\r\n                '),
(40, 'Túi đen da cá sấu', '5d99f6ad6d18a-ba.jpg', 1000000, '2019/10/06', '\r\n                ', 2, 32, 10, 10, '\r\n                '),
(41, 'Túi da nâu', '5d99f6c70958d-baa.jpg', 550000, '2019/10/06', '\r\n                ', 1, 32, 10, 21, '\r\n                '),
(42, 'Túi đeo chéo', '5d99f6dfe2705-bag1.jpg', 180000, '2019/10/06', '\r\n                ', 1, 32, 0, 9, '\r\n                '),
(44, 'Túi Channel', '5d99f7179a8ba-pic6.jpg', 20000000, '2019/10/06', '\r\n                ', 1, 32, 1, 2, '\r\n                '),
(46, 'Túi Channel hồng', '5d99f91a3e6a5-pic13.jpg', 20000000, '2019/10/06', '\r\n                ', 2, 32, 1, 21, '\r\n                '),
(47, 'Túi Gucci', '5d99f983c0d19-pi1.jpg', 10000000, '2019/10/06', '\r\n                ', 4, 32, 2, 10, '\r\n                '),
(49, 'Đồng hồ Gucci nữ', '5d99fa5ca431a-pi2.jpg', 1200000, '2019/10/06', '\r\n                ', 8, 31, 1, 20, '\r\n                '),
(50, 'Đồng hồ Haplot', '5d99fa7f7261e-pi4.jpg', 1000000, '2019/10/06', '\r\n                ', 8, 31, 10, 21, '\r\n                '),
(51, 'Đồng hồ Rolex cơ', '5d99faa9b4731-pic2.jpg', 12000000, '2019/10/06', '\r\n                ', 14, 31, 10, 5, '\r\n                '),
(52, 'Đồng hồ nữ Gucci', '5d99fae3a5caf-pic5.jpg', 1000000, '2019/10/06', '\r\n                ', 7, 31, 1, 20, '\r\n                '),
(53, 'Đồng hồ nữ Wonder', '5d99faff1652a-pic11.jpg', 20000000, '2022/10/12', '                <p style=\"padding: 0px; line-height: 1.5; font-family: \"times new roman\", times, serif; font-size: 16px; text-align: justify;\"><span style=\"padding: 0px; margin: 0px; font-size: 12pt;\">Le Marché Des Merveilles là bộ sưu tập đồng hồ unisex của Wonder với những thiết kế mang tính đột phá và đổi mới trong làng thời trang. Mỗi chiếc đồng hồ đều được liên kết bởi cùng một phong cách từ dây đeo cho đến mặt số.</span></p><p style=\"padding: 0px; line-height: 1.5; font-family: \"times new roman\", times, serif; font-size: 16px; text-align: justify;\"><span style=\"padding: 0px; margin: 0px; font-size: 12pt;\">Nhà sản xuất sử dụng đá malachite, loại loại khoáng chất có xuất xứ từ đồng và mang màu xanh lá đặc trưng, riêng biệt để làm các món đồ trang sức hoặc làm vật trang trí trong cung điện. Đi kèm là vỏ được mạ vàng sang trọng.</span></p>                \r\n                                                ', 9, 31, 0, 2, '                                        \r\n                                                '),
(54, 'Đồng hồ nam Rolex', '5d99fb170ff78-wa.jpg', 10000000, '2022/10/12', '<p style=\"padding: 0px; line-height: 1.5; font-family: &quot;times new roman&quot;, times, serif; font-size: 16px;\"><span style=\"padding: 0px; margin: 0px;\">Sở hữu biểu tượng thời trang gắn liền với hình ảnh những con ong, con mèo thần bí, ngôi sao, trái tim, con rắn,… ngay trên&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/nhan-biet-cac-kieu-mat-dong-ho-deo-tay-pho-bien-nhat-hien-nay.html\" target=\"_blank\" rel=\"noopener\" data-wpel-link=\"internal\" style=\"padding: 0px; margin: 0px; color: rgb(40, 138, 214); outline: none;\">mặt đồng hồ</a>. Đây cũng là điểm nhận diện riêng biệt để người dùng dễ dàng biết đến Rolex</span></p><p style=\"padding: 0px; line-height: 1.5; font-family: &quot;times new roman&quot;, times, serif; font-size: 16px;\"><span style=\"padding: 0px; margin: 0px;\">Đồng hồ Rolex con ong này có 2 mô hình để phục vụ cho cả nam và nữ với đa dạng kích cỡ mặt số khác nhau là 36mm, 38mm, 40mm và 42mm. Khách hàng cũng có thể chọn lựa giữa chất liệu thiết kế dây đeo bằng da chính hãng, kim loại hoặc cao su.</span></p>                \r\n                                ', 20, 31, 10, 100, '                    \r\n                                '),
(55, 'Đồng hồ Gucci Dive', '5d99fb412f67f-wat.jpg', 10000000, '2022/10/12', '                <span style=\"font-family: \"times new roman\", times, serif; font-size: 16px; text-align: justify;\">Gucci Dive là bộ sưu tập </span><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/nhan-dien-va-tim-toi-cac-bi-mat-cua-dong-ho-lan.html\" target=\"_blank\" rel=\"noopener noreferrer\" data-wpel-link=\"internal\" style=\"padding: 0px; margin: 0px; color: rgb(40, 138, 214); outline: none; font-family: \"times new roman\", times, serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">đồng hồ lặn</a><span style=\"font-family: \"times new roman\", times, serif; font-size: 16px; text-align: justify;\"> hiếm hoi của hãng. Tương tự như đồng hồ lặn của những thương hiệu khác, Gucci đã nâng cấp mạnh mẽ về khả năng chống nước lên đến </span><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/huong-dan-su-dung-nuoc-cho-dong-ho-deo-tay.html\" target=\"_blank\" rel=\"noopener\" data-wpel-link=\"internal\" style=\"padding: 0px; margin: 0px; color: rgb(40, 138, 214); outline: none; font-family: \"times new roman\", times, serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">20ATM</a><span style=\"font-family: \"times new roman\", times, serif; font-size: 16px; text-align: justify;\">, đủ để đi bơi và lặn nông trong một số trường hợp nhất định.</span>                                                \r\n                                                                                ', 139, 31, 10, 10, '                                                                                \r\n                                                                                ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`id`, `img`, `title`, `detail`, `status`, `link`) VALUES
(5, '5d9b68202217a-pic2.jpg', 'Giảm giá từ 2-20% toàn bộ mặt hàng', '        <p>Nhân dịp sinh nhật lần thứ 3. Big Shope muốn gửi lời chi ân tới toàn bộ anh chị em trong suốt thời gian đã tin tưởng và ủng hộ</p>', 0, 'product.php?id=31'),
(6, '5d9ce15323a1d-5d9981ab3cfba-bonam2.jpg', 'Hứng khởi chào thu 2019. Tưng bừng ưu đãi cùng Big Shope', '       <p>Khách hàng mới giảm thêm 10%. Thanh toán khi nhận hàng</p>', 0, 'new.php'),
(9, '63466641917a4-logo.png', 'X shop lựa chon cho xu hướng thời trang của bạn', '', 0, 'http://localhost/cai%20nay%20la%20PHP/duanmau_asm/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text NOT NULL,
  `permission` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `phone`, `address`, `permission`, `active`) VALUES
(24, 'nam', '123456', 'namngpc04380@fpt.edu.vn', 123456, '.', 0, 1),
(36, 'Hồ Chí Cường', '123456', 'cuonghcpc@gmail.com', 123456, 'Kv Hòa An, P Thới Hòa, Q Ô Môn,TP CẦn Thơ ', 1, 1),
(37, 'nam', '123456', 'gutentagslave@gmail.com', 703374380, 'Kv Hòa An, P Thới Hòa, Q Ô Môn,TP CẦn Thơ', 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cate` (`id_cate`);

--
-- Chỉ mục cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Comment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `Comment_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_cate`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
