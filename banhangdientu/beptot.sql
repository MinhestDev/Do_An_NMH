-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 03:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beptot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `position` int(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `photo`, `name`, `position`, `username`, `password`, `email`, `token`) VALUES
(1, NULL, 'Admin', 0, 'Admin', 'admin', 'admin@gmail.com', 'Hikky nè_6263c2ec9aa352.51073502'),
(2, NULL, 'test', 0, 'test', 'test', 'test@test.com', 'test_627deab7d3e181.55752603');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `dob`, `email`, `phone`, `address`, `password`) VALUES
(1, 'Nguyễn Chí Tâm', '2003-06-29', 'ggraygon@gmail.com', 766614580, 'Đà Nẵng ', '1'),
(3, 'Demo', '2001-12-02', 'demo@gmail.com', 987654321, 'Hà Nội', 'Demo123456789@');

-- --------------------------------------------------------

--
-- Table structure for table `manufacture`
--

CREATE TABLE `manufacture` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `datee` date NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacture`
--

INSERT INTO `manufacture` (`id`, `name`, `address`, `email`, `phone`, `datee`, `note`) VALUES
(1, 'Toshiba', 'Beaverton, Oregon, Hoa Kỳ', 'ggraygon@gmail.com', '18008066453', '2023-04-21', ''),
(2, 'Sunhouse', 'Sunhouse', 'xojijo8633@gruppies.com', '0766234580', '2023-04-21', ' '),
(3, 'Tefal', 'Tefal', 'vietnam@vietnam.com', '899999999', '2022-05-07', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `recipent_name` varchar(100) NOT NULL,
  `recipent_address` text NOT NULL,
  `recipent_phone` int(11) NOT NULL,
  `total_cost` double NOT NULL,
  `note` text NOT NULL,
  `status` int(2) NOT NULL,
  `time_order` datetime NOT NULL,
  `time_accept` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `recipient_id`, `recipent_name`, `recipent_address`, `recipent_phone`, `total_cost`, `note`, `status`, `time_order`, `time_accept`) VALUES
(1, 1, 'Nguyễn Văn A', 'TP. Hà Nội', 766614580, 10000000, 'Không', 1, '2023-04-21 14:56:39', '2022-05-07 22:10:06'),
(2, 1, 'Nguyễn Văn B', 'TP. Hồ Chí Minh', 766614580, 4083832, 'Không', 1, '2023-04-21 15:06:44', '2022-05-07 22:10:03'),
(4, 1, 'Nguyễn văn C', 'Quảng Ngãi', 766614580, 9083832, 'Không', 1, '2023-04-21 15:11:59', '2022-05-07 22:13:06'),
(5, 1, 'Nguyễn Văn D', 'Phú Yên', 766614580, 9083832, 'Không', 2, '2023-04-21 15:16:56', '2022-05-07 22:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `cost` double NOT NULL,
  `sold` int(11) DEFAULT 0,
  `manufacture_id` int(10) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `token` text NOT NULL,
  `sale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `quantity`, `description`, `cost`, `sold`, `manufacture_id`, `type_id`, `date`, `token`, `sale`) VALUES
(27, 'Bếp từ demo 7', 99, 'Summer showers call for a sneaker bold enough to stand out under even the darkest of clouds. Meet the leader of the pack: the Nike Air Max 1. Inspired by French architecture, celebrated in sport and revered by fashion, this sneaker introduced the world to Air. Rich jewel tones and semi-transparent moulded overlays bring an eye-catching summer update to this legend—no wonder it\'s reigned supreme since 1987.', 4109000, 1, 1, 1, '2022-05-07', 'product_627602fb2d5401.41983690', 12),
(29, 'Bếp từ demo 6', 999, 'When it fits this good and looks this great, it doesn\'t need a Swoosh. From its Crater rubber outsole to its woven, checkerboard textile detailing to its stretchy, \"hug your foot\" fabric and Nike Air cushioning, the Huarache is bragging rights for your feet.', 4109000, 1, 1, 1, '2022-05-07', 'product_627603fa103ff2.82605890', 12),
(30, 'Bếp từ demo 5', 97, 'Just when you thought you\'d seen it all, Nike wows with an all-new way to quickly and easily get into your shoes.The entire heel (including the sole) of the Nike Go FlyEase hinges open for a totally hands-free entry.Slip in, step down and presto!You\'re all set.', 3519000, 3, 1, 1, '2022-05-07', 'product_627604633dabc4.69449732', 12),
(32, 'Bếp từ demo 4', 99, 'Alyx founder and Givenchy creative director Matthew M. Williams is known for his ability to push fashion into new spaces. His ethos is simple: combine the influence of his experiences in New York and California with recent tech breakthroughs. Previously unveiled at Nike\'s 2020 Future Sport Forum, the Nike Zoom 004 x MMW highlights Nike innovation and creates a space where performance and modern aesthetics collide.', 10575199, 1, 1, 1, '2022-04-07', 'product_6276058fb2e3d4.01055449', 23),
(34, 'Bếp từ demo 3', 97, 'Chinh phục ngày dài thật thoải mái và sẵn sàng cho tất cả với đôi giày chạy bộ adidas này. Thân giày bằng vải lưới thoáng khí giúp đôi chân bạn luôn khô thoáng kể cả khi trời nóng. Lớp đệm trợ lực cho cảm giác đàn hồi trong từng sải bước.\r\nSản phẩm này có sử dụng chất liệu tái chế, là một phần cam kết của chúng tôi hướng tới chấm dứt rác thải nhựa. 20% thân giày làm từ chất liệu có chứa tối thiểu 50% thành phần tái chế.', 2300000, 3, 2, 1, '2022-04-07', 'product_62762ab5632c70.00983638', 3),
(35, 'Bếp từ demo 2', 90, 'Tông Lào hay còn gọi tông Thái rất được ưa chuộng các thập niên trước \r\nNgày này cùng với sự phát triển công nghệ hiện đại dép xỏ ngón tông lào vẫn được ưa chuộng bởi giá cả cực rẻ lại bền 2 3 năm không hỏng \r\nMẫu ảnh bên shop chụp ảnh thật nên các Anh/Chị  yên tâm 100% như hình nhé.', 20000, 10, 3, 5, '2022-05-07', 'product_62762bb297d119.61887077', NULL),
(50, 'Bếp từ demo', 100, ' No description', 10400000, 0, 3, 1, '2023-06-09', 'product_64827b01613245.48598424', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_img`
--

INSERT INTO `product_img` (`id`, `product_id`, `img`) VALUES
(108, 50, '8816862728942760.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'Bếp'),
(2, 'Nồi chiên'),
(3, 'Chảo rán'),
(4, 'Máy hút mùi'),
(5, 'Robot tự động');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacture`
--
ALTER TABLE `manufacture`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`recipient_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacture_id` (`manufacture_id`),
  ADD KEY `product_ibfk_2` (`type_id`);

--
-- Indexes for table `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_img_ibfk_1` (`product_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacture`
--
ALTER TABLE `manufacture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`manufacture_id`) REFERENCES `manufacture` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);

--
-- Constraints for table `product_img`
--
ALTER TABLE `product_img`
  ADD CONSTRAINT `product_img_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
