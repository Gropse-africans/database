-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 27, 2019 at 01:46 PM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gropsmjl_african_super_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `af_admin`
--

CREATE TABLE `af_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_admin`
--

INSERT INTO `af_admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `af_brand`
--

CREATE TABLE `af_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1=enable,0=disabled,99=deleted'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_brand`
--

INSERT INTO `af_brand` (`id`, `name`, `image`, `status`) VALUES
(1, 'MI', 'http://auctionbuy.in/african_super_market/uploads/brand/15746737672081.png', 99),
(2, 'Nike', 'http://auctionbuy.in/african_super_market/uploads/brand/15746752781336.jpg', 1),
(3, 'Adidas', 'http://auctionbuy.in/african_super_market/uploads/brand/15746737349881.png', 99),
(4, 'PUMA', 'http://auctionbuy.in/african_super_market/uploads/brand/15746737168732.png', 99),
(5, 'Burberry', 'http://auctionbuy.in/african_super_market/uploads/brand/15746736913844.png', 99),
(6, 'Dell', 'http://auctionbuy.in/african_super_market/uploads/brand/15746750389062.jpg', 1),
(7, 'PUMA', 'http://auctionbuy.in/african_super_market/uploads/brand/15746752975157.jpg', 1),
(8, 'Levis', 'http://auctionbuy.in/african_super_market/uploads/brand/15746753535460.jpg', 1),
(9, 'Adidas', 'http://auctionbuy.in/african_super_market/uploads/brand/15746753674981.jpg', 1),
(10, 'H & M', 'http://auctionbuy.in/african_super_market/uploads/brand/15767634005928.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `af_cart`
--

CREATE TABLE `af_cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `amount` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_cart`
--

INSERT INTO `af_cart` (`cart_id`, `user_id`, `vendor_id`, `product_id`, `price`, `discount`, `amount`, `quantity`, `total`) VALUES
(4, '10', 1, 1, 100, 10, 90, 3, 270),
(5, '22', 1, 1, 100, 10, 90, 4, 360),
(14, '62', 8, 4, 99, 9.9, 89.1, 1, 89.1),
(19, '64', 8, 14, 299, 29.9, 269.1, 1, 269.1),
(38, '19', 8, 5, 100, 10, 90, 1, 90),
(107, '9', 1, 1, 100, 10, 90, 1, 90),
(110, '62', 1, 1, 100, 10, 90, 3, 270),
(112, '62', 8, 5, 100, 10, 90, 3, 270),
(114, '11', 8, 4, 99, 9.9, 89.1, 1, 89.1),
(115, '11', 8, 5, 100, 10, 90, 1, 90),
(121, '8', 8, 6, 200, 20, 180, 1, 180),
(122, '11', 8, 18, 31, 1.55, 29.45, 1, 29.45);

-- --------------------------------------------------------

--
-- Table structure for table `af_category`
--

CREATE TABLE `af_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=diabled, 1=enabled , 99=deleted',
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_category`
--

INSERT INTO `af_category` (`id`, `parent_id`, `name`, `image`, `status`, `created_at`) VALUES
(1, 0, 'Women', 'https://cdn1.iconfinder.com/data/icons/shopping-and-ecommerce-2/64/E-commerce_and_Shopping-100-512.png', 99, 1568181073),
(2, 0, 'Men', 'https://cdn4.iconfinder.com/data/icons/people-3-3/49/266-512.png', 99, 1568181073),
(3, 0, 'Children', 'https://previews.123rf.com/images/redlinevector/redlinevector1512/redlinevector151201529/49182807-icon-of-womans-silhouette-with-children-and-shopping-cart.jpg', 99, 1568181073),
(4, 0, 'Bags', 'http://auctionbuy.in/african_super_market/uploads/category/15746816587994.png', 0, 1568181073),
(5, 0, 'Electronic', 'http://auctionbuy.in/african_super_market/uploads/category/15774456133030.jpg', 1, 1568181073),
(6, 0, 'Watches', 'http://auctionbuy.in/african_super_market/uploads/category/15746845813673.png', 1, 1568181073),
(7, 0, 'Books', 'http://auctionbuy.in/african_super_market/uploads/category/15773437212990.jpg', 1, 1568181073),
(8, 0, 'Sports & Fitness', 'https://cdn3.iconfinder.com/data/icons/soccer-14/33/sport_shopping-512.png', 99, 1568181073),
(9, 1, 'T-Shirt', 'https://images-na.ssl-images-amazon.com/images/I/71Df%2B3twD8L._UX679_.jpg', 1, 1568181073),
(10, 1, 'Jeans', 'https://images-na.ssl-images-amazon.com/images/I/61vpCBXgULL._UX679_.jpg', 1, 1568181073),
(11, 2, 'Jeans', 'https://slimages.macysassets.com/is/image/MCY/products/2/optimized/8635642_fpx.tif?op_sharpen=1&wid=500&hei=613&fit=fit,1&$filtersm$', 1, 1568181073),
(12, 2, 'T-Shirt', 'https://d1gc60rs3h7wtu.cloudfront.net/catalog/product/cache/0a2bc38b67edd8e5c70546a21088f7a5/s/s/ss19jn_fapliq_m_pln_nbu_l.jpg', 1, 1568181073),
(13, 0, 'Tuityui', 'http://auctionbuy.in/african_super_market/uploads/category/15744294234057.jpg', 99, 1574429423),
(14, 13, 'O]\'[-]', 'http://auctionbuy.in/african_super_market/uploads/category/15744294375202.jpg', 99, 1574429437),
(15, 13, 'Gh', 'http://auctionbuy.in/african_super_market/uploads/category/15744294457384.jpg', 1, 1574429445),
(16, 2, 'Footwear', 'http://auctionbuy.in/african_super_market/uploads/category/15746629633736.png', 1, 1574662963),
(17, 0, 'Child', 'http://auctionbuy.in/african_super_market/uploads/category/15746655633416.png', 99, 1574665563),
(18, 0, 'Children', 'http://auctionbuy.in/african_super_market/uploads/category/15746671554185.png', 1, 1574667155),
(19, 0, 'Men', 'http://auctionbuy.in/african_super_market/uploads/category/15746671879686.png', 1, 1574667187),
(20, 0, 'Women ', 'http://auctionbuy.in/african_super_market/uploads/category/15746672043977.png', 1, 1574667204),
(21, 20, 'T Shirt', 'http://auctionbuy.in/african_super_market/uploads/category/15746676163375.jpg', 1, 1574667616),
(22, 19, 'Tshirt', 'http://auctionbuy.in/african_super_market/uploads/category/15746676414721.png', 1, 1574667641),
(23, 18, 'Toys', 'http://auctionbuy.in/african_super_market/uploads/category/15746676543126.png', 1, 1574667654),
(24, 19, 'Sports Wear', 'http://auctionbuy.in/african_super_market/uploads/category/15746676816251.png', 1, 1574667681),
(25, 5, 'LapTop', 'http://auctionbuy.in/african_super_market/uploads/category/15746677573694.jpg', 1, 1574667757),
(26, 7, 'Activity Books', 'http://auctionbuy.in/african_super_market/uploads/category/15746678097442.jpg', 1, 1574667809),
(27, 4, 'Handbags', 'http://auctionbuy.in/african_super_market/uploads/category/15746817312682.jpg', 1, 1574681731),
(28, 4, 'Sling Bag', 'http://auctionbuy.in/african_super_market/uploads/category/15746819154595.jpg', 1, 1574681915),
(29, 4, 'Wallets', 'http://auctionbuy.in/african_super_market/uploads/category/15746819507943.jpg', 1, 1574681950),
(30, 4, 'Backpacks', 'http://auctionbuy.in/african_super_market/uploads/category/15746819698905.jpg', 1, 1574681969),
(31, 6, 'Women Watches', 'http://auctionbuy.in/african_super_market/uploads/category/15746846184003.jpg', 1, 1574684618),
(32, 0, 'Testing', 'http://auctionbuy.in/african_super_market/uploads/category/15747172671628.JPG', 99, 1574717267),
(33, 19, 'Jeans', 'http://auctionbuy.in/african_super_market/uploads/category/15748378129558.jpg', 1, 1574837812),
(34, 20, 'Footwear', 'http://auctionbuy.in/african_super_market/uploads/category/15748415159874.jpg', 1, 1574841515),
(35, 20, 'Jumpsuits', 'http://auctionbuy.in/african_super_market/uploads/category/15758758813700.jpg', 1, 1575875881),
(36, 0, 'Abc', 'http://auctionbuy.in/african_super_market/uploads/category/15768338229795.png', 99, 1576833822),
(37, 0, 'African Food', 'http://auctionbuy.in/african_super_market/uploads/category/15769137045441.png', 1, 1576913704),
(38, 37, 'Oil', 'http://auctionbuy.in/african_super_market/uploads/category/15773942286232.jpg', 1, 1577394228);

-- --------------------------------------------------------

--
-- Table structure for table `af_category_attribute`
--

CREATE TABLE `af_category_attribute` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `is_filter` int(11) NOT NULL DEFAULT '0' COMMENT '1=filtered field',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '1=select,2=text',
  `is_required` int(11) NOT NULL DEFAULT '1' COMMENT '1=required field',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0=unverify,1=verify'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_category_attribute`
--

INSERT INTO `af_category_attribute` (`id`, `sub_category_id`, `title`, `is_filter`, `type`, `is_required`, `status`) VALUES
(1, 9, 'Colour', 1, 1, 1, 1),
(2, 9, 'Size', 1, 1, 1, 1),
(3, 9, 'Model', 1, 2, 1, 1),
(4, 27, 'Color', 1, 2, 1, 1),
(5, 25, 'RAM', 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `af_category_attribute_value`
--

CREATE TABLE `af_category_attribute_value` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_category_attribute_value`
--

INSERT INTO `af_category_attribute_value` (`id`, `attribute_id`, `value`, `status`) VALUES
(1, 1, 'Red', 1),
(2, 1, 'Black', 1),
(3, 1, 'White', 1),
(4, 1, 'Blue', 1),
(5, 2, 'S', 1),
(6, 2, 'M', 1),
(7, 2, 'L', 1),
(8, 2, 'XL', 1),
(9, 2, 'XXL', 1),
(10, 1, 'Orange', 1),
(11, 1, 'Red', 1);

-- --------------------------------------------------------

--
-- Table structure for table `af_contact_subject`
--

CREATE TABLE `af_contact_subject` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_contact_subject`
--

INSERT INTO `af_contact_subject` (`id`, `subject`, `status`) VALUES
(1, 'Login', 1),
(2, 'Signup', 1);

-- --------------------------------------------------------

--
-- Table structure for table `af_contact_us`
--

CREATE TABLE `af_contact_us` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_contact_us`
--

INSERT INTO `af_contact_us` (`id`, `subject_id`, `email`, `description`, `created_at`) VALUES
(1, 1, 'email', 'description', '2019-12-12 18:13:34'),
(2, 1, 'jonathansmith@gmail.com', 'Gagsgsggey', '2019-12-16 09:14:54'),
(3, 1, 'jonathansmith@gmail.com', 'Xgshshhdhdhdhdhd', '2019-12-16 09:25:55'),
(4, 1, 'ajitbabu@gmail.com', 'udjfiff', '2019-12-18 08:09:33'),
(5, 2, 'jonathansmith@gmail.com', 'Not dig up', '2019-12-19 09:50:41'),
(6, 1, 'jonathansmith@gmail.com', 'Chi', '2019-12-19 09:53:19'),
(7, 1, 'testing@gmail.com', 'ch', '2019-12-19 09:53:24'),
(8, 2, 'ajittrainee.gropse@gmail.com', 'fsvgsggsgdgg', '2019-12-19 13:22:08'),
(9, 2, 'komal123@gmail.com', 'please check', '2019-12-20 06:34:24'),
(10, 2, 'komal.gropse@gmail.com', 'ghj', '2019-12-20 13:58:14'),
(11, 1, 'hdhdhd@gmail.com', 'Dhdddhddhd', '2019-12-23 06:24:58'),
(12, 1, 'cjfjg@gmail.com', 'Chcffj', '2019-12-23 06:27:09'),
(13, 1, 'fjfccjfj@gmail.com', 'Cjcjcv', '2019-12-23 06:29:40'),
(14, 1, 'Komal.gropse@gmail.com', 'Login issue', '2019-12-26 14:04:23'),
(15, 1, 'tester@gmail.com', 'as we xex', '2019-12-27 13:16:50'),
(16, 1, 'bzbaj@gmail.com', 'XX XX', '2019-12-27 13:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `af_conversation`
--

CREATE TABLE `af_conversation` (
  `c_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_conversation`
--

INSERT INTO `af_conversation` (`c_id`, `user_id`, `vendor_id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, 1576664844, 1576666804),
(2, 5, 1, NULL, 1576670064, 1576700386),
(3, 64, 8, NULL, 1576671169, 1576671287),
(4, 64, 1, NULL, 1576677914, 1576677931),
(5, 19, 8, NULL, 1576752189, 1576752189),
(6, 70, 8, NULL, 1576823251, 1576823251),
(7, 8, 8, NULL, 1576850161, 1577370214),
(8, 11, 1, NULL, 1576860272, 1577342947),
(9, 11, 8, NULL, 1577356017, 1577356017),
(10, 5, 8, NULL, 1577449907, 1577449907),
(11, 14, 8, NULL, 1577449908, 1577449908);

-- --------------------------------------------------------

--
-- Table structure for table `af_conversation_reply`
--

CREATE TABLE `af_conversation_reply` (
  `cr_id` int(11) NOT NULL,
  `reply` text CHARACTER SET utf8mb4,
  `user_type` int(11) NOT NULL COMMENT '1=user,2=vendor',
  `sender_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `delete_chat_user` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `created_at` int(11) NOT NULL,
  `c_id_fk` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `af_conversation_reply`
--

INSERT INTO `af_conversation_reply` (`cr_id`, `reply`, `user_type`, `sender_id`, `ip`, `delete_chat_user`, `created_at`, `c_id_fk`) VALUES
(1, 'Hello', 1, 1, '', '', 1576664844, 1),
(2, 'Hello', 1, 1, '', '', 1576664871, 1),
(3, 'Hello Vishal Saini', 2, 3, '', '', 1576664959, 1),
(4, 'Hello Vishal Saini', 2, 3, '', '', 1576665186, 1),
(5, 'Hello Vishal Saini', 2, 3, '', '', 1576665243, 1),
(6, 'Hello Vishal Saini', 2, 3, '', '', 1576665252, 1),
(7, 'Hello Vishal Saini', 2, 3, '', '', 1576665284, 1),
(8, 'Hello Vishal Saini', 2, 3, '', '', 1576665290, 1),
(9, 'Hello Vishal Saini', 2, 3, '', '', 1576665308, 1),
(10, 'Hello Vishal Saini', 2, 3, '', '', 1576665321, 1),
(11, '1111', 2, 3, '', '', 1576665411, 1),
(12, '1111222', 2, 3, '', '', 1576665415, 1),
(13, '2222', 2, 3, '', '', 1576665419, 1),
(14, '222233333', 2, 3, '', '', 1576665422, 1),
(15, '33333', 2, 3, '', '', 1576665426, 1),
(16, '3333344444', 2, 3, '', '', 1576665429, 1),
(17, '444444', 2, 3, '', '', 1576665433, 1),
(18, '444444555555', 2, 3, '', '', 1576665436, 1),
(19, '55555', 2, 3, '', '', 1576665440, 1),
(20, '555556666', 2, 3, '', '', 1576665443, 1),
(21, '66666', 2, 3, '', '', 1576665447, 1),
(22, '6666677777', 2, 3, '', '', 1576665450, 1),
(23, '7777', 2, 3, '', '', 1576665454, 1),
(24, '777788888', 2, 3, '', '', 1576665457, 1),
(25, '88888', 2, 3, '', '', 1576665462, 1),
(26, '88888999999', 2, 3, '', '', 1576665465, 1),
(27, '99999', 2, 3, '', '', 1576665469, 1),
(28, '999990000', 2, 3, '', '', 1576665473, 1),
(29, '999990000', 2, 3, '', '', 1576666766, 1),
(30, '999990000', 2, 3, '', '', 1576666804, 1),
(31, 'hii', 1, 5, '', '', 1576670064, 2),
(32, 'hii', 1, 5, '', '', 1576670360, 2),
(33, 'hdhdh hdhd', 1, 5, '', '', 1576670392, 2),
(34, 'hdhd hdhd', 1, 5, '', '', 1576670396, 2),
(35, 'hshshsh Hs', 1, 5, '', '', 1576670478, 2),
(36, 'hello', 1, 5, '', '', 1576670494, 2),
(37, 'hello man how are you?', 1, 5, '', '', 1576670511, 2),
(38, 'hello admim', 1, 5, '', '', 1576670549, 2),
(39, 'hshshsh', 1, 5, '', '', 1576670557, 2),
(40, 'bzhbshz', 1, 5, '', '', 1576670559, 2),
(41, 'ggzgsh', 1, 5, '', '', 1576670561, 2),
(42, 'hshshsh', 1, 5, '', '', 1576670563, 2),
(43, 'hshhshshdh', 1, 5, '', '', 1576670565, 2),
(44, 'gshhshshdh', 1, 5, '', '', 1576670567, 2),
(45, 'gshdhdhsh', 1, 5, '', '', 1576670568, 2),
(46, 'hdhdhwhahwuiqns', 1, 5, '', '', 1576670571, 2),
(47, 'gzbsowubsbdiejshuennsowishbssheuhsiebsjiqjwhwuhsbdjsijsnsj', 1, 5, '', '', 1576670577, 2),
(48, 'Hello ', 1, 64, '', '', 1576671169, 3),
(49, 'How are you ', 1, 64, '', '', 1576671184, 3),
(50, 'dhddh', 1, 64, '', '', 1576671280, 3),
(51, 'gghgh', 1, 64, '', '', 1576671287, 3),
(52, 'hiiii', 1, 5, '', '', 1576673426, 2),
(53, 'hdhdhd hdhd', 1, 5, '', '', 1576673901, 2),
(54, 'xhxxxh', 1, 5, '', '', 1576674143, 2),
(55, 'nnnb', 1, 5, '', '', 1576674447, 2),
(56, 'Nitesh', 1, 5, '', '', 1576674632, 2),
(57, 'uffff', 1, 5, '', '', 1576674636, 2),
(58, ' bcccj', 1, 5, '', '', 1576674970, 2),
(59, 'jjjjj', 1, 5, '', '', 1576675008, 2),
(60, ' jcjcjc', 1, 5, '', '', 1576675013, 2),
(61, 'you', 1, 5, '', '', 1576675044, 2),
(62, 'cncccnc', 1, 5, '', '', 1576675067, 2),
(63, 'hii', 1, 5, '', '', 1576675150, 2),
(64, 'gg', 1, 5, '', '', 1576676872, 2),
(65, 'ghh', 1, 5, '', '', 1576677015, 2),
(66, 'hii', 1, 64, '', '', 1576677914, 4),
(67, 'hello', 1, 64, '', '', 1576677931, 4),
(68, 'Nitesh ', 1, 5, '', '', 1576696451, 2),
(69, 'nitesh', 1, 5, '', '', 1576696546, 2),
(70, 'nitesh ', 1, 5, '', '', 1576696605, 2),
(71, 'nitesh ', 1, 5, '', '', 1576696609, 2),
(72, 'nitesh ', 1, 5, '', '', 1576696612, 2),
(73, 'nitesh ', 1, 5, '', '', 1576696621, 2),
(74, 'nitesh kijjjj', 1, 5, '', '', 1576696626, 2),
(75, 'nirredfgghhhgh', 1, 5, '', '', 1576696743, 2),
(76, 'nirredfgghhhgh', 1, 5, '', '', 1576696751, 2),
(77, 'bhhhhh', 1, 5, '', '', 1576696780, 2),
(78, 'Naveen', 1, 5, '', '', 1576696989, 2),
(79, 'gghhh', 1, 5, '', '', 1576697097, 2),
(80, 'gghhhj vvvvk', 1, 5, '', '', 1576697115, 2),
(81, 'bou', 1, 5, '', '', 1576697231, 2),
(82, 'boughhh', 1, 5, '', '', 1576697256, 2),
(83, 'k', 1, 5, '', '', 1576697481, 2),
(84, 'ggggg', 1, 5, '', '', 1576697567, 2),
(85, 'ggggg', 1, 5, '', '', 1576697572, 2),
(86, 'leeweeee', 1, 5, '', '', 1576697583, 2),
(87, 'ggggy', 1, 5, '', '', 1576698340, 2),
(88, 'ggghtgj dhhfbx', 1, 5, '', '', 1576698456, 2),
(89, 'fggyhhuffigffufuf', 1, 5, '', '', 1576698505, 2),
(90, 'cjcjcdhdhdhfjfjfjfjgjg', 1, 5, '', '', 1576698514, 2),
(91, 'ffffgguygg', 1, 5, '', '', 1576698767, 2),
(92, 'ggyyhjkb', 1, 5, '', '', 1576700386, 2),
(93, 'hiii', 1, 19, '', '', 1576752189, 5),
(94, 'hii', 1, 70, '', '', 1576823251, 6),
(95, 'hiii', 1, 8, '', '', 1576850161, 7),
(96, 'hey', 1, 11, '', '', 1576860272, 8),
(97, 'will like a service ', 1, 11, '', '', 1577342947, 8),
(98, 'hi im looking to book a make up artist#test', 1, 11, '', '', 1577356017, 9),
(99, 'hii', 1, 8, '', '', 1577358113, 7),
(100, 'bxjx', 1, 8, '', '', 1577358700, 7),
(101, 'hii', 1, 8, '', '', 1577370214, 7),
(102, 'h', 1, 5, '', '', 1577449907, 10),
(103, 'hii', 1, 14, '', '', 1577449908, 11);

-- --------------------------------------------------------

--
-- Table structure for table `af_devilery_charges`
--

CREATE TABLE `af_devilery_charges` (
  `id` int(11) NOT NULL,
  `service_fees` float NOT NULL DEFAULT '0',
  `tax` float NOT NULL DEFAULT '0',
  `shipping_charges` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_devilery_charges`
--

INSERT INTO `af_devilery_charges` (`id`, `service_fees`, `tax`, `shipping_charges`) VALUES
(1, 50, 40, 100);

-- --------------------------------------------------------

--
-- Table structure for table `af_files`
--

CREATE TABLE `af_files` (
  `id` int(11) NOT NULL,
  `file_path` text NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_files`
--

INSERT INTO `af_files` (`id`, `file_path`, `file_name`, `file_type`) VALUES
(1, 'https://rukminim1.flixcart.com/image/800/960/jjkbhjk0/t-shirt/c/k/a/', 'xxl-s-t-a-r-himgiri-international-original-imaf73t7tynhwwyv.jpeg?q=50', 'jpg'),
(2, 'https://rukminim1.flixcart.com/image/800/960/k15bjww0/top/4/m/r/', 'xs-gujari318-gujari-original-imafks8qygjfd3pf.jpeg?q=50', 'jpg'),
(3, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574521625720720T87T0252-W20W0.jpg', 'jpg'),
(4, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574521625sgesisgggaegesgse1a1.jpeg', 'jpeg'),
(5, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574663642iagaiiaamge2meiam2e2.jpg', 'jpg'),
(6, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574663642iagiggmgaeisgasmgiss.jpg', 'jpg'),
(7, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574663642sgsggsmiegssaeggmsea.jpg', 'jpg'),
(8, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574663642soseosssoeosheeeosoh.png', 'png'),
(9, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574667930dlloododw1odna1dlll1.jpg', 'jpg'),
(10, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574667930wdwnwwlnoowonoodlowl.jpg', 'jpg'),
(11, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574667930ai4mamgsissiagmg4mes.jpg', 'jpg'),
(12, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574667930soosobkkkooskokobsbs.png', 'png'),
(13, 'http://auctionbuy.in/african_super_market/uploads/products/', '15746731481ggi3eee1m13misi1ies.jpg', 'jpg'),
(14, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574673148esg1igs0g0eigggm1me1.jpg', 'jpg'),
(15, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574673148e1ge1eg1ssa111sae1i1.jpg', 'jpg'),
(16, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574673148iieag1ams2gisse1maee.jpg', 'jpg'),
(17, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574676169igmam1iege5ism5si1ea.jpg', 'jpg'),
(18, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574676169a6m1sg1iii6m1isas6aa.jpg', 'jpg'),
(19, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574676169ams22iis2mggis220ig0.jpg', 'jpg'),
(20, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574676169ntspsnsaspnppatantat.png', 'png'),
(21, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574682664enag-agmmx-i-ix0-m0i.png', 'png'),
(22, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574683107a9GaGGPPaGiPG9dddsia.png', 'png'),
(23, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574683107-la-mo--dgddmanortam.png', 'png'),
(24, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574684049gi2maeg2eiggggggsmms.jpg', 'jpg'),
(25, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574684049sesa1aasgiie1siiag1g.jpg', 'jpg'),
(26, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574684049geamgeasiieiemaimemi.jpg', 'jpg'),
(27, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574684049ssossseossseohsshoho.png', 'png'),
(28, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574684154gssesssgimeismesii9g.jpg', 'jpg'),
(29, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574684154a1ag8gieeee8aa81as18.jpg', 'jpg'),
(30, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574684154m1siaami1a171aamegia.jpg', 'jpg'),
(31, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574684154m2g0egasmagge2a2sgie.jpg', 'jpg'),
(32, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574685558vwvinvaaepie-0--0n-s.png', 'png'),
(33, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574685558-ie-i-mlddtamln-vtdd.png', 'png'),
(34, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574685671-ea0nisuoegnliolm-pr.png', 'png'),
(35, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574685671n0aegn-xi00ii0-n-aon.png', 'png'),
(36, 'http://auctionbuy.in/african_super_market/uploads/products/', '15746874451ig1am1gsa4si44aeai1.jpg', 'jpg'),
(37, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574687445segaisee99e1igi1emai.jpg', 'jpg'),
(38, 'http://auctionbuy.in/african_super_market/uploads/products/', '157468744581i1g1a11gia88s8aas8.jpg', 'jpg'),
(39, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574687445sg77ig7aia1mmgim7g1g.jpg', 'jpg'),
(40, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574692833mg8esi8meaisgig8ag8e.jpg', 'jpg'),
(41, 'http://auctionbuy.in/african_super_market/uploads/products/', '15746928336smgse6eegg6amagsmeg.jpg', 'jpg'),
(42, 'http://auctionbuy.in/african_super_market/uploads/products/', '15746928337egmmaasagesesaaism7.jpg', 'jpg'),
(43, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574692833saesgeaiemeeimmsmasi.jpg', 'jpg'),
(44, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574694309asaee24me42ig2m444is.jpg', 'jpg'),
(45, 'http://auctionbuy.in/african_super_market/uploads/products/', '15746943095g2agmg5s5sa5eig5ga2.jpg', 'jpg'),
(46, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574694309ie6eias6mim62g2siema.jpg', 'jpg'),
(47, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574694309o1waoonw1a1nooa1ld1n.jpg', 'jpg'),
(48, 'http://auctionbuy.in/african_super_market/uploads/products/', '157484169916dwno6wndnon16wll6l.jpg', 'jpg'),
(49, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574841699o4wonod4donno4dw1ooa.jpg', 'jpg'),
(50, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574841699megsemssemm227a77ms2.jpg', 'jpg'),
(51, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574841699i30e3i33a0ei0mmaieee.jpg', 'jpg'),
(52, 'http://auctionbuy.in/african_super_market/uploads/products/', '1575876092dl113oollddwdoanolaa.jpg', 'jpg'),
(53, 'http://auctionbuy.in/african_super_market/uploads/products/', '1575876092ams0g005geseeggiim0a.jpg', 'jpg'),
(54, 'http://auctionbuy.in/african_super_market/uploads/products/', '1575876092mega1a5emsiim1m5seea.jpg', 'jpg'),
(55, 'http://auctionbuy.in/african_super_market/uploads/products/', '1575876092e9iimi9ageieii4semie.jpg', 'jpg'),
(56, 'http://auctionbuy.in/african_super_market/uploads/service/', '1576671147adoolwnoawd66lwwlalo.jpg', 'jpg'),
(57, 'http://auctionbuy.in/african_super_market/uploads/service/', '157667116935ldodd33wnnn5dldoow.jpg', 'jpg'),
(58, 'http://auctionbuy.in/african_super_market/uploads/service/', '1576671304ddd34lo3lond3ddnadod.jpg', 'jpg'),
(59, 'http://auctionbuy.in/african_super_market/uploads/service/', '1576671340s5igms3a35easa5iiii5.jpg', 'jpg'),
(60, 'http://auctionbuy.in/african_super_market/uploads/products/', '157674100611111111111111111111.png', 'png'),
(61, 'http://auctionbuy.in/african_super_market/uploads/products/', '157674100622222222222222222222.png', 'png'),
(62, 'http://auctionbuy.in/african_super_market/uploads/products/', '157674100633333333333333333333.png', 'png'),
(63, 'http://auctionbuy.in/african_super_market/uploads/products/', '1576741006ErvGCeiEoePnPsrrreGD.png', 'png'),
(64, 'http://auctionbuy.in/african_super_market/uploads/service/', '1576753331mieeess1eemggse1mgig.png', 'png'),
(65, 'http://auctionbuy.in/african_super_market/uploads/service/', '1576753331wl22al2aandononadddo.png', 'png'),
(66, 'http://auctionbuy.in/african_super_market/uploads/service/', '15767533311aowdadoawwo1o1ndooo.png', 'png'),
(67, 'http://auctionbuy.in/african_super_market/uploads/service/', '15767606842immm2gmmimmmgmsas2i.png', 'png'),
(68, 'http://auctionbuy.in/african_super_market/uploads/service/', '15767606848imgggsss8iai88esemi.jpg', 'jpg'),
(69, 'http://auctionbuy.in/african_super_market/uploads/service/', '15768254034nonlaawwaawwo4wnon4.png', 'png'),
(70, 'http://auctionbuy.in/african_super_market/uploads/service/', '1576825403sism6em161eg6mmmm6ia.jpg', 'jpg'),
(71, 'http://auctionbuy.in/african_super_market/uploads/service/', '1576834255adwd3ndoowoonnoaoooo.jpg', 'jpg'),
(72, 'http://auctionbuy.in/african_super_market/uploads/service/', '15768464686s65ssi6eiemg6me5ii6.jpg', 'jpg'),
(73, 'http://auctionbuy.in/african_super_market/uploads/products/', '1576846754ol2w2dd2o2aalddwdodo.jpg', 'jpg'),
(74, 'http://auctionbuy.in/african_super_market/uploads/products/', '15768467544aga4sm1s1giae1mgssg.jpg', 'jpg'),
(75, 'http://auctionbuy.in/african_super_market/uploads/products/', '1577394022222--2l1s0-00s121-s-.jpg', 'jpg'),
(76, 'http://auctionbuy.in/african_super_market/uploads/products/', '1577394022-000sl0-6sl-010l0001.jpg', 'jpg'),
(77, 'http://auctionbuy.in/african_super_market/uploads/products/', '157739402201l-00slls---6666160.jpg', 'jpg'),
(78, 'http://auctionbuy.in/african_super_market/uploads/products/', '1577444440nao7aadnaownnonwdood.jpg', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `af_orders`
--

CREATE TABLE `af_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `delivery_charges` float NOT NULL DEFAULT '0',
  `tax` float NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0',
  `latitude` float NOT NULL DEFAULT '0',
  `longitude` float NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL COMMENT '1=cod , 2=online',
  `payment_status` int(11) NOT NULL COMMENT '0= pending,1=success,2=fail',
  `status` int(11) NOT NULL COMMENT '0=pending,1=place order,2=dispatch,3=on the way,4=completed,5=cancel',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_orders`
--

INSERT INTO `af_orders` (`order_id`, `user_id`, `user_name`, `mobile`, `amount`, `delivery_charges`, `tax`, `total`, `latitude`, `longitude`, `address`, `landmark`, `payment_type`, `payment_status`, `status`, `created_at`) VALUES
(1, 9, 'Vishal Saini', '7065227217', 200, 100, 40, 340, 28.1246, 78.1246, '', 'TechGropse Pvt. Ltd.', 2, 0, 1, '2019-12-10 16:19:29'),
(2, 10, 'Vishal Saini', '7065227217', 200, 100, 40, 340, 28.1246, 78.1246, '', 'TechGropse Pvt. Ltd.', 2, 0, 1, '2019-12-10 16:21:54'),
(3, 64, '', '0987654321', 179.1, 100, 40, 319.1, 28.6279, 77.3749, '', 'Noida', 2, 0, 1, '2019-12-13 16:22:33'),
(4, 64, '', '0987654321', 719.1, 100, 40, 859.1, 28.6279, 77.3749, '', 'Noida', 2, 0, 1, '2019-12-13 17:55:16'),
(5, 64, 'Ajit Babu', '0987654321', 180, 100, 40, 320, 28.6279, 77.3749, 'Noida Electronic City, H Block, Sector 62, Noida, Uttar Pradesh 201301, India', 'Noida', 2, 0, 1, '2019-12-13 18:09:26'),
(6, 5, 'Nitesh', '9999999999', 230, 100, 40, 230, 28.626, 77.3772, 'India ,Noida ,Sector 63', 'Sector 63 Rd, C Block, Phase 2, Industrial Area, Sector 62, Noida, Uttar Pradesh, India', 2, 0, 1, '2019-12-16 18:28:18'),
(7, 8, 'Komal Bajaj', '123456', 89.1, 100, 40, 229.1, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 0, 1, '2019-12-18 13:04:35'),
(8, 11, 'Clarence Early', '4016597876', 269.1, 100, 40, 409.1, 33.8704, -117.861, 'Chapman-All America, Placentia, CA 92870, USA', 'Placentia', 2, 0, 1, '2019-12-18 14:52:56'),
(9, 8, 'Komal Bajaj', '123456', 534, 100, 40, 674, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 0, 1, '2019-12-18 15:38:28'),
(10, 8, 'Komal Bajaj', '123456', 534, 100, 40, 674, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 0, 1, '2019-12-18 15:41:15'),
(11, 8, 'Komal Bajaj', '123456', 267, 100, 40, 407, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 0, 1, '2019-12-18 15:45:18'),
(12, 11, 'Clarence Early', '4016597876', 270, 100, 40, 410, 33.8704, -117.861, 'Chapman-All America, Placentia, CA 92870, USA', 'Placentia', 2, 0, 1, '2019-12-19 03:17:47'),
(13, 19, 'Testing', '12345678925', 450, 100, 40, 590, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 0, 1, '2019-12-19 15:59:24'),
(14, 19, 'Testing', '12345678925', 225, 100, 40, 365, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 0, 1, '2019-12-19 16:11:16'),
(15, 5, 'Nitesh', '9999999999', 410, 100, 40, 410, 37.7858, -122.406, 'Gurugram', 'Gurugram, Haryana, India', 2, 0, 1, '2019-12-19 16:51:49'),
(16, 8, 'Komal Bajaj', '123456', 180, 100, 40, 320, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 0, 1, '2019-12-20 11:15:24'),
(17, 70, 'Komal', '98765432', 534, 100, 40, 674, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 0, 1, '2019-12-20 11:46:42'),
(18, 70, 'Komal', '98765432', 719.1, 100, 40, 859.1, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 0, 1, '2019-12-20 12:01:52'),
(19, 70, 'Komal tester', '98765432', 180, 100, 40, 320, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 0, 1, '2019-12-20 12:27:00'),
(20, 68, 'Komal Garg', '8467948479', 320, 100, 40, 320, 28.6259, 77.3774, 'Hello India - Groceries, Halal Meat & Restaurant', '3275 Regent Blvd, Irving, TX 75063, USA', 2, 0, 1, '2019-12-20 12:36:49'),
(21, 9, 'Ajit Babu', '8953597827', 356.1, 100, 40, 496.1, 28.6279, 77.3749, 'Noida Electronic City, H Block, Sector 62, Noida, Uttar Pradesh 201301, India', 'Noida', 2, 0, 1, '2019-12-20 15:25:22'),
(22, 8, 'Komal Bajaj', '123456', 538.2, 100, 40, 678.2, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 2, 0, 1, '2019-12-20 19:22:14'),
(23, 8, 'Komal Bajaj', '123456656', 678.2, 100, 40, 678.2, 28.6259, 77.3772, 'Sector 63', 'Sector 63, Noida, Uttar Pradesh, India', 2, 0, 1, '2019-12-26 18:34:12'),
(24, 8, 'Komal Bajaj', '123456656', 410, 100, 40, 410, 28.626, 77.3773, 'Sector 63', 'Sector 63, Noida, Uttar Pradesh, India', 2, 0, 1, '2019-12-26 19:21:12'),
(25, 8, 'Komal Bajaj', '123456656', 230, 100, 40, 230, 28.6259, 77.3772, 'Sector 63', 'Sector 63, Noida, Uttar Pradesh, India', 2, 0, 1, '2019-12-26 19:46:37'),
(26, 8, 'Komal Bajaj', '123456656', 318.2, 100, 40, 318.2, 28.6258, 77.3772, 'Sector 63', 'Sector 63, Noida, Uttar Pradesh, India', 2, 0, 1, '2019-12-26 19:50:42'),
(27, 5, 'Nitesh', '9999999999', 408.2, 100, 40, 408.2, 28.6259, 77.3775, 'D-4, D Block, Sector 59, Noida, Uttar Pradesh 201307, India', 'Lajpat Nagar sahibabad, Kali Mandir Marg, Om nagar Mohan Nagar, Mohan Nagar, Rajendra Nagar, Ghaziabad, Uttar Pradesh 201007, India', 2, 0, 1, '2019-12-27 17:32:57'),
(28, 14, 'Tester', '6543210', 89.1, 100, 40, 229.1, 28.6285, 77.3769, '96, H Block, Sector 63, Noida, Uttar Pradesh 201301, India', '96, H Block, Sector 63, Noida, Uttar Pradesh 201301, India', 2, 0, 1, '2019-12-27 17:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `af_order_items`
--

CREATE TABLE `af_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `amount` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL,
  `total` float NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_order_items`
--

INSERT INTO `af_order_items` (`id`, `order_id`, `product_id`, `vendor_id`, `price`, `discount`, `amount`, `quantity`, `total`, `created_at`) VALUES
(1, 1, 1, 1, 100, 10, 90, 1, 90, '2019-12-10 08:00:00'),
(2, 2, 1, 1, 100, 10, 90, 2, 180, '2019-12-10 16:21:54'),
(3, 3, 4, 8, 99, 9.9, 89.1, 1, 89.1, '2019-12-13 10:52:33'),
(4, 3, 5, 8, 100, 10, 90, 1, 90, '2019-12-13 10:52:33'),
(5, 4, 7, 8, 799, 79.9, 719.1, 1, 719.1, '2019-12-13 12:25:16'),
(6, 5, 6, 8, 200, 20, 180, 1, 180, '2019-12-13 12:39:26'),
(7, 6, 1, 1, 100, 10, 90, 1, 90, '2019-12-16 12:58:18'),
(8, 7, 4, 8, 99, 9.9, 89.1, 1, 89.1, '2019-12-18 07:34:35'),
(9, 8, 5, 8, 100, 10, 90, 2, 180, '2019-12-18 09:22:56'),
(10, 8, 4, 8, 99, 9.9, 89.1, 1, 89.1, '2019-12-18 09:22:56'),
(11, 9, 13, 8, 300, 33, 267, 2, 534, '2019-12-18 10:08:28'),
(12, 10, 13, 8, 300, 33, 267, 2, 534, '2019-12-18 10:11:15'),
(13, 11, 13, 8, 300, 33, 267, 1, 267, '2019-12-18 10:15:18'),
(14, 12, 5, 8, 100, 10, 90, 1, 90, '2019-12-18 21:47:47'),
(15, 12, 6, 8, 200, 20, 180, 1, 180, '2019-12-18 21:47:47'),
(16, 13, 6, 8, 200, 20, 180, 2, 360, '2019-12-19 10:29:24'),
(17, 13, 5, 8, 100, 10, 90, 1, 90, '2019-12-19 10:29:24'),
(18, 14, 5, 8, 100, 10, 90, 2, 180, '2019-12-19 10:41:16'),
(19, 14, 11, 8, 50, 5, 45, 1, 45, '2019-12-19 10:41:16'),
(20, 15, 1, 1, 100, 10, 90, 2, 180, '2019-12-19 11:21:49'),
(21, 16, 5, 8, 100, 10, 90, 2, 180, '2019-12-20 05:45:24'),
(22, 17, 13, 8, 300, 33, 267, 2, 534, '2019-12-20 06:16:42'),
(23, 18, 7, 8, 799, 79.9, 719.1, 1, 719.1, '2019-12-20 06:31:52'),
(24, 19, 6, 8, 200, 20, 180, 1, 180, '2019-12-20 06:57:00'),
(25, 20, 6, 8, 200, 20, 180, 1, 180, '2019-12-20 07:06:49'),
(26, 21, 4, 8, 99, 9.9, 89.1, 1, 89.1, '2019-12-20 09:55:22'),
(27, 21, 13, 8, 300, 33, 267, 1, 267, '2019-12-20 09:55:22'),
(28, 22, 14, 8, 299, 29.9, 269.1, 2, 538.2, '2019-12-20 13:52:14'),
(29, 23, 14, 8, 299, 29.9, 269.1, 2, 538.2, '2019-12-26 13:04:12'),
(30, 24, 5, 8, 100, 10, 90, 3, 270, '2019-12-26 13:51:12'),
(31, 25, 5, 8, 100, 10, 90, 1, 90, '2019-12-26 14:16:37'),
(32, 26, 4, 8, 99, 9.9, 89.1, 2, 178.2, '2019-12-26 14:20:42'),
(33, 27, 1, 1, 100, 10, 90, 1, 90, '2019-12-27 12:02:57'),
(34, 27, 4, 8, 99, 9.9, 89.1, 2, 178.2, '2019-12-27 12:02:57'),
(35, 28, 4, 8, 99, 9.9, 89.1, 1, 89.1, '2019-12-27 12:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `af_products`
--

CREATE TABLE `af_products` (
  `product_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `sub_category_id` int(11) NOT NULL DEFAULT '0',
  `brand_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `price` float NOT NULL DEFAULT '0' COMMENT 'in usd',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `images` varchar(255) NOT NULL,
  `is_featured` int(11) NOT NULL DEFAULT '0',
  `latitude` float NOT NULL DEFAULT '0',
  `longitude` float NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0=unverify,1=verify,99=deleted',
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_products`
--

INSERT INTO `af_products` (`product_id`, `group_id`, `vendor_id`, `category_id`, `sub_category_id`, `brand_id`, `name`, `price`, `quantity`, `discount`, `description`, `images`, `is_featured`, `latitude`, `longitude`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 9, 7, 'Polo Shirt', 100, 0, 10, 'New Data', '1,2', 1, 78.1246, 28.1246, 3.93213, 0, 1568181073, 1576848073),
(2, 0, 1, 1, 9, 7, 'Polo Shirt', 150, 10, 10, 'New Data', '1,2', 1, 78.1246, 28.1246, 2, 0, 1568181073, 1576156112),
(3, 0, 8, 1, 9, 7, 'Full T-shirt', 280, 50, 10, '<p>Cotton blend sporty t-shirt for women</p>', '21,4', 0, 0, 0, 0, 99, 1574520825, 1574682664),
(4, 0, 8, 2, 16, 7, 'Shoes', 99, 5, 10, '<p><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Mens Footwear</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> Online. Shop from latest collection of Shoes & Footwear for Men Online. Shop for Sports, Formal & Casual Footwear ✯ Top Brands ✯ COD ...</span><br></p>', '24,25,26,27', 0, 0, 0, 1.71875, 1, 1574663642, 1577093814),
(5, 0, 8, 7, 26, 6, 'Classic Book', 100, 5, 10, '<p><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">Read Booming </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Brands</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> - Inspiring Journeys of 11 \"Made In </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">India</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">\" </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Brands book</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> reviews & author details and more at Amazon.in. Free delivery on qualified orders.</span><br></p>', '9,10,11,12', 0, 28.621, 77.3812, 2.875, 1, 1574667930, 1576835895),
(6, 0, 8, 5, 25, 6, 'Laptop', 200, 3, 10, '<p><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Laptops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">. </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Laptops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> are a must-have-device for everyone as these are easy-to-use, portable, energy savers and more. On Flipkart, you can find </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">laptops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> from the top brands like Acer, Apple, Asus, Dell, HP, Lenovo, Gaming </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Laptops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> and more. </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Laptops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> prices range between Rs 10,000 and Rs 2,00,000.</span><br></p>', '13,14,15,16', 0, 28.621, 77.3812, 4.5, 1, 1574673148, 1574684197),
(7, 0, 8, 2, 11, 8, 'Denim jeans', 799, 12, 10, '<p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAUQAA\" data-ved=\"2ahUKEwjB4ujSjYXmAhVLgI8KHYjbA9cQFSgAMAJ6BAgFEAA\"><div class=\"rc\" style=\"position: relative;\"></div></div></div></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAQQAA\" data-ved=\"2ahUKEwjB4ujSjYXmAhVLgI8KHYjbA9cQFSgAMAF6BAgEEAA\"><div class=\"rc\" style=\"position: relative;\"><div class=\"s\" style=\"max-width: 48em; color: rgb(84, 84, 84); line-height: 1.57;\"><div><span class=\"st\" style=\"line-height: 1.57; overflow-wrap: break-word;\"><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">en Jeans</em><span> </span>- Shop from the latest range of comfortable & trendy regular<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">jeans</em>, low ... Buy<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Jeans</em><span> </span>for<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Mens</em><span> </span>from top brands at Myntra. ... U.S. Polo Assn.<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Denim</em><span> </span>Co.</span></div></div><div data-base-uri=\"/search?rlz=1C1CHBF_enIN859IN859&sxsrf=ACYBGNRLIqntVz4NnzD5WuHJV-eqOQVbbA:1574676113017\" id=\"ed_8\" data-ved=\"2ahUKEwjB4ujSjYXmAhVLgI8KHYjbA9cQ2Z0BMAF6BAgEEAc\"></div></div></div></div>', '78,18,19,20', 0, 28.621, 77.3812, 2, 1, 1574676169, 1577444440),
(8, 0, 8, 1, 10, 8, 'jeans', 50, 1, 10, '<p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAcQAA\" data-ved=\"2ahUKEwjcmea0q4XmAhWIQI8KHekHAgwQFSgAMA16BAgHEAA\"><div class=\"rc\" style=\"position: relative;\"></div></div></div></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAIQAA\" data-ved=\"2ahUKEwjcmea0q4XmAhWIQI8KHekHAgwQFSgAMAx6BAgCEAA\"><div class=\"rc\" style=\"position: relative;\"><div class=\"s\" style=\"max-width: 48em; color: rgb(84, 84, 84); line-height: 1.57;\"><div><span class=\"st\" style=\"line-height: 1.57; overflow-wrap: break-word;\">Buy<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Jeans</em><span> </span>for<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Women</em><span> </span>online at best prices. Shop stylish ladies<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">jeans</em>, ripped, boyfriend, cropped, high waisted<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">jeans</em><span> </span>for ladies/girls for all sizes from top brands ...</span></div></div><div data-base-uri=\"/search?rlz=1C1CHBF_enIN859IN859&sxsrf=ACYBGNTEeOcx_vCBx91oxsGpkww2xZ3xyw:1574684103125\" id=\"ed_6\" data-ved=\"2ahUKEwjcmea0q4XmAhWIQI8KHekHAgwQ2Z0BMAx6BAgCEAc\"></div></div></div></div>', '28,29,30,31', 0, 28.621, 77.3812, 0, 99, 1574684154, 1574687310),
(9, 0, 1, 1, 9, 2, 'New Shirt1', 22, 2, 0, '<p>sdgsdfrt</p>', '32,33', 0, 0, 0, 0, 99, 1574685558, 0),
(10, 0, 5, 1, 9, 6, 'cvhgh', 666, 6, 0, '<p>nmmhj</p>', '34,35', 0, 28.593, 77.3052, 0, 99, 1574685671, 0),
(11, 0, 8, 1, 10, 8, 'jeans', 50, 4, 10, '<p></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAoQAA\" data-ved=\"2ahUKEwiq8qfat4XmAhXFqY8KHaObB7IQFSgAMA16BAgKEAA\"><div class=\"rc\" style=\"position: relative;\"></div></div></div><p></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAIQAA\" data-ved=\"2ahUKEwiq8qfat4XmAhXFqY8KHaObB7IQFSgAMAx6BAgCEAA\"><div class=\"rc\" style=\"position: relative;\"><div class=\"s\" style=\"max-width: 48em; color: rgb(84, 84, 84); line-height: 1.57;\"><div><span class=\"st\" style=\"line-height: 1.57; overflow-wrap: break-word;\">Buy<span>&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Jeans</em><span>&nbsp;</span>for<span>&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Women</em><span>&nbsp;</span>online at best prices. Shop stylish ladies<span>&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">jeans</em>, ripped, boyfriend, cropped, high waisted<span>&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">jeans</em><span>&nbsp;</span>for ladies/girls for all sizes from top brands&nbsp;...</span></div></div><div data-base-uri=\"/search?rlz=1C1CHBF_enIN859IN859&amp;sxsrf=ACYBGNQ9vjwmpdHXBc-H2BgbJyb0piCyqQ:1574687403019\" id=\"ed_6\" data-ved=\"2ahUKEwiq8qfat4XmAhXFqY8KHaObB7IQ2Z0BMAx6BAgCEAc\"></div></div></div></div>', '36,37,38,39', 0, 28.621, 77.3812, 0, 1, 1574687445, 1575019484),
(12, 0, 8, 20, 21, 8, 'tshirt', 50, 1, 10, '<p><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Levi\'s</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">®&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">women\'s t-shirts</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;&amp;&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">tops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;are a modern twist on classic styles that have defined generations. Shop our entire collection of styled&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">t-shirts</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">, graphic&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">tees</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;&amp;&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">tops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;..</span><br></p>', '40,41,42,43', 0, 28.621, 77.3812, 5, 1, 1574692833, 0),
(13, 0, 8, 4, 27, 9, 'women handbag', 300, 3, 11, '<p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 28px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAQQAA\" data-ved=\"2ahUKEwjomKyK0YXmAhUPzDgGHSzgCWoQFSgAMBJ6BAgEEAA\"><div class=\"rc\" style=\"position: relative;\"></div></div></div></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAYQAA\" data-ved=\"2ahUKEwjomKyK0YXmAhUPzDgGHSzgCWoQFSgAMBF6BAgGEAA\"><div class=\"rc\" style=\"position: relative;\"><div class=\"s\" style=\"max-width: 48em; color: rgb(84, 84, 84); line-height: 1.57;\"><div><span class=\"st\" style=\"line-height: 1.57; overflow-wrap: break-word;\">Buy<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Bags</em><span> </span>For<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Women</em><span> </span>Online in India. Shop Latest Collection of<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Handbags</em>, Sling<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Bags</em>, Clutches, Shopping<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Bags</em>, Wallets for<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Women</em><span> </span>at Limeroad.com. Discover ...</span></div></div><div data-base-uri=\"/search?rlz=1C1CHBF_enIN859IN859&sxsrf=ACYBGNSNavgDt4ZOEFOhK0jplg6I-jPYZA:1574694214640\" id=\"ed_12\" data-ved=\"2ahUKEwjomKyK0YXmAhUPzDgGHSzgCWoQ2Z0BMBF6BAgGEAY\"></div></div></div></div>', '44,45,46,47', 0, 28.621, 77.3812, 2.3125, 1, 1574694309, 1576061023),
(14, 0, 8, 20, 34, 8, 'Heels', 299, 6, 10, '<p><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">High Heels - Buy stylish collection of </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">women high heels</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">, heeled sandals & stilettos @ Myntra. ✯ Free Shipping ✯ COD ✯ Easy returns and exchanges.</span><br></p>', '48,49,50,51', 0, 28.621, 77.3812, 5, 1, 1574841699, 1577094212),
(15, 0, 8, 20, 35, 8, ' Jumpsuit', 100, 5, 20, '<p><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">Shop for stylish </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">jumpsuits</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> for </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">women</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> online. Choose from a range of colors, patterns and styles.</span><br></p>', '52,53,54,55', 0, 28.621, 77.3812, 2.25, 1, 1575876092, 1577093345),
(17, 0, 8, 19, 22, 9, 'tshirt', 299, 5, 5, '<p><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">Go casual the modish way with our exhaustive fleet of </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">T-shirts</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> for </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">men</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">, that encompasses stylish polo neck tees, classic slim fit crews, graphic printed henleys and a whole lot more!</span><wbr style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> ... Abstract Regular Fit Crew- Neck </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">T-shirt</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">.</span><wbr style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> .</span><br></p>', '73,74', 0, 28.621, 77.3812, 4, 1, 1576846754, 1577084278),
(18, 0, 8, 37, 0, 10, 'Red Oil', 31, 99, 5, '<p style=\"line-height: 3;\"><b>Red African palm oil. Freshly made in Africa.</b></p>', '75,76,77', 0, 28.621, 77.3812, 0, 1, 1577394022, 0);

-- --------------------------------------------------------

--
-- Table structure for table `af_product_attribute`
--

CREATE TABLE `af_product_attribute` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `sub_category_id` int(11) NOT NULL DEFAULT '0',
  `attribute_id` int(11) NOT NULL DEFAULT '0',
  `attribute_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_product_attribute`
--

INSERT INTO `af_product_attribute` (`id`, `product_id`, `category_id`, `sub_category_id`, `attribute_id`, `attribute_value_id`) VALUES
(3, 3, 1, 9, 1, 3),
(4, 3, 1, 9, 2, 6),
(11, 2, 1, 9, 1, 2),
(12, 2, 1, 9, 2, 6),
(15, 1, 1, 9, 1, 3),
(16, 1, 1, 9, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `af_product_review`
--

CREATE TABLE `af_product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `review` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_product_review`
--

INSERT INTO `af_product_review` (`id`, `product_id`, `user_id`, `rating`, `review`, `created_at`) VALUES
(1, 1, 1, 3, 'feedback done', '2019-11-19 13:03:48'),
(2, 1, 2, 2, 'feedback done', '2019-11-19 13:03:48'),
(3, 2, 1, 3, 'feedback done', '2019-11-19 13:03:48'),
(4, 1, 10, 6, 'nice', '2019-11-20 12:45:42'),
(5, 1, 10, 8, 'nice', '2019-11-20 12:45:51'),
(6, 1, 10, 8, '1', '2019-11-20 12:46:07'),
(7, 1, 10, 8, '4', '2019-11-20 12:47:25'),
(8, 1, 9, 0, 'However it was not in a way I have', '2019-11-21 05:52:06'),
(9, 1, 9, 3, 'However the first thing to do is to make me', '2019-11-21 05:54:35'),
(10, 1, 10, 0, 'nice product', '2019-11-21 06:31:00'),
(11, 1, 10, 0, 'nice product', '2019-11-21 06:31:03'),
(12, 1, 10, 3, 'nice', '2019-11-22 06:47:28'),
(13, 4, 8, 5, 'nice product', '2019-11-25 14:07:27'),
(14, 4, 14, 3, 'nice quality', '2019-11-26 05:30:37'),
(15, 13, 8, 3, 'nice collection', '2019-11-27 06:54:15'),
(16, 15, 8, 3, 'ubuvu', '2019-12-09 07:28:10'),
(17, 15, 8, 3, 'nice', '2019-12-09 07:49:34'),
(18, 7, 10, 4, 'nice', '2019-12-11 10:56:03'),
(19, 1, 10, 4, 'nice', '2019-12-11 10:56:15'),
(20, 2, 10, 4, 'nice', '2019-12-11 10:56:23'),
(21, 1, 10, 4, 'nice', '2019-12-11 10:56:28'),
(22, 0, 10, 4, 'nice', '2019-12-11 10:56:31'),
(23, 1, 10, 4, 'nice', '2019-12-11 10:56:36'),
(24, 1, 19, 4, 'nice', '2019-12-11 11:29:39'),
(25, 1, 56, 4, 'nice', '2019-12-11 11:29:45'),
(26, 5, 64, 3, '', '2019-12-18 08:09:55'),
(27, 13, 70, 5, 'price is good', '2019-12-20 06:12:00'),
(28, 13, 70, 4, 'quality is good', '2019-12-20 06:12:15'),
(29, 13, 70, 1, 'okey to use', '2019-12-20 06:12:28'),
(30, 11, 70, 5, 'nice collection', '2019-12-20 07:36:52'),
(31, 5, 8, 4, 'nice product', '2019-12-20 13:36:49'),
(32, 5, 8, 3, 'jsjs', '2019-12-20 13:37:11'),
(33, 14, 8, 5, 'nice color', '2019-12-20 13:51:42'),
(34, 12, 8, 5, 'nice collection', '2019-12-20 13:53:23'),
(35, 6, 8, 5, 'quality is good', '2019-12-20 13:54:48'),
(36, 6, 8, 4, 'nice', '2019-12-24 06:14:54'),
(37, 17, 14, 4, 'nice', '2019-12-26 08:26:07'),
(38, 4, 5, 5, 'Test', '2019-12-27 10:37:36'),
(39, 4, 5, 1, 'Nice', '2019-12-27 11:53:39'),
(40, 4, 14, 1, 'nice', '2019-12-27 11:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `af_product_specification`
--

CREATE TABLE `af_product_specification` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_product_specification`
--

INSERT INTO `af_product_specification` (`id`, `product_id`, `attribute_id`, `value`) VALUES
(2, 3, 3, 'Sporty13'),
(6, 2, 3, 'T-shirt'),
(8, 1, 3, 'MX12457854fsgdgdgrgfu');

-- --------------------------------------------------------

--
-- Table structure for table `af_service`
--

CREATE TABLE `af_service` (
  `service_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `sub_category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_service`
--

INSERT INTO `af_service` (`service_id`, `vendor_id`, `category_id`, `sub_category_id`, `name`, `short_description`, `images`, `rating`, `status`, `created_at`) VALUES
(1, 1, 1, 0, 'Brand Style1', 'Hello there, we are a professional design team having more than 5 years of experience. So are creating modern and minimal logos with stationary package with this gig. If you are looking for a modern and professional logo, business card, letterhead and other stationary items, we can help you to realize it.', '1,2', 4.45212, 1, '2019-12-09 16:34:37'),
(2, 1, 1, 0, 'Illustration', 'Hello there, we are a professional design team having more than 5 years of experience. So are creating modern and minimal logos with stationary package with this gig. If you are looking for a modern and professional logo, business card, letterhead and other stationary items, we can help you to realize it.', '1,2', 5, 1, '2019-12-09 16:34:37'),
(3, 2, 1, 0, 'Brand Style', 'Hello there, we are a professional design team having more than 5 years of experience. So are creating modern and minimal logos with stationary package with this gig. If you are looking for a modern and professional logo, business card, letterhead and other stationary items, we can help you to realize it.', '1,2', 3.25, 1, '2019-12-09 16:34:37'),
(4, 8, 1, 0, 'Logo Design', 'Logo designers are graphic designers who create distinctive branding that represents companies or products. They might work for a design firm, publishing house or advertising agency or as a freelance graphic artist. ', '59', 2.12449, 1, '2019-12-18 16:52:31'),
(5, 8, 3, 0, 'Website Development', 'Web Development. Web development refers to building, creating, and an maintaining websites. It includes aspects such as web design, web publishing, web programming, and database management. ...', '72', 5, 1, '2019-12-18 17:03:05'),
(6, 8, 3, 0, 'Website Development', 'Web Development. Web development refers to building, creating, and an maintaining websites. It includes aspects such as web design, web publishing, web programming, and database management. ...', '58', 3.25, 1, '2019-12-18 17:09:21'),
(7, 8, 3, 0, 'Website Development', 'Web Development. Web development refers to building, creating, and an maintaining websites. It includes aspects such as web design, web publishing, web programming, and database management. ...', '71', 0, 1, '2019-12-18 17:09:26'),
(8, 8, 3, 0, 'Software development', 'Software development is the process of conceiving, specifying, designing, programming, documenting, testing, and bug fixing involved in creating and maintaining applications, frameworks, or other software components.', '56,57', 0, 1, '2019-12-18 17:42:27'),
(9, 8, 2, 0, 'Content', 'If you feel content, you\'re satisfied and happy. ... The first has to do with being pleased and satisfied (feeling content) or making someone else feel happy and at peace with things (contenting them). The other meaning has to do with subject matter: the content of a history class ...', '64,65,66', 0, 1, '2019-12-19 16:32:11'),
(10, 8, 2, 0, 'Social Marketing', 'Social marketing is an approach used to develop activities aimed at changing or maintaining people\'s behaviour for the benefit of individuals and society as a whole.', '67,68', 5, 1, '2019-12-19 18:34:44'),
(11, 8, 1, 0, 'Logo dESIGN for company', 'Logo designers are graphic designers who create distinctive branding that represents companies or products. They might work for a design firm, publishing house or advertising agency or as a freelance graphic artist. A bachelor\'s degree in graphic design is usually necessary for entry-level positions', '69,70', 0, 1, '2019-12-20 12:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `af_service_booking`
--

CREATE TABLE `af_service_booking` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `detail_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `start_time` time NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `end_time` time NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `service_fees` float NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0',
  `latitude` float NOT NULL DEFAULT '0',
  `longitude` float NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL COMMENT '1=cod , 2=online',
  `payment_status` int(11) NOT NULL COMMENT '0= pending,1=success,2=fail',
  `status` int(11) NOT NULL COMMENT '0=pending,1=place booking,2=In-process,3=completed,4cancel',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_service_booking`
--

INSERT INTO `af_service_booking` (`booking_id`, `user_id`, `service_id`, `detail_id`, `user_name`, `mobile`, `start_date`, `start_time`, `end_date`, `end_time`, `amount`, `service_fees`, `total`, `latitude`, `longitude`, `address`, `landmark`, `payment_type`, `payment_status`, `status`, `created_at`) VALUES
(3, 1, 1, 1, '', '7065227217', '10-12-2019', '10:00:00', '15-12-2019', '15:00:00', 200, 50, 250, 28.1246, 78.1246, 'H-146 noida sector 62', 'TechGropse Pvt. Ltd.', 2, 1, 1, '2019-12-10 15:08:54'),
(4, 1, 1, 1, '', '7065227217', '10-12-2019', '10:00:00', '15-12-2019', '15:00:00', 200, 50, 250, 28.1246, 78.1246, 'H-146 noida sector 62', 'TechGropse Pvt. Ltd.', 2, 1, 1, '2019-12-10 15:10:21'),
(5, 9, 3, 6, 'vishal saini', '70652272116', '2019/12/23', '10:57:00', '2019/12/28', '12:57:00', 200, 50, 250, 28.6259, 77.3773, '147, H Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-13 12:56:19'),
(6, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '15/12/2019', '07:57:00', '18/12/2019', '07:57:00', 200, 50, 50200, 28.6258, 77.3774, 'India ,Noida ,Sector 63', 'Sector 63 Rd, C Block, Phase 2, Industrial Area, Sector 62, Noida, Uttar Pradesh, India', 2, 1, 1, '2019-12-13 16:58:18'),
(7, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '17/12/2019', '01:31:00', '20/12/2019', '01:31:00', 200, 50, 250, 28.6259, 77.3775, 'India ,Noida ,Sector 63', 'Sector 63 Rd, C Block, Phase 2, Industrial Area, Sector 62, Noida, Uttar Pradesh, India', 2, 1, 1, '2019-12-13 17:32:25'),
(8, 64, 3, 6, 'Ajit Babu', '0987654321', '2019-12-13', '19:00:00', '2019-12-13', '20:20:00', 200, 50, 250, 28.6279, 77.3749, 'Noida Electronic City, H Block, Sector 62, Noida, Uttar Pradesh 201301, India', 'Noida', 2, 1, 1, '2019-12-13 18:53:23'),
(9, 8, 3, 7, 'Komal Bajaj', '123456', '2019-12-20', '05:05:00', '2019-12-26', '06:05:00', 350, 50, 400, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-18 16:07:35'),
(10, 8, 3, 6, 'Komal Bajaj', '123456', '2019-12-20', '05:11:00', '2019-12-21', '05:11:00', 200, 50, 250, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-18 16:12:04'),
(11, 8, 4, 34, 'Komal Bajaj', '123456', '2019-12-20', '06:23:00', '2019-12-23', '07:24:00', 10, 50, 60, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-18 19:27:00'),
(12, 19, 1, 1, 'Testing', '123', '2019-12-20', '04:48:00', '2019-12-31', '05:48:00', 200, 50, 250, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-19 13:49:01'),
(13, 19, 1, 1, 'Testing', '123', '2019-12-20', '04:51:00', '2019-12-31', '05:51:00', 200, 50, 250, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-19 13:51:42'),
(14, 19, 4, 34, 'Testing', '12345678925', '2019-12-20', '04:14:00', '2019-12-26', '05:14:00', 10, 50, 60, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-19 15:13:09'),
(15, 19, 4, 34, 'Testing', '12345678925', '2019-12-21', '04:15:00', '2019-12-25', '06:15:00', 10, 50, 60, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-19 16:13:43'),
(16, 68, 1, 1, 'Vishal Kumar Saini', '70652272172', '19/03/2019', '04:57:00', '19/06/2019', '04:57:00', 200, 50, 250, 28.6258, 77.3774, 'India ,Noida ,Sector 62', '87-135 Brompton Rd, Knightsbridge, London SW1X 7XL, UK', 2, 1, 1, '2019-12-19 16:56:52'),
(17, 70, 10, 45, 'Komal', '98765432', '2019-12-21', '05:59:00', '2019-12-23', '05:59:00', 100, 50, 150, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-20 11:58:00'),
(18, 70, 4, 52, 'Komal', '98765432', '2019-12-21', '06:01:00', '2019-12-24', '05:01:00', 300, 50, 350, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-20 12:01:14'),
(19, 70, 11, 53, 'Komal tester', '98765432', '2019-12-21', '03:34:00', '2019-12-25', '05:34:00', 180, 50, 230, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-20 13:33:23'),
(20, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '23/12/2019', '10:05:00', '27/12/2019', '10:05:00', 200, 50, 250, 28.6259, 77.3773, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 15:06:19'),
(21, 71, 1, 1, 'rob bailey', '5555555555', '2019-12-23', '18:06:00', '2019-12-26', '16:07:00', 200, 50, 250, 37.9463, 22.3225, 'Epar.Od. Likourias-Feneou, Sikionies 200 14, Greece', 'Korinthia', 2, 1, 1, '2019-12-23 15:11:09'),
(22, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '28/12/2019', '07:13:00', '30/12/2019', '07:13:00', 200, 50, 250, 28.6259, 77.3773, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 15:13:30'),
(23, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '23/05/2019', '09:18:00', '26/05/2019', '09:18:00', 200, 50, 250, 28.626, 77.3773, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 15:19:02'),
(24, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '25/12/2019', '09:21:00', '28/12/2019', '09:21:00', 200, 50, 250, 28.6259, 77.3774, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 15:21:40'),
(25, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '25/12/2019', '08:25:00', '29/12/2019', '08:25:00', 200, 50, 250, 28.6259, 77.3774, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 15:25:11'),
(26, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '26/12/2019', '10:32:00', '30/12/2019', '10:32:00', 200, 50, 250, 28.6259, 77.3774, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 15:33:05'),
(27, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '26/12/2019', '09:41:00', '30/12/2019', '09:41:00', 200, 50, 250, 28.626, 77.3774, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 15:41:21'),
(28, 71, 1, 1, 'rob bailey', '5555555555', '2019-12-27', '04:11:00', '2019-12-31', '04:11:00', 200, 50, 250, 37.9463, 22.3225, 'Epar.Od. Likourias-Feneou, Sikionies 200 14, Greece', 'Korinthia', 2, 1, 1, '2019-12-23 15:41:58'),
(29, 71, 1, 1, 'rob bailey', '5555555555', '2019-12-24', '16:42:00', '2019-12-28', '04:42:00', 200, 50, 250, 37.9463, 22.3225, 'Epar.Od. Likourias-Feneou, Sikionies 200 14, Greece', 'Korinthia', 2, 1, 1, '2019-12-23 15:42:28'),
(30, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '25/12/2019', '10:33:00', '24/12/2019', '10:33:00', 200, 50, 250, 28.626, 77.3773, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 16:33:53'),
(31, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '24/12/2019', '09:34:00', '25/12/2019', '09:34:00', 200, 50, 250, 28.6259, 77.3774, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 16:34:56'),
(32, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '27/12/2019', '11:41:00', '30/12/2019', '11:41:00', 200, 50, 250, 28.6259, 77.3774, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 16:42:11'),
(33, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '25/12/2019', '07:43:00', '28/12/2019', '07:43:00', 200, 50, 250, 28.6259, 77.3774, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 16:43:57'),
(34, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '26/12/2019', '09:45:00', '29/12/2019', '09:45:00', 200, 50, 250, 28.6259, 77.3774, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 16:46:09'),
(35, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '26/12/2019', '10:54:00', '30/12/2019', '10:54:00', 200, 50, 250, 28.6259, 77.3773, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 16:54:58'),
(36, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '27/12/2019', '09:56:00', '31/12/2019', '09:56:00', 200, 50, 250, 28.6259, 77.3773, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 16:56:32'),
(37, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '25/12/2019', '04:06:00', '28/12/2019', '04:06:00', 200, 50, 250, 28.6259, 77.3774, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 16:59:26'),
(38, 5, 1, 1, 'Vishal Kumar Saini', '70652272172', '26/12/2019', '01:05:00', '29/12/2019', '01:05:00', 200, 50, 250, 28.6259, 77.3774, 'D-4, D Block, Sector 59, Noida, Uttar Pradesh 201307, India', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', 2, 1, 1, '2019-12-23 17:05:43'),
(39, 8, 10, 62, 'komal bajaj', '07404215915', '27/12/2019', '09:14:00', '29/12/2019', '09:14:00', 100, 50, 150, 28.6259, 77.3773, 'Sector 63', 'Sector 63, Noida, Uttar Pradesh, India', 2, 1, 1, '2019-12-26 19:14:28'),
(40, 8, 10, 61, 'komal bajaj', '07404215915', '27/12/2019', '08:12:00', '29/12/2019', '08:12:00', 100, 50, 150, 28.6258, 77.3772, 'Sector 63', 'Sector 63, Noida, Uttar Pradesh, India', 2, 1, 1, '2019-12-26 19:18:00'),
(41, 8, 10, 61, 'komal bajaj', '07404215915', '26/12/2019', '10:19:00', '28/12/2019', '10:19:00', 100, 50, 150, 28.6259, 77.3773, 'Sector 63', 'Sector 63, Noida, Uttar Pradesh, India', 2, 1, 1, '2019-12-26 19:19:44'),
(42, 8, 2, 4, 'Vishal Kumar Saini', '70652272172', '30/12/2019', '12:49:00', '31/12/2019', '12:49:00', 500, 50, 550, 28.6257, 77.3772, 'Lajpat Nagar sahibabad, Kali Mandir Marg', 'Lajpat Nagar sahibabad, Kali Mandir Marg, Om nagar Mohan Nagar, Mohan Nagar, Rajendra Nagar, Ghaziabad, Uttar Pradesh 201007, India', 2, 1, 1, '2019-12-27 11:48:34'),
(43, 5, 4, 63, 'komal bajaj', '07404215915', '28/12/2019', '10:08:00', '29/12/2019', '10:08:00', 150, 50, 200, 28.6259, 77.3771, 'D-4, D Block, Sector 59, Noida, Uttar Pradesh 201307, India', 'Lajpat Nagar sahibabad, Kali Mandir Marg, Om nagar Mohan Nagar, Mohan Nagar, Rajendra Nagar, Ghaziabad, Uttar Pradesh 201007, India', 2, 1, 1, '2019-12-27 18:08:30'),
(44, 14, 11, 69, 'Tester', '6543210', '2019-12-28', '05:40:00', '2019-12-31', '06:40:00', 200, 50, 250, 28.621, 77.3812, 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 'Noida', 2, 1, 1, '2019-12-27 18:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `af_service_category`
--

CREATE TABLE `af_service_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=diabled, 1=enabled , 99=deleted',
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_service_category`
--

INSERT INTO `af_service_category` (`id`, `parent_id`, `name`, `title`, `image`, `status`, `created_at`) VALUES
(1, 0, 'Graphics & Design', 'Logo & Brand Indetity', 'https://www.nyfa.edu/img/graphic-design/nyfa-graphic-design-1400x500.jpg', 1, 1568181073),
(2, 0, 'Digital Marketing', 'Social & Content', 'https://www.simplilearn.com/ice9/free_resources_article_thumb/history_and_evolution_of_digital_marketing.jpg', 1, 1568181073),
(3, 0, 'Programming & Tech', 'Website & Software Development ', 'https://5.imimg.com/data5/MZ/EZ/FL/SELLER-57338056/programming-tech-500x500.png', 1, 1568181073),
(4, 0, 'Wordpress', 'Customize Your Site', 'https://assets.pcmag.com/media/images/567675-how-to-get-started-with-wordpress.jpg?thumb=y&width=810&height=456', 1, 1568181073);

-- --------------------------------------------------------

--
-- Table structure for table `af_service_detail`
--

CREATE TABLE `af_service_detail` (
  `detail_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_plan_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_service_detail`
--

INSERT INTO `af_service_detail` (`detail_id`, `service_id`, `service_plan_id`, `price`, `description`) VALUES
(1, 1, 1, 200, '1 logo design, JPG, PNG, Source files, Business Card, Unlimited Revisions\r\n\r\n '),
(2, 1, 2, 350, '3 logo design, JPG, PNG, Source files, Business Card, Letterhead, Envelope, Unlimited Revisions'),
(3, 1, 3, 500, '3 logo design, JPG, PNG, Source files, Business Card, Letterhead, Envelope, Social Midea Kit, 3D Mockup, Unlimited Revisions'),
(4, 2, 2, 500, '3 logo design, JPG, PNG, Source files, Business Card, Letterhead, Envelope, Unlimited Revisions'),
(5, 2, 3, 700, '3 logo design, JPG, PNG, Source files, Business Card, Letterhead, Envelope, Social Midea Kit, 3D Mockup, Unlimited Revisions'),
(6, 3, 1, 200, '1 logo design, JPG, PNG, Source files, Business Card, Unlimited Revisions\r\n\r\n '),
(7, 3, 2, 350, '3 logo design, JPG, PNG, Source files, Business Card, Letterhead, Envelope, Unlimited Revisions'),
(8, 3, 3, 500, '3 logo design, JPG, PNG, Source files, Business Card, Letterhead, Envelope, Social Midea Kit, 3D Mockup, Unlimited Revisions'),
(28, 8, 1, 10, 'service package'),
(29, 8, 2, 18, 'service package'),
(30, 8, 3, 145, 'service package'),
(31, 6, 1, 10, 'Basic service package'),
(32, 6, 2, 15, 'standard service package'),
(33, 6, 3, 20, 'premium service package'),
(57, 7, 1, 10, 'Basic service package'),
(58, 5, 1, 10, 'Basic service package'),
(59, 5, 2, 15, 'standard service package'),
(60, 5, 3, 20, 'premium service package'),
(61, 10, 1, 100, '5 days package'),
(62, 10, 2, 200, '10 days package'),
(63, 4, 1, 150, 'basic service package'),
(64, 4, 2, 200, 'standard service package'),
(65, 4, 3, 300, 'premium service package'),
(66, 9, 1, 100, '15 days package'),
(67, 9, 2, 300, '30 days package'),
(68, 9, 3, 1, ''),
(69, 11, 1, 200, '1 month srevice package'),
(70, 11, 2, 250, '2 month service package'),
(71, 11, 3, 350, '3 month srevice package');

-- --------------------------------------------------------

--
-- Table structure for table `af_service_plan`
--

CREATE TABLE `af_service_plan` (
  `plan_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_service_plan`
--

INSERT INTO `af_service_plan` (`plan_id`, `name`, `status`) VALUES
(1, 'Basic', 1),
(2, 'Standard', 1),
(3, 'Premium', 1);

-- --------------------------------------------------------

--
-- Table structure for table `af_service_review`
--

CREATE TABLE `af_service_review` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `review` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_service_review`
--

INSERT INTO `af_service_review` (`id`, `service_id`, `user_id`, `rating`, `review`, `created_at`) VALUES
(1, 1, 1, 3, 'feedback done', '2019-11-19 13:03:48'),
(2, 1, 2, 2, 'feedback done', '2019-11-19 13:03:48'),
(3, 2, 1, 3, 'feedback done', '2019-11-19 13:03:48'),
(4, 1, 10, 6, 'nice', '2019-11-20 12:45:42'),
(5, 1, 10, 8, 'nice', '2019-11-20 12:45:51'),
(6, 1, 10, 8, '1', '2019-11-20 12:46:07'),
(7, 1, 10, 8, '4', '2019-11-20 12:47:25'),
(8, 1, 9, 0, 'However it was not in a way I have', '2019-11-21 05:52:06'),
(9, 1, 9, 3, 'However the first thing to do is to make me', '2019-11-21 05:54:35'),
(10, 1, 10, 0, 'nice product', '2019-11-21 06:31:00'),
(11, 1, 10, 0, 'nice product', '2019-11-21 06:31:03'),
(12, 1, 10, 3, 'nice', '2019-11-22 06:47:28'),
(13, 4, 8, 5, 'nice product', '2019-11-25 14:07:27'),
(14, 4, 14, 3, 'nice quality', '2019-11-26 05:30:37'),
(15, 13, 8, 3, 'nice collection', '2019-11-27 06:54:15'),
(16, 1, 0, 3, 'wrewr', '2019-12-10 12:33:57'),
(17, 1, 10, 4, '2', '2019-12-11 12:23:13'),
(18, 3, 64, 4, 'hgfrtggg', '2019-12-12 13:40:58'),
(19, 1, 5, 1, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing jddhdjddhdpecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.', '2019-12-12 14:16:39'),
(20, 1, 5, 3, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.', '2019-12-12 14:18:03'),
(21, 1, 5, 1, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.', '2019-12-12 14:18:59'),
(22, 1, 5, 3, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.', '2019-12-12 14:28:39'),
(23, 1, 5, 2, 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.', '2019-12-12 14:31:01'),
(24, 3, 11, 5, 'well done!', '2019-12-12 18:04:16'),
(25, 1, 5, 1, 'Write a Review', '2019-12-13 06:09:35'),
(26, 3, 8, 3, 'nice', '2019-12-18 09:52:27'),
(27, 1, 19, 4, '  I', '2019-12-19 05:52:06'),
(28, 1, 8, 3, 'Write your Review', '2019-12-19 08:04:28'),
(29, 4, 19, 5, 'hh', '2019-12-19 10:42:50'),
(30, 10, 70, 5, 'nice service', '2019-12-20 06:46:55'),
(31, 11, 70, 5, 'nice service', '2019-12-20 07:37:29'),
(32, 5, 70, 5, 'mil gyi 5', '2019-12-20 07:39:14'),
(33, 6, 70, 5, ',dhj', '2019-12-20 07:39:40'),
(34, 6, 70, 3, 'good service', '2019-12-20 07:40:05'),
(35, 2, 8, 5, 'gshs', '2019-12-20 10:33:43'),
(36, 1, 5, 3, 'Really Duffy', '2019-12-23 14:12:38'),
(37, 1, 5, 5, 'Hdhd', '2019-12-24 05:37:05'),
(38, 1, 5, 3, 'D', '2019-12-24 05:37:44'),
(39, 1, 5, 2, 'Qwerty', '2019-12-24 06:08:24'),
(40, 1, 5, 3, 'Sgstssgss', '2019-12-24 11:33:15'),
(41, 12, 8, 3, 'Nnnn', '2019-12-26 11:03:32'),
(42, 14, 8, 2, 'Nice colour', '2019-12-26 11:04:00'),
(43, 14, 8, 5, 'Nice collection ', '2019-12-26 11:04:31'),
(44, 14, 8, 3, 'Nice collection ', '2019-12-26 11:05:12'),
(45, 6, 8, 3, 'Good', '2019-12-26 13:10:44'),
(46, 4, 8, 3, 'Nice service', '2019-12-26 13:32:14'),
(47, 4, 8, 3, 'Nice service', '2019-12-26 13:34:29'),
(48, 6, 8, 3, 'Nice collection', '2019-12-26 14:15:59'),
(49, 1, 5, 5, 'Mob', '2019-12-27 09:52:53'),
(50, 1, 5, 3, 'Qwe', '2019-12-27 09:54:37'),
(51, 1, 5, 5, 'Mmmm', '2019-12-27 10:09:40'),
(52, 1, 5, 5, 'Nite', '2019-12-27 10:18:36'),
(53, 1, 5, 1, 'Hdhdhd', '2019-12-27 10:19:12'),
(54, 1, 5, 5, 'Minus', '2019-12-27 10:26:10'),
(55, 1, 5, 5, 'Minus', '2019-12-27 10:26:10'),
(56, 4, 5, 5, 'Plus', '2019-12-27 10:27:21'),
(57, 4, 5, 5, 'Plus', '2019-12-27 10:27:21'),
(58, 4, 5, 5, 'Jcxfcjf', '2019-12-27 10:28:18'),
(59, 4, 5, 5, 'Jcxfcjf', '2019-12-27 10:28:18'),
(60, 4, 5, 5, 'Cufjffh', '2019-12-27 10:32:17'),
(61, 4, 5, 5, 'Qwerty1 ', '2019-12-27 10:33:31'),
(62, 4, 5, 5, 'Xhhxhxh', '2019-12-27 10:35:02'),
(63, 4, 5, 5, 'Test', '2019-12-27 10:37:36'),
(64, 4, 5, 1, 'Nice', '2019-12-27 11:53:39'),
(65, 4, 5, 2, 'Logo design', '2019-12-27 12:37:14'),
(66, 4, 5, 2, 'Logo design', '2019-12-27 12:37:14'),
(67, 4, 14, 2, 'logo design', '2019-12-27 12:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `af_slider`
--

CREATE TABLE `af_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `checked` int(11) NOT NULL DEFAULT '0' COMMENT '1=show on home page slider ',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_slider`
--

INSERT INTO `af_slider` (`id`, `name`, `image`, `vendor_id`, `description`, `status`, `checked`, `created_at`) VALUES
(1, 'Ads Banner', 'http://auctionbuy.in/african_super_market/uploads/brand/banner.png', 1, '', 1, 1, '2019-11-14 13:31:09'),
(2, 'Ads Banner', 'http://auctionbuy.in/african_super_market/uploads/brand/advertise_02.png', 1, '', 1, 0, '2019-11-14 13:31:09'),
(3, 'Winter Sale', 'http://auctionbuy.in/african_super_market/uploads/brand/advertise_01.png', 8, '<p><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">seful tips when discounting your products to check your </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">sale</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> price is ... over </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">winter</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">, and ski shops offering the same </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">discounts</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> over summer.</span><br></p>', 1, 0, '2019-11-25 18:54:49'),
(9, 'sale', 'http://auctionbuy.in/african_super_market//uploads/brand/1574693183t0evdrv30taiirtatdta.png', 8, '<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">Serves customers by selling products and meeting customer needs. Services existing accounts, obtains orders, and establishes new accounts by planning and organizing daily work schedule to call on existing or potential </span><b style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">sales</b><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\"> outlets and other trade factors. </span><br></p>', 1, 0, '2019-11-25 20:16:23'),
(10, 'sale', 'http://auctionbuy.in/african_super_market//uploads/brand/15748488350raetta3ti3its0eeedr.png', 8, '<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">Serves customers by selling products and meeting customer needs. Services existing accounts, obtains orders, and establishes new accounts by planning and organizing daily work schedule to call on existing or potential&nbsp;</span><span style=\"font-weight: bolder; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">sales</span><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;outlets and other trade factors.&nbsp;</span><br></p>', 1, 0, '2019-11-27 15:30:35'),
(11, 'Discount', 'http://auctionbuy.in/african_super_market//uploads/brand/1575875334owwdwdol1wwdldoodlaw.jpg', 8, '<p><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">Most Searched Brands on Shoppersstop.com.</span><wbr style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> ... Shop for great deals on Shoppersstop.com with Deal of the Month, Season’s </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Discounts</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">, Shoppers Stop Coupon Codes for various bank transactions, and sure shot deals which will help you save big.</span><wbr style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> You can regularly get updates for the latest ...</span><br></p>', 2, 0, '2019-12-09 12:38:54'),
(12, 'Offers for winter', 'http://auctionbuy.in/african_super_market//uploads/brand/1575875610dwado11a1nwonadooado.jpg', 8, '<p><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">Choose from a wide range of </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Winter Wear</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> For Women & Men at Amazon.in. Get Free 1 or 2 day delivery with Amazon Prime, EMI </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">offers</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">, Cash on Delivery on ...</span><br></p>', 2, 0, '2019-12-09 12:43:30'),
(13, 'new year sale', 'http://auctionbuy.in/african_super_market//uploads/brand/1576826120dd8oowla8wd3dw8l3ndw.jpg', 8, '<p><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">Welcome the&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">new year</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;with best online shopping offers 2020. Turn your shopping experience more delightful with the handpicked offers of&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">New Year Sale</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;2020..</span><br></p>', 2, 0, '2019-12-20 12:45:20'),
(14, 'christmas sale', 'http://auctionbuy.in/african_super_market//uploads/brand/1576845946wdadoodaaald3oaoo993.jpg', 8, '<p></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAkQAA\" data-ved=\"2ahUKEwi5h6GdoMTmAhVpyjgGHQHVAVgQFSgAMCZ6BAgJEAA\"><div class=\"rc\" style=\"position: relative;\"></div></div></div><p></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAIQAA\" data-ved=\"2ahUKEwi5h6GdoMTmAhVpyjgGHQHVAVgQFSgAMCV6BAgCEAA\"><div class=\"rc\" style=\"position: relative;\"><div class=\"s\" style=\"max-width: 48em; color: rgb(84, 84, 84); line-height: 1.57;\"><span style=\"font-weight: bold; color: rgb(106, 106, 106);\">Christmas Sale</span>&nbsp;- Shop discount Christmas Decorations &amp; Party Supplies. Find indoor Christmas decorations, outdoor Christmas decor, Christmas ornaments,&nbsp;...<br></div><div data-base-uri=\"/search?rlz=1C1CHBF_enIN859IN859&amp;sxsrf=ACYBGNTWoXNZv4dF3I2x9BGvbOhQ3KvSwA:1576845764483\" id=\"ed_4\" data-ved=\"2ahUKEwi5h6GdoMTmAhVpyjgGHQHVAVgQ2Z0BMCV6BAgCEAc\"></div></div></div></div>', 2, 0, '2019-12-20 18:15:46'),
(15, '50% discount', 'http://auctionbuy.in/african_super_market//uploads/brand/1576846260ollodnwldowd0n4aaa4o.jpg', 8, '<p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAgQAA\" data-ved=\"2ahUKEwjP05f6ocTmAhXmzDgGHce_CO8QFSgAMBl6BAgIEAA\"><div class=\"rc\" style=\"position: relative;\"></div></div></div></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAcQAA\" data-ved=\"2ahUKEwjP05f6ocTmAhXmzDgGHce_CO8QFSgAMBh6BAgHEAA\"><div class=\"rc\" style=\"position: relative;\"><div class=\"s\" style=\"max-width: 48em; color: rgb(84, 84, 84); line-height: 1.57;\"><div><span class=\"st\" style=\"line-height: 1.57; overflow-wrap: break-word;\">Find<span>&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">50</em>%<span>&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">discount</em><span>&nbsp;</span>stock images in HD and millions of other royalty-free stock photos, illustrations and vectors in the Shutterstock collection. Thousands of new<wbr>&nbsp;...</span></div></div></div></div></div>', 0, 0, '2019-12-20 18:21:00'),
(16, 'new year sale', 'http://auctionbuy.in/african_super_market//uploads/brand/15773448880ld44ldlddwoa4l40d4n.jpg', 8, '<p>Special offers -- 50% Off,<br>New year sale</p>', 2, 0, '2019-12-24 12:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `af_subscription_plan`
--

CREATE TABLE `af_subscription_plan` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0' COMMENT 'in days',
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_subscription_plan`
--

INSERT INTO `af_subscription_plan` (`id`, `name`, `price`, `duration`, `description`, `status`) VALUES
(1, 'Bronze', 0, 31, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(2, 'Silver', 350, 25, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0),
(3, 'Gold', 500, 60, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `af_users`
--

CREATE TABLE `af_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `lat` float NOT NULL DEFAULT '0',
  `lng` float NOT NULL DEFAULT '0',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:not verified,1:active,2=blocked,99=deleted',
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `af_users`
--

INSERT INTO `af_users` (`id`, `name`, `email`, `image`, `mobile`, `password`, `otp`, `address`, `lat`, `lng`, `status`, `created_at`) VALUES
(1, 'komal', 'vishal.gropse@gmail.com', 'dgdg', '654321', '358a2be26a3ad798a2f4b087bbe91d89', '1703', 'noida', 28.5355, 77.391, 1, 1573644794),
(2, 'vishal saini', 'vishal.gropse11@gmail.com', '', '70652272116', '96e79218965eb72c92a549dd5a330112', '6856', '', 0, 0, 0, 1573645748),
(3, 'vishal saini', 'vishal.grops1e11@gmail.com', '', '706522721116', '96e79218965eb72c92a549dd5a330112', '8666', '', 0, 0, 0, 1573645930),
(4, 'vishal saini', 'vishal.grops13e11@gmail.com', '', '7065227321116', '96e79218965eb72c92a549dd5a330112', '4978', '', 0, 0, 0, 1573645945),
(5, 'Nitesh', 'nits2@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/user/IgmmieiImliggfIemaIe1576652048.jpeg', '9999999999', 'e10adc3949ba59abbe56e057f20f883e', '9142', 'D-4, D Block, Sector 59, Noida, Uttar Pradesh 201307, India', 28.6077, 77.3727, 1, 1574159920),
(6, 'Archana gahlot', 'archana.gropse@gmail.com', 'http://localhost/african_super_market/uploads/user/1574162343dadwoaoddddoawwoonod.png', '9554177211', '25d55ad283aa400af464c76d713c07ad', '5346', 'Noida, Uttar Pradesh, India', 28.5355, 77.391, 1, 1574160369),
(7, 'Archana Gahlot', 'archana@gmail.com', '', '9554177212', '1bbd886460827015e5d605ed44252251', '9081', '', 0, 0, 1, 1574161156),
(8, 'Komal Bajaj', 'komal.gropse@gmail.com', '', '1234566567', 'a60b3374ff9fe7575d225c4ff97b7aaf', '6068', 'H Block, Sector 63, Noida, Uttar Pradesh, India', 28.6285, 77.3769, 1, 1574227658),
(9, 'Ajit Babu', 'ajittrainee.gropse@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/user/4uikiaaet4r2isu5na4a1576222243.jpg', '8953597827', '25d55ad283aa400af464c76d713c07ad', '8393', 'Noida Electronic City, H Block, Sector 62, Noida, Uttar Pradesh 201301, India', 28.6279, 77.3749, 1, 1574228074),
(10, 'komal', 'k.bajaj93@gmail.com', '', '654', 'a60b3374ff9fe7575d225c4ff97b7aaf', '1783', '96, H Block, Sector 63, Noida, Uttar Pradesh 201301, India', 28.6285, 77.3769, 99, 1574244656),
(11, 'Clarence Early', 'earlyclarence1991@gmail.com', '', '4016597876', '25d55ad283aa400af464c76d713c07ad', '7341', '', 0, 0, 1, 1574315046),
(12, 'Komal Garg', 'komalgarg955@gmail.com', '', '9915296283', '41486c8e798974cccc16db869fe95e86', '9317', '147, H Block, Sector 63, Noida, Uttar Pradesh 201307, India', 28.6259, 77.3773, 1, 1574315117),
(13, 'Clarence Early', 'earlyclarence1991@yahoo.com', '', '4016024622', '25d55ad283aa400af464c76d713c07ad', '6981', '', 0, 0, 0, 1574315335),
(14, 'Tester', 'tester@gmail.com', '', '6543210', 'a60b3374ff9fe7575d225c4ff97b7aaf', '1465', 'Unnamed Road, A Block, Sector 63, Noida, Uttar Pradesh 201307, India', 28.621, 77.3812, 1, 1574315776),
(15, 'Vishal Saini', 'vs@gmail.com', '', '86768968697', '25d55ad283aa400af464c76d713c07ad', '7280', '', 0, 0, 0, 1574316757),
(16, 'Abcd', 'abcd@gmail.com', '', '12345678', 'a60b3374ff9fe7575d225c4ff97b7aaf', '4258', '', 0, 0, 0, 1574316913),
(17, 'nah', 'nav.nav@gmail.com', '', '0000000000', '25f9e794323b453885f5181f1b624d0b', '9083', '', 0, 0, 1, 1574317399),
(18, 'Archana', 'archana2016oct@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/user/1574335592dgalaatnnltiireigare.jpg', '99999999999', '1bbd886460827015e5d605ed44252251', '4197', 'Noida, Uttar Pradesh, India', 28.5355, 77.391, 1, 1574335492),
(19, 'Testing', 'testing@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/user/aa8eaper7fin00aeipna1576747942.jpg', '12345678925', 'a60b3374ff9fe7575d225c4ff97b7aaf', '5745', '', 0, 0, 1, 1574339216),
(20, 'Abc', 'abc@gmail.com', '', '1234567', 'a60b3374ff9fe7575d225c4ff97b7aaf', '2595', '', 0, 0, 0, 1574402334),
(21, 'Arzoo', 'arzoo.techgropse@gmail.com', '', '987654321', 'dcc39f079beac7377d99905407086c4b', '2914', '', 0, 0, 1, 1574402623),
(22, 'Abcd', 'aa@gmail.com', '', '1234566', '25d55ad283aa400af464c76d713c07ad', '7366', '147, H Block, Sector 63, Noida, Uttar Pradesh 201307, India', 28.6259, 77.3773, 1, 1574415701),
(23, 'Abc', 'aaa@gmail.com', '', '1234', 'a60b3374ff9fe7575d225c4ff97b7aaf', '3381', '', 0, 0, 0, 1574421093),
(24, 'Asdasd', '123@gmail.com', '', '765432', '202cb962ac59075b964b07152d234b70', '5562', '', 0, 0, 0, 1574421328),
(25, 'Qwe', 'qwe@gmail.com', '', '3214', 'a60b3374ff9fe7575d225c4ff97b7aaf', '1742', '', 0, 0, 0, 1574421439),
(26, 'ABCD', 'aaaaa@gmail.com', '', '987654', 'e10adc3949ba59abbe56e057f20f883e', '8568', '', 0, 0, 0, 1574425279),
(27, 'ABCD', 'aaaaa1@gmail.com', '', '987', 'e10adc3949ba59abbe56e057f20f883e', '7073', '', 0, 0, 0, 1574425323),
(28, 'test3', 'test3@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', '8107', '', 0, 0, 0, 1574427376),
(29, 'test4', 'test4@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', '9484', '', 0, 0, 0, 1574427590),
(30, 'test6', 'testnits@gmail.com', '', '696552254546', 'e10adc3949ba59abbe56e057f20f883e', '8233', '', 0, 0, 0, 1574428009),
(31, 'tester ', 'tester123@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/user/elemialfialIfeegiIfl1574432759.jpeg', '369369', 'a60b3374ff9fe7575d225c4ff97b7aaf', '1772', '', 0, 0, 1, 1574431357),
(32, 'Newtest', 'newtest2@gmail.com', '', '999999999999999', '25d55ad283aa400af464c76d713c07ad', '4819', '', 0, 0, 0, 1574540111),
(33, 'Nitesh', 'nitesh.techgropse@gmail.com', '', '123456987055555', '25d55ad283aa400af464c76d713c07ad', '1745', '14, Bhangel, Sector 125, Noida, Uttar Pradesh, India', 28.5355, 77.391, 1, 1574540173),
(34, 'Nits', 'nitesh5610167@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '6844', '', 0, 0, 1, 1574541379),
(35, 'Ajeet', 'ajeet@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '5101', '', 0, 0, 1, 1574592110),
(36, 'Nablus', 'bablu@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '1261', '', 0, 0, 1, 1574592373),
(37, 'bablu2', 'bablu2@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '9759', '', 0, 0, 1, 1574592599),
(38, 'ajeet2', 'ajeet2@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '7161', '', 0, 0, 1, 1574596932),
(39, 'ajeet3', 'ajjet3@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '9375', '', 0, 0, 1, 1574597168),
(40, 'bablu3', 'bablu3@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '9344', '', 0, 0, 1, 1574597260),
(41, 'bablu5', 'bablu5@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '4478', '', 0, 0, 1, 1574597519),
(42, 'bablu6', 'bablu6@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '6465', '', 0, 0, 1, 1574597664),
(43, 'Nablus', 'bablu7@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '9493', '', 0, 0, 1, 1574597789),
(44, 'nsqlkwnlqk', 'nnskl@gmail.com', '', '', '48b32339730b845011e3cb8d1be5e3bf', '9103', '', 0, 0, 1, 1574598052),
(45, 'sown soo', 'dnkwqndlqnw@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '3406', '', 0, 0, 1, 1574598185),
(46, 'bbb', 'bbb@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '7425', '', 0, 0, 1, 1574660089),
(47, 'aaaa', 'aab@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '3662', '', 0, 0, 1, 1574660411),
(48, 'Archana Gahlot', 'archana11@gmail.com', '', '11111111', '1bbd886460827015e5d605ed44252251', '6443', '', 0, 0, 0, 1574660604),
(49, 'Archana Gahlot', 'archana121@gmail.com', '', '111111211', '1bbd886460827015e5d605ed44252251', '8531', '', 0, 0, 0, 1574660637),
(50, 'Archana Gahlot', 'archana1211@gmail.com', '', '95541772111', '1bbd886460827015e5d605ed44252251', '2714', '', 0, 0, 0, 1574660808),
(51, 'aaaaa', 'ab@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '6620', '', 0, 0, 1, 1574661267),
(52, 'www', 'weee@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '1934', '', 0, 0, 1, 1574661524),
(53, 'Salman', 'salman@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '7147', '', 0, 0, 1, 1574662322),
(54, 'checker', 'checker@gmail.com', '', '', 'c228e495200c237c694029de1fb4574e', '6067', '', 0, 0, 2, 1574678462),
(55, 'asaaas', 'aaaa@gmail.com', '', '', 'a152e841783914146e4bcd4f39100686', '4455', '', 0, 0, 99, 1574680849),
(56, 'Archana Gahlot', 'archsndsbn@kjhnx.com', '', '5345123', '1bbd886460827015e5d605ed44252251', '8691', '', 0, 0, 99, 1574686568),
(57, 'Ar', 'archanagahlot065@gmail.com', '', '45343534', '1bbd886460827015e5d605ed44252251', '9465', '', 0, 0, 99, 1574687433),
(58, 'Ds', 'aaa@gmisld.co', '', '34234445345', '1bbd886460827015e5d605ed44252251', '5382', '', 0, 0, 99, 1574688599),
(59, 'Ds', 'aaa@gmisld.com', '', '', 'ef76ef2b6528235115b790526a425fd2', '2027', '', 0, 0, 99, 1574688608),
(60, 'Abc', 'asd@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '6229', '', 0, 0, 99, 1574690304),
(61, 'Abcd', 'qwe1@gmail.com', '', '', 'a60b3374ff9fe7575d225c4ff97b7aaf', '7030', '', 0, 0, 99, 1574692135),
(62, 'Johnny', 'swennie@africanssupermarket.com', '', '2548760517', 'fbc50d9ecc25966dff48111c29c3581d', '6413', '7200 S Clear Creek Rd, Killeen, TX 76549, USA', 31.0688, -97.8153, 1, 1574727620),
(63, 'Komal', 'komal@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', '2244', '', 0, 0, 0, 1574745613),
(64, 'Ajit Babu', 'ajitbabu@gmail.com', '', '0987654321', '25d55ad283aa400af464c76d713c07ad', '3888', 'Noida Electronic City, H Block, Sector 62, Noida, Uttar Pradesh 201301, India', 28.6279, 77.3749, 1, 1576040902),
(65, 'Rishabh', 'admin@gmail.com', '', '', '25d55ad283aa400af464c76d713c07ad', '1330', '', 0, 0, 0, 1576148457),
(66, 'Harshit Goel', 'harshit.techgropse@gmail.com', '', '8181047047', '75fffd0ed1123f6ec49e1c6dcb0e4dfb', '6437', '', 0, 0, 1, 1576160465),
(67, 'Denise Early', 'denlfotee@gmail.com', '', '4012804217', 'f7d11e8a8792bc8c06e6c799a2d04d2c', '8902', '', 0, 0, 0, 1576175410),
(68, 'Komal Garg', 'komalgarg.techgropse@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/user/IfiaaaemfelefiIamgil1576755594.jpeg', '8467948479', '3fc0a7acf087f549ac2b266baf94b8b1', '9804', '', 0, 0, 1, 1576754376),
(69, 'Komal', 'testrr@gnail.com', '', '752134', '6c6767f3a6d765ea20769e7e9b29fa42', '7664', '', 0, 0, 0, 1576820528),
(70, 'Komal tester', 'komal123@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/user/3u9i8ua2n791kpkt74771576823697.jpg', '98765432', 'a60b3374ff9fe7575d225c4ff97b7aaf', '2729', 'A-10, Sector 63 Rd, A Block, Sector 65, Noida, Uttar Pradesh 201301, India', 28.6119, 77.3804, 1, 1576821271),
(71, 'rob bailey', 'Naveen.techgropse@gmail.com', '', '5555555555', '25d55ad283aa400af464c76d713c07ad', '5841', 'Epar.Od. Likourias-Feneou, Sikionies 200 14, Greece', 37.9463, 22.3225, 1, 1576839431),
(72, 'a', '1abc@gmail.com', '', '70707070464', 'e807f1fcf82d132f9bb018ca6738a19f', '4699', '', 0, 0, 99, 1576840416),
(73, 'hii', '2abc@gmail.com', '', '854545424212422', '25d55ad283aa400af464c76d713c07ad', '6861', '', 0, 0, 99, 1576840824),
(74, 'hhh', '3abc@gmail.com', '', '355556555555556', '25d55ad283aa400af464c76d713c07ad', '1247', '', 0, 0, 99, 1576841527);

-- --------------------------------------------------------

--
-- Table structure for table `af_user_address`
--

CREATE TABLE `af_user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_user_address`
--

INSERT INTO `af_user_address` (`id`, `user_id`, `address1`, `address2`, `country_id`, `state_id`, `city_id`, `lat`, `lng`, `created_at`) VALUES
(1, 1, 'H-146, H Block, Sector 63, Noida, Uttar Pradesh 201301', '', 0, 0, 0, 28.6259, 77.3773, '2019-05-17 11:50:08'),
(2, 1, 'New ashok nagar', '', 1, 1, 1, 0, 0, '0000-00-00 00:00:00'),
(3, 1, 'New ashok nagar', '', 1, 1, 1, 0, 0, '0000-00-00 00:00:00'),
(4, 1, 'New ashok nagar', '', 1, 1, 1, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `af_user_auth`
--

CREATE TABLE `af_user_auth` (
  `id` int(22) NOT NULL,
  `user_id` int(22) NOT NULL,
  `device_type` varchar(20) NOT NULL,
  `device_id` varchar(100) NOT NULL,
  `device_token` varchar(300) NOT NULL,
  `security_token` varchar(100) NOT NULL,
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_user_auth`
--

INSERT INTO `af_user_auth` (`id`, `user_id`, `device_type`, `device_id`, `device_token`, `security_token`, `created_at`) VALUES
(9, 1, '1', 'device_token', 'device_token', 'v_eoioo_e_n__eddnvei', 1573651400),
(26, 7, '3', '5dd3cb1a598bf', 'token_5dd3cb1a598fa', 'dc8c8d85a581ab8ccaab', 1574161178),
(81, 12, '1', 'c0a581821c279b02', '12345', '0192710c7019b0517221', 1574315498),
(93, 15, '1', '2b86da337eff6855', '12345', 'eb6327ff3f8f827d53f6', 1574316870),
(98, 16, '1', '2b86da337eff6855', '12345', '65a378afd22757e3a7d5', 1574317039),
(118, 18, '3', '5dd6756671e49', 'token_5dd6756671e81', '44676749d5dde6471e61', 1574335846),
(186, 22, '1', '2b86da337eff6855', '12345', '56f8f6823638f33f6533', 1574415736),
(210, 31, '2', '6F48B2D3-9D90-4040-B0EB-315A74EC1FA7', 'hqlhhniiopo-kdd;', '604-09933C46C--FF0B4', 1574432151),
(248, 33, '1', '77629ddf47567d1f', '12345', '5ff4d6466514d7d56f7d', 1574540900),
(249, 34, '1', '77629ddf47567d1f', '12345', '79ddf46dd727795fff69', 1574541398),
(254, 35, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', 'D3359-DF09-690AFAD-0', 1574592126),
(255, 36, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', '789D-33E3A8887B952-5', 1574592382),
(256, 37, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', '528-84A528E--2D-5587', 1574592607),
(257, 38, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', 'E56F9DE3969F50890038', 1574596940),
(258, 39, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', '-60046B9-4667879E994', 1574597176),
(259, 40, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', '2FE6816DDAE5D0-85296', 1574597315),
(260, 41, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', '9000733D29757504D67D', 1574597547),
(261, 42, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', '58--F-B88666822E6D5E', 1574597687),
(262, 43, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', 'E395-F9942D38B95FE00', 1574597797),
(263, 44, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', '0807809916938FE69924', 1574598057),
(264, 45, '2', '236FEDD9-A197-4D50-889B-730593E98026', 'hqlhhniiopo-kdd;', '2E-0F28D3998F3-9DE-B', 1574598191),
(305, 46, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', '6C8C7E9DD1--0905F-16', 1574660148),
(308, 47, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', '-6D68-49D3CCF55285FC', 1574660417),
(315, 51, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', '7-C1110---F328D85D2D', 1574661271),
(318, 52, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', '3FD-CAB524DA0-235C7-', 1574661528),
(323, 53, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', '01902922DD-D0DEDD061', 1574662425),
(425, 54, '1', '2b86da337eff6855', '12345', 'b8758a87bf3d3f6d5a52', 1574858988),
(493, 17, '1', '77629ddf47567d1f', '12345', '7467fd27d7966fff6f17', 1574961445),
(577, 64, '1', 'fea6e6745e766cf6', '12345', 'eea66af66ef4f67ecf5f', 1576133329),
(580, 66, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', 'D53D65D-7810DD7-0D92', 1576160539),
(586, 62, '1', 'd15cad6160d2ec8c', '12345', 'd168208dcd061a0d6dde', 1576176569),
(626, 19, '1', 'edd8a8e855c40204', '12345', 'a0deca0ecea880842ce8', 1576739336),
(649, 68, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', 'D495AC09-DDC275A15C8', 1576755149),
(668, 9, '1', '29f9483d35350658', '12345', '29584d65882555996996', 1576828789),
(672, 70, '1', 'edd8a8e855c40204', '12345', 'd5e8dd0252e28d0ce585', 1576835845),
(680, 72, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', '2DAD82150-DD--D-C660', 1576840424),
(681, 73, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', 'D55-07B95389490F9D81', 1576840830),
(682, 74, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', '691595D5F32F100257-5', 1576841533),
(686, 71, '1', 'e57c754fbe74f922', '12345', 'e575cce557f4e2cf92e5', 1576844044),
(691, 11, '1', 'eb6031dd9425c50a', '12345', '00c05d06eedcdb35b564', 1576860115),
(741, 6, '3', '5e0469059981f', 'token_5e04690599858', 'e9506081640605080109', 1577347333),
(750, 14, '1', 'edd8a8e855c40204', '12345', 'dd2250e8d20ee52ddede', 1577353021),
(755, 10, '3', '5e05bc77219c9', 'token_5e05bc7721a02', '70c5599997c00c5957e9', 1577434231),
(757, 8, '3', '5e05bc7c8036d', 'token_5e05bc7c803a5', '05b0060dcdbc3cd3d357', 1577434236),
(769, 5, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', '1BDDD85-D671D29CF2B8', 1577440336);

-- --------------------------------------------------------

--
-- Table structure for table `af_vendor`
--

CREATE TABLE `af_vendor` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `shop_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `lat` float NOT NULL DEFAULT '0',
  `lng` float NOT NULL DEFAULT '0',
  `plan_id` int(11) NOT NULL DEFAULT '0',
  `expiry_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:not verified,1:active,2=blocked,99=deleted',
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `af_vendor`
--

INSERT INTO `af_vendor` (`id`, `name`, `email`, `image`, `mobile`, `password`, `otp`, `shop_name`, `address`, `lat`, `lng`, `plan_id`, `expiry_date`, `status`, `created_at`) VALUES
(1, 'Vishal Kumar Saini', 'vishal.gropse@gmail.com', 'http://auctionbuy.in/african_super_market//uploads/vendor/1576828306ssruresusssruuurrure.jpeg', '70652272172', 'e3ceb5881a0a1fdaad01296d7554868d', '9442', 'African shop', 'Noida, Uttar Pradesh, India', 28.5355, 77.391, 1, '2019-12-22 12:23:35', 1, 2019),
(2, 'vishal saini', 'vishal.gropse11@gmail.com', '', '70652272116', '96e79218965eb72c92a549dd5a330112', '6856', '', '', 0, 0, 0, '2019-12-11 13:32:04', 1, 1573645748),
(3, 'vishal saini', 'vishal.grops1e11@gmail.com', '', '706522721116', '96e79218965eb72c92a549dd5a330112', '8666', '', '', 0, 0, 0, '2019-12-11 13:32:04', 0, 1573645930),
(4, 'vishal saini', 'vishal.grops13e11@gmail.com', '', '7065227321116', '96e79218965eb72c92a549dd5a330112', '4978', '', '', 0, 0, 0, '2019-12-11 13:32:04', 1, 1573645945),
(5, 'vishal saini', 'vishal1@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/-1200Wx1200H-220429-1-300Wx300H1574520121.png', '', '1bbd886460827015e5d605ed44252251', '0', '', 'New Ashok Nagar, New Delhi, India', 28.593, 77.3052, 0, '2019-12-11 13:32:04', 1, 2019),
(6, 'archana', 'archana2016oct@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/depositphotos_74814023-stock-photo-indian-street-food1574520175.jpg', '', '25d55ad283aa400af464c76d713c07ad', '0', '', 'Kanpur, Uttar Pradesh, India', 26.4499, 80.3319, 0, '2019-12-11 13:32:04', 1, 2019),
(7, 'new vendor', 'new@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/2017-01-23_5885f9c7d1a3d_840x5001574520651.jpg', '', '1bbd886460827015e5d605ed44252251', '0', 'Aabra Ka Dabra', 'New Ashok Nagar, New Delhi, India', 28.593, 77.3052, 0, '2019-12-11 13:32:04', 1, 2019),
(8, 'komal bajaj', 'k.bajaj93@gmail.com', 'http://auctionbuy.in/african_super_market//uploads/vendor/1576835152agamias2gmige2geiseg.jpg', '07404215915', 'a60b3374ff9fe7575d225c4ff97b7aaf', '7748', 'Lifestyle ', 'h-147/148', 28.621, 77.3812, 2, '2020-01-13 16:46:45', 1, 2019),
(9, 'archana', 'archanagahlot065@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/UR00066-PT0000_4_lar1576483336.jpg', '', '25d55ad283aa400af464c76d713c07ad', '0', '', 'Sector 62, Noida, Uttar Pradesh, India', 28.628, 77.3649, 0, '2019-12-16 08:02:16', 0, 2019),
(10, 'African\'s Vendor', 'vendor@market.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/women-short-hair-cut1576588981.jpg', '', '25d55ad283aa400af464c76d713c07ad', '0', '', 'New Ashok Nagar, New Delhi, India', 28.593, 77.3052, 0, '2019-12-17 13:23:01', 0, 2019),
(11, 'Denise f Thomas', 'denflotee@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/11576739607.png', '', '25d55ad283aa400af464c76d713c07ad', '0', '', 'Placentia, CA, USA', 33.8711, -117.863, 0, '2019-12-19 07:13:27', 0, 2019),
(12, 'Martha Early', 'cearly@africanssupermarket.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/Untitled Design (3)1576739929.png', '', '25d55ad283aa400af464c76d713c07ad', '0', '', 'Providence, RI, USA', 41.824, -71.4128, 0, '2019-12-19 07:18:49', 0, 2019),
(13, 'komal bajaj', 'komal.gropse@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/download (2)1576840338.jpg', '', 'a60b3374ff9fe7575d225c4ff97b7aaf', '0', 'Lifestyle', 'Sector 63, Noida, Uttar Pradesh, India', 28.621, 77.3812, 0, '2019-12-20 11:12:18', 2, 2019),
(14, 'tester', 'abc@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/download (10)1576848654.jpg', '', 'a60b3374ff9fe7575d225c4ff97b7aaf', '0', 'Lifestyle', 'Sector 63 A, Noida, Uttar Pradesh, India', 28.6215, 77.3942, 0, '2019-12-20 13:30:54', 0, 2019),
(15, 'vishal saini', 'new12@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/xiaomi-png-new-svg-image-20001576850263.png', '', '1bbd886460827015e5d605ed44252251', '0', 'new company', 'Sector 62, Noida, Uttar Pradesh, India', 28.628, 77.3649, 0, '2019-12-20 13:57:43', 1, 2019),
(16, 'vishal saini', 'new2223@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/xiaomi-png-new-svg-image-20001576850463.png', '', '1bbd886460827015e5d605ed44252251', '0', 'bhgherf', 'Sector 62, Noida, Uttar Pradesh, India', 28.628, 77.3649, 0, '2019-12-20 14:01:03', 0, 1576850463),
(17, 'checker', 'checker@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/images (53)1576850779.jpg', '', 'a60b3374ff9fe7575d225c4ff97b7aaf', '0', 'Lifestyle', 'Sector 63 Road, C Block, A Block, Sector 63, Noida, Uttar Pradesh, India', 28.6119, 77.3804, 0, '2019-12-20 14:06:19', 1, 1576850779);

-- --------------------------------------------------------

--
-- Table structure for table `af_vendor_subscription`
--

CREATE TABLE `af_vendor_subscription` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `subscribe_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_vendor_subscription`
--

INSERT INTO `af_vendor_subscription` (`id`, `vendor_id`, `plan_id`, `subscribe_date`, `expire_date`) VALUES
(1, 1, 1, '2019-12-12 12:23:35', '2019-12-22 12:23:35'),
(2, 8, 3, '2019-12-19 13:01:26', '2020-02-17 13:01:26'),
(3, 8, 2, '2019-12-19 16:46:45', '2020-01-13 16:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `af_wishlist`
--

CREATE TABLE `af_wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_wishlist`
--

INSERT INTO `af_wishlist` (`wishlist_id`, `user_id`, `product_id`, `type`) VALUES
(10, 10, 45, 0),
(11, 10, 10, 0),
(21, 6, 1, 0),
(22, 18, 1, 0),
(26, 10, 1, 0),
(69, 34, 1, 0),
(73, 54, 6, 0),
(98, 14, 4, 0),
(99, 14, 6, 0),
(199, 8, 4, 0),
(200, 8, 12, 0),
(203, 8, 15, 0),
(207, 5, 4, 0),
(208, 5, 5, 0),
(209, 5, 6, 0),
(210, 8, 13, 0),
(211, 19, 5, 0),
(212, 19, 6, 0),
(214, 10, 5, 1),
(215, 10, 1, 1),
(219, 64, 4, 1),
(221, 64, 3, 2),
(222, 9, 13, 1),
(223, 9, 3, 2),
(238, 8, 3, 2),
(239, 11, 6, 1),
(252, 19, 1, 2),
(263, 19, 1, 1),
(265, 19, 5, 1),
(266, 19, 13, 1),
(269, 19, 5, 2),
(276, 70, 10, 2),
(278, 70, 6, 2),
(290, 5, 1, 2),
(298, 8, 14, 1),
(300, 8, 1, 2),
(301, 8, 4, 2),
(302, 8, 5, 1),
(303, 8, 17, 1),
(306, 8, 6, 1),
(308, 500000, 6, 1),
(309, 5, 4, 1),
(310, 14, 4, 1),
(311, 14, 4, 2),
(312, 5, 4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `af_admin`
--
ALTER TABLE `af_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_brand`
--
ALTER TABLE `af_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_cart`
--
ALTER TABLE `af_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `af_category`
--
ALTER TABLE `af_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_category_attribute`
--
ALTER TABLE `af_category_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_category_attribute_value`
--
ALTER TABLE `af_category_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_contact_subject`
--
ALTER TABLE `af_contact_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_contact_us`
--
ALTER TABLE `af_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_conversation`
--
ALTER TABLE `af_conversation`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `user_one` (`user_id`),
  ADD KEY `user_two` (`vendor_id`);

--
-- Indexes for table `af_conversation_reply`
--
ALTER TABLE `af_conversation_reply`
  ADD PRIMARY KEY (`cr_id`),
  ADD KEY `user_id_fk` (`user_type`),
  ADD KEY `c_id_fk` (`c_id_fk`);

--
-- Indexes for table `af_devilery_charges`
--
ALTER TABLE `af_devilery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_files`
--
ALTER TABLE `af_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_orders`
--
ALTER TABLE `af_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `af_order_items`
--
ALTER TABLE `af_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_products`
--
ALTER TABLE `af_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `af_product_attribute`
--
ALTER TABLE `af_product_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_product_review`
--
ALTER TABLE `af_product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_product_specification`
--
ALTER TABLE `af_product_specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_service`
--
ALTER TABLE `af_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `af_service_booking`
--
ALTER TABLE `af_service_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `af_service_category`
--
ALTER TABLE `af_service_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_service_detail`
--
ALTER TABLE `af_service_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `af_service_plan`
--
ALTER TABLE `af_service_plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `af_service_review`
--
ALTER TABLE `af_service_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_slider`
--
ALTER TABLE `af_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_subscription_plan`
--
ALTER TABLE `af_subscription_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_users`
--
ALTER TABLE `af_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_user_address`
--
ALTER TABLE `af_user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_user_auth`
--
ALTER TABLE `af_user_auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `af_vendor`
--
ALTER TABLE `af_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_vendor_subscription`
--
ALTER TABLE `af_vendor_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `af_wishlist`
--
ALTER TABLE `af_wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `af_admin`
--
ALTER TABLE `af_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `af_brand`
--
ALTER TABLE `af_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `af_cart`
--
ALTER TABLE `af_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `af_category`
--
ALTER TABLE `af_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `af_category_attribute`
--
ALTER TABLE `af_category_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `af_category_attribute_value`
--
ALTER TABLE `af_category_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `af_contact_subject`
--
ALTER TABLE `af_contact_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `af_contact_us`
--
ALTER TABLE `af_contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `af_conversation`
--
ALTER TABLE `af_conversation`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `af_conversation_reply`
--
ALTER TABLE `af_conversation_reply`
  MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `af_devilery_charges`
--
ALTER TABLE `af_devilery_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `af_files`
--
ALTER TABLE `af_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `af_orders`
--
ALTER TABLE `af_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `af_order_items`
--
ALTER TABLE `af_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `af_products`
--
ALTER TABLE `af_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `af_product_attribute`
--
ALTER TABLE `af_product_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `af_product_review`
--
ALTER TABLE `af_product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `af_product_specification`
--
ALTER TABLE `af_product_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `af_service`
--
ALTER TABLE `af_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `af_service_booking`
--
ALTER TABLE `af_service_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `af_service_category`
--
ALTER TABLE `af_service_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `af_service_detail`
--
ALTER TABLE `af_service_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `af_service_plan`
--
ALTER TABLE `af_service_plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `af_service_review`
--
ALTER TABLE `af_service_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `af_slider`
--
ALTER TABLE `af_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `af_subscription_plan`
--
ALTER TABLE `af_subscription_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `af_users`
--
ALTER TABLE `af_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `af_user_address`
--
ALTER TABLE `af_user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `af_user_auth`
--
ALTER TABLE `af_user_auth`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=770;

--
-- AUTO_INCREMENT for table `af_vendor`
--
ALTER TABLE `af_vendor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `af_vendor_subscription`
--
ALTER TABLE `af_vendor_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `af_wishlist`
--
ALTER TABLE `af_wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
