-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2022 lúc 09:41 AM
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
-- Cơ sở dữ liệu: `sv_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL,
  `id_bills` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `note` text NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `description`) VALUES
(1, 'Đồng hồ', NULL),
(2, 'Vòng tay', NULL),
(3, 'Dây đeo tay', NULL),
(4, 'Dây chuyền', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `id_product`, `name`, `code`, `img`) VALUES
(1, 1, 'Vàng', '#FFFF00', 'a.jpg'),
(2, 1, 'Xanh', '#FFFF00', 'b.jpg'),
(3, 2, 'Vàng', '#FFFF00', 'c.jpg'),
(4, 2, 'Xanh', '#FFFF00', 'd.jpg'),
(5, 5, 'Vàng', '#FFFF00', 'e.jpg'),
(6, 6, 'Vàng', '#FFFF00', 'g.jpg'),
(7, 7, 'Vàng', '#FFFF00', 'h.jpg'),
(8, 8, 'Vàng', '#FFFF00', 'i.jpg'),
(9, 9, 'Vàng', '#FFFF00', 'b.jpg'),
(10, 10, 'Vàng', '#FFFF00', 'b.jpg'),
(11, 11, 'Vàng', '#FFFF00', 'b.jpg'),
(12, 12, 'Vàng', '#FFFF00', 'b.jpg'),
(13, 13, 'Vàng', '#FFFF00', 'b.jpg'),
(14, 14, 'Vàng', '#FFFF00', 'e.jpg'),
(15, 15, 'Vàng', '#FFFF00', 'f.jpg'),
(16, 16, 'Vàng', '#FFFF00', 'g.jpg'),
(17, 17, 'Vàng', '#FFFF00', 'h.jpg'),
(18, 18, 'Vàng', '#FFFF00', 'e.jpg'),
(19, 19, 'Vàng', '#FFFF00', 'g.jpg'),
(20, 20, 'Vàng', '#FFFF00', 'h.jpg'),
(21, 21, 'Vàng', '#FFFF00', 'g.jpg'),
(22, 22, 'Vàng', '#FFFF00', 'f.jpg'),
(23, 23, 'Vàng', '#FFFF00', 'h.jpg'),
(24, 24, 'Vàng', '#FFFF00', 'e.jpg'),
(25, 25, 'Vàng', '#FFFF00', 'b.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`) VALUES
(1, 'Trang chủ', NULL),
(2, 'Sản Phẩm', NULL),
(3, 'So sánh', NULL),
(4, 'Giỏ hàng', NULL),
(5, 'Bài viết', NULL),
(6, 'Liên hệ', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `sizes` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `sale` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `id_category`, `sizes`, `name`, `price`, `sale`, `title`, `highlight`, `new_product`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'L,M,S', 'Name', 400000, 0, 'Nowadays the lingerie industry is one of the most successful business spheres. Nowadays the lingerie industry is one of ...', 1, 0, '<div class=\"tab-pane fade active in\" id=\"home\">\r\n			  <h4>Product Information</h4>\r\n                <table class=\"table table-striped\">\r\n				<tbody>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Color:</td><td class=\"techSpecTD2\">Black</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Style:</td><td class=\"techSpecTD2\">Apparel,Sports</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Season:</td><td class=\"techSpecTD2\">spring/summer</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Usage:</td><td class=\"techSpecTD2\">fitness</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Sport:</td><td class=\"techSpecTD2\">122855031</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Brand:</td><td class=\"techSpecTD2\">Shock Absorber</td></tr>\r\n				</tbody>\r\n				</table>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n\r\n			</div>', '2020-04-09 11:38:43', '2020-04-09 11:47:31'),
(2, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(3, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 0, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(4, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(5, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(6, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(7, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 0, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(8, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 0, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(9, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 0, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(10, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 0, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(11, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 0, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(12, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(13, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(14, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(15, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(16, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(17, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 0, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(18, 1, 'L,S,M', 'Name', 200000, 0, '', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(19, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(20, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(21, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(22, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(23, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(24, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(25, 1, 'L,S,M', 'Name', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(26, 1, 'L,S,M', '0', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(27, 1, 'L,S,M', '0', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(28, 1, 'L,S,M', '0', 200000, 0, 'tital', 1, 1, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `img`, `caption`, `content`) VALUES
(1, 'carousel1.png', 'Đồng hồ vàng kiểu cổ điển', 'Đồng hồ đẹp , quý phái , sang trọng , không phai màu'),
(2, 'bootstrap_free-ecommerce.png', 'Combo nhẫn vàng và vòng tay vàng', 'Quý phái ,sang trọng , thích hợp để đeo ra ngoài và không bị phai màu'),
(4, 'carousel3.png', 'Nhẫn bạch kim gắn kim cương', 'phù hợp để tặng người yêu , kiểu dáng sang trọng'),
(5, 'bootstrap-templates.png', 'Dây chuyền kim cương tím', 'Làm nổi bật vẻ đẹp sang trọng . Hôm nay giảm giá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(150) NOT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`) VALUES
(1, 'vu@gmail.com', '$2a$12$QKzAOpspZM.k3d2cE.Uph.P.IuaAegeMZAKr2qfV5LxYcIEISkqYq', 'VÅ© ', 'Nguyen Kiem'),
(3, 'vu1@gmail.com', '$2a$10$zqZc4hSSUJ1zRnkl/HZ7PeOkKiFYmNwKXAvlKH2QN5Gs5nQN/b1jq', 'VÅ©1', '123'),
(4, 'vu1@gmail.com', '$2a$10$oECQbdm2ue37pzRR6ikagOKCZrPQnaJEndBGDXErFbiHnQcomsFbi', 'VÅ©1', '123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
