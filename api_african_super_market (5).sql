-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2019 at 08:14 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_african_super_market`
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
(9, 'Adidas', 'http://auctionbuy.in/african_super_market/uploads/brand/15746753674981.jpg', 1);

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
(5, '22', 1, 1, 100, 10, 90, 4, 360),
(6, '5', 1, 1, 100, 10, 90, 1, 90),
(7, '8', 8, 6, 200, 20, 180, 1, 180),
(8, '5', 8, 4, 99, 9.9, 89.1, 1, 89.1),
(9, '5', 8, 5, 100, 10, 90, 1, 90),
(10, '5', 8, 7, 799, 79.9, 719.1, 1, 719.1);

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
(4, 0, 'Bags', 'http://auctionbuy.in/african_super_market/uploads/category/15746816587994.png', 1, 1568181073),
(5, 0, 'Electronic', 'http://auctionbuy.in/african_super_market/uploads/category/15746673711286.png', 1, 1568181073),
(6, 0, 'Watches', 'http://auctionbuy.in/african_super_market/uploads/category/15746845813673.png', 1, 1568181073),
(7, 0, 'Books', 'http://auctionbuy.in/african_super_market/uploads/category/15746673148681.jpg', 1, 1568181073),
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
(34, 20, 'Footwear', 'http://auctionbuy.in/african_super_market/uploads/category/15748415159874.jpg', 1, 1574841515);

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
(3, 9, 'Model', 0, 2, 1, 1);

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
(9, 2, 'XXL', 1);

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
(51, 'http://auctionbuy.in/african_super_market/uploads/products/', '1574841699i30e3i33a0ei0mmaieee.jpg', 'jpg');

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
(2, 10, 'Vishal Saini', '7065227217', 200, 100, 40, 340, 28.1246, 78.1246, '', 'TechGropse Pvt. Ltd.', 2, 0, 1, '2019-12-10 16:21:54');

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
(2, 2, 1, 1, 100, 10, 90, 2, 180, '2019-12-10 16:21:54');

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
(1, 0, 1, 1, 9, 1, 'Polo Shirt', 100, 2, 10, 'New Data', '1,2', 1, 78.1246, 28.1246, 1.82812, 0, 1568181073, 1568181073),
(2, 0, 1, 1, 9, 1, 'Polo Shirt', 150, 10, 10, 'New Data', '1,2', 1, 78.1246, 28.1246, 0, 0, 1568181073, 1568181073),
(3, 0, 8, 1, 9, 7, 'Full T-shirt', 280, 50, 10, '<p>Cotton blend sporty t-shirt for women</p>', '21,4', 0, 0, 0, 0, 99, 1574520825, 1574682664),
(4, 0, 8, 2, 16, 7, 'Shoes', 99, 3, 10, '<p><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Mens Footwear</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> Online. Shop from latest collection of Shoes & Footwear for Men Online. Shop for Sports, Formal & Casual Footwear ✯ Top Brands ✯ COD ...</span><br></p>', '24,25,26,27', 0, 0, 0, 2.75, 1, 1574663642, 1575868487),
(5, 0, 8, 7, 26, 5, 'Classic Book', 100, 9, 10, '<p><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">Read Booming&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Brands</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;- Inspiring Journeys of 11 \"Made In&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">India</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">\"&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Brands book</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;reviews &amp; author details and more at Amazon.in. Free delivery on qualified orders.</span><br></p>', '9,10,11,12', 0, 28.621, 77.3812, 0, 1, 1574667930, 0),
(6, 0, 8, 5, 25, 6, 'Laptop', 200, 9, 10, '<p><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Laptops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">. </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Laptops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> are a must-have-device for everyone as these are easy-to-use, portable, energy savers and more. On Flipkart, you can find </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">laptops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> from the top brands like Acer, Apple, Asus, Dell, HP, Lenovo, Gaming </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Laptops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> and more. </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Laptops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\"> prices range between Rs 10,000 and Rs 2,00,000.</span><br></p>', '13,14,15,16', 0, 28.621, 77.3812, 0, 1, 1574673148, 1574684197),
(7, 0, 8, 2, 11, 8, 'Denim jeans', 799, 1, 10, '<p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAUQAA\" data-ved=\"2ahUKEwjB4ujSjYXmAhVLgI8KHYjbA9cQFSgAMAJ6BAgFEAA\"><div class=\"rc\" style=\"position: relative;\"></div></div></div></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAQQAA\" data-ved=\"2ahUKEwjB4ujSjYXmAhVLgI8KHYjbA9cQFSgAMAF6BAgEEAA\"><div class=\"rc\" style=\"position: relative;\"><div class=\"s\" style=\"max-width: 48em; color: rgb(84, 84, 84); line-height: 1.57;\"><div><span class=\"st\" style=\"line-height: 1.57; overflow-wrap: break-word;\"><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">en Jeans</em><span> </span>- Shop from the latest range of comfortable & trendy regular<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">jeans</em>, low ... Buy<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Jeans</em><span> </span>for<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Mens</em><span> </span>from top brands at Myntra. ... U.S. Polo Assn.<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Denim</em><span> </span>Co.</span></div></div><div data-base-uri=\"/search?rlz=1C1CHBF_enIN859IN859&sxsrf=ACYBGNRLIqntVz4NnzD5WuHJV-eqOQVbbA:1574676113017\" id=\"ed_8\" data-ved=\"2ahUKEwjB4ujSjYXmAhVLgI8KHYjbA9cQ2Z0BMAF6BAgEEAc\"></div></div></div></div>', '17,18,19,20', 0, 28.621, 77.3812, 0, 1, 1574676169, 1574676225),
(8, 0, 8, 1, 10, 8, 'jeans', 50, 1, 10, '<p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAcQAA\" data-ved=\"2ahUKEwjcmea0q4XmAhWIQI8KHekHAgwQFSgAMA16BAgHEAA\"><div class=\"rc\" style=\"position: relative;\"></div></div></div></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAIQAA\" data-ved=\"2ahUKEwjcmea0q4XmAhWIQI8KHekHAgwQFSgAMAx6BAgCEAA\"><div class=\"rc\" style=\"position: relative;\"><div class=\"s\" style=\"max-width: 48em; color: rgb(84, 84, 84); line-height: 1.57;\"><div><span class=\"st\" style=\"line-height: 1.57; overflow-wrap: break-word;\">Buy<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Jeans</em><span> </span>for<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Women</em><span> </span>online at best prices. Shop stylish ladies<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">jeans</em>, ripped, boyfriend, cropped, high waisted<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">jeans</em><span> </span>for ladies/girls for all sizes from top brands ...</span></div></div><div data-base-uri=\"/search?rlz=1C1CHBF_enIN859IN859&sxsrf=ACYBGNTEeOcx_vCBx91oxsGpkww2xZ3xyw:1574684103125\" id=\"ed_6\" data-ved=\"2ahUKEwjcmea0q4XmAhWIQI8KHekHAgwQ2Z0BMAx6BAgCEAc\"></div></div></div></div>', '28,29,30,31', 0, 28.621, 77.3812, 0, 99, 1574684154, 1574687310),
(9, 0, 1, 1, 9, 2, 'New Shirt1', 22, 2, 0, '<p>sdgsdfrt</p>', '32,33', 0, 0, 0, 0, 99, 1574685558, 0),
(10, 0, 5, 1, 9, 6, 'cvhgh', 666, 6, 0, '<p>nmmhj</p>', '34,35', 0, 28.593, 77.3052, 0, 99, 1574685671, 0),
(11, 0, 8, 1, 10, 8, 'jeans', 50, 5, 10, '<p></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAoQAA\" data-ved=\"2ahUKEwiq8qfat4XmAhXFqY8KHaObB7IQFSgAMA16BAgKEAA\"><div class=\"rc\" style=\"position: relative;\"></div></div></div><p></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAIQAA\" data-ved=\"2ahUKEwiq8qfat4XmAhXFqY8KHaObB7IQFSgAMAx6BAgCEAA\"><div class=\"rc\" style=\"position: relative;\"><div class=\"s\" style=\"max-width: 48em; color: rgb(84, 84, 84); line-height: 1.57;\"><div><span class=\"st\" style=\"line-height: 1.57; overflow-wrap: break-word;\">Buy<span>&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Jeans</em><span>&nbsp;</span>for<span>&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Women</em><span>&nbsp;</span>online at best prices. Shop stylish ladies<span>&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">jeans</em>, ripped, boyfriend, cropped, high waisted<span>&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">jeans</em><span>&nbsp;</span>for ladies/girls for all sizes from top brands&nbsp;...</span></div></div><div data-base-uri=\"/search?rlz=1C1CHBF_enIN859IN859&amp;sxsrf=ACYBGNQ9vjwmpdHXBc-H2BgbJyb0piCyqQ:1574687403019\" id=\"ed_6\" data-ved=\"2ahUKEwiq8qfat4XmAhXFqY8KHaObB7IQ2Z0BMAx6BAgCEAc\"></div></div></div></div>', '36,37,38,39', 0, 28.621, 77.3812, 0, 1, 1574687445, 1575019484),
(12, 0, 8, 20, 21, 8, 'tshirt', 50, 1, 10, '<p><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">Levi\'s</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">®&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">women\'s t-shirts</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;&amp;&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">tops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;are a modern twist on classic styles that have defined generations. Shop our entire collection of styled&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">t-shirts</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">, graphic&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">tees</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;&amp;&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">tops</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">&nbsp;..</span><br></p>', '40,41,42,43', 0, 28.621, 77.3812, 0, 1, 1574692833, 0),
(13, 0, 8, 4, 27, 9, 'women handbag', 300, 7, 11, '<p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 28px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAQQAA\" data-ved=\"2ahUKEwjomKyK0YXmAhUPzDgGHSzgCWoQFSgAMBJ6BAgEEAA\"><div class=\"rc\" style=\"position: relative;\"></div></div></div></p><div class=\"g\" style=\"line-height: 1.2; text-align: left; font-family: arial, sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 27px; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div data-hveid=\"CAYQAA\" data-ved=\"2ahUKEwjomKyK0YXmAhUPzDgGHSzgCWoQFSgAMBF6BAgGEAA\"><div class=\"rc\" style=\"position: relative;\"><div class=\"s\" style=\"max-width: 48em; color: rgb(84, 84, 84); line-height: 1.57;\"><div><span class=\"st\" style=\"line-height: 1.57; overflow-wrap: break-word;\">Buy<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Bags</em><span> </span>For<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Women</em><span> </span>Online in India. Shop Latest Collection of<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Handbags</em>, Sling<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Bags</em>, Clutches, Shopping<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Bags</em>, Wallets for<span> </span><em style=\"font-weight: bold; font-style: normal; color: rgb(106, 106, 106);\">Women</em><span> </span>at Limeroad.com. Discover ...</span></div></div><div data-base-uri=\"/search?rlz=1C1CHBF_enIN859IN859&sxsrf=ACYBGNSNavgDt4ZOEFOhK0jplg6I-jPYZA:1574694214640\" id=\"ed_12\" data-ved=\"2ahUKEwjomKyK0YXmAhUPzDgGHSzgCWoQ2Z0BMBF6BAgGEAY\"></div></div></div></div>', '44,45,46,47', 0, 28.621, 77.3812, 1.5, 1, 1574694309, 1574694331),
(14, 0, 8, 20, 34, 8, 'Heels', 299, 11, 10, '<p><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">High Heels - Buy stylish collection of </span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif;\">women high heels</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif;\">, heeled sandals & stilettos @ Myntra. ✯ Free Shipping ✯ COD ✯ Easy returns and exchanges.</span><br></p>', '48,49,50,51', 0, 28.621, 77.3812, 0, 1, 1574841699, 1574841779);

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
(1, 1, 1, 9, 1, 1),
(2, 1, 1, 9, 2, 5),
(3, 3, 1, 9, 1, 3),
(4, 3, 1, 9, 2, 6);

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
(15, 13, 8, 3, 'nice collection', '2019-11-27 06:54:15');

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
(1, 1, 3, 'MX12457854'),
(2, 3, 3, 'Sporty13'),
(3, 1, 3, 'fsgdgdgr'),
(4, 1, 3, 'gfu');

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
(1, 1, 1, 0, 'Brand Style', 'Hello there, we are a professional design team having more than 5 years of experience. So are creating modern and minimal logos with stationary package with this gig. If you are looking for a modern and professional logo, business card, letterhead and other stationary items, we can help you to realize it.', '1,2,3', 1.5, 1, '2019-12-09 16:34:37'),
(2, 1, 1, 0, 'Illustration', 'Hello there, we are a professional design team having more than 5 years of experience. So are creating modern and minimal logos with stationary package with this gig. If you are looking for a modern and professional logo, business card, letterhead and other stationary items, we can help you to realize it.', '1,2', 0, 1, '2019-12-09 16:34:37'),
(3, 2, 1, 0, 'Brand Style', 'Hello there, we are a professional design team having more than 5 years of experience. So are creating modern and minimal logos with stationary package with this gig. If you are looking for a modern and professional logo, business card, letterhead and other stationary items, we can help you to realize it.', '1,2', 0, 1, '2019-12-09 16:34:37');

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
  `payment_type` int(11) NOT NULL COMMENT '0=cod , 1=online',
  `payment_status` int(11) NOT NULL COMMENT '0= pending,1=success,2=fail',
  `status` int(11) NOT NULL COMMENT '0=pending,1=place booking,2=In-process,3=completed,4cancel',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `af_service_booking`
--

INSERT INTO `af_service_booking` (`booking_id`, `user_id`, `service_id`, `detail_id`, `user_name`, `mobile`, `start_date`, `start_time`, `end_date`, `end_time`, `amount`, `service_fees`, `total`, `latitude`, `longitude`, `address`, `landmark`, `payment_type`, `payment_status`, `status`, `created_at`) VALUES
(3, 1, 1, 1, '', '7065227217', '10-12-2019', '10:00:00', '15-12-2019', '15:00:00', 200, 50, 250, 28.1246, 78.1246, 'H-146 noida sector 62', 'TechGropse Pvt. Ltd.', 1, 1, 1, '2019-12-10 15:08:54'),
(4, 1, 1, 1, '', '7065227217', '10-12-2019', '10:00:00', '15-12-2019', '15:00:00', 200, 50, 250, 28.1246, 78.1246, 'H-146 noida sector 62', 'TechGropse Pvt. Ltd.', 1, 1, 1, '2019-12-10 15:10:21');

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
(3, 0, 'Programming & Tech', 'Website & Software Development', 'https://5.imimg.com/data5/MZ/EZ/FL/SELLER-57338056/programming-tech-500x500.png', 1, 1568181073),
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
(8, 3, 3, 500, '3 logo design, JPG, PNG, Source files, Business Card, Letterhead, Envelope, Social Midea Kit, 3D Mockup, Unlimited Revisions');

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
(16, 1, 0, 3, 'wrewr', '2019-12-10 12:33:57');

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
(9, 'sale', 'http://auctionbuy.in/african_super_market//uploads/brand/1574693183t0evdrv30taiirtatdta.png', 8, '<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">Serves customers by selling products and meeting customer needs. Services existing accounts, obtains orders, and establishes new accounts by planning and organizing daily work schedule to call on existing or potential </span><b style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">sales</b><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\"> outlets and other trade factors. </span><br></p>', 99, 0, '2019-11-25 20:16:23'),
(10, 'sale', 'http://auctionbuy.in/african_super_market//uploads/brand/15748488350raetta3ti3its0eeedr.png', 8, '<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">Serves customers by selling products and meeting customer needs. Services existing accounts, obtains orders, and establishes new accounts by planning and organizing daily work schedule to call on existing or potential&nbsp;</span><span style=\"font-weight: bolder; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">sales</span><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;outlets and other trade factors.&nbsp;</span><br></p>', 1, 0, '2019-11-27 15:30:35');

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
(1, 'Bronze', 200, 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(2, 'Silver', 350, 25, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(3, 'Gold', 500, 60, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1);

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
(5, 'Nitesh', 'nits2@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/user/aamIgmfeifemgemfIlIe1574704497.jpeg', '9999999999', '25d55ad283aa400af464c76d713c07ad', '1878', '49 Maryland Dr, Maidstone ME16 9EN, UK', 51.2662, 0.473142, 1, 1574159920),
(6, 'Archana Gahlot', 'archana.gropse@gmail.com', 'http://localhost/african_super_market/uploads/user/1574162343dadwoaoddddoawwoonod.png', '9554177211', '1bbd886460827015e5d605ed44252251', '5346', 'Noida, Uttar Pradesh, India', 28.5355, 77.391, 1, 1574160369),
(7, 'Archana Gahlot', 'archana@gmail.com', '', '9554177212', '1bbd886460827015e5d605ed44252251', '9081', '', 0, 0, 1, 1574161156),
(8, 'Komal Bajaj', 'komal.gropse@gmail.com', '', '123456', 'a60b3374ff9fe7575d225c4ff97b7aaf', '6068', '96, H Block, Sector 63, Noida, Uttar Pradesh 201301, India', 28.6285, 77.3769, 1, 1574227658),
(9, 'Ajit Babu', 'ajittrainee.gropse@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/user/ea87amiprek9ntau2cmk1574428280.jpg', '8953597827', '25d55ad283aa400af464c76d713c07ad', '8393', 'D-4, D Block, Sector 59, Noida, Uttar Pradesh 201307, India', 28.6077, 77.3727, 1, 1574228074),
(10, 'komal', 'k.bajaj93@gmail.com', '', '654', 'a60b3374ff9fe7575d225c4ff97b7aaf', '8406', '96, H Block, Sector 63, Noida, Uttar Pradesh 201301, India', 28.6285, 77.3769, 99, 1574244656),
(11, 'Clarence Early', 'earlyclarence1991@gmail.com', '', '4016597876', '25d55ad283aa400af464c76d713c07ad', '7341', '', 0, 0, 1, 1574315046),
(12, 'Komal Garg', 'komalgarg955@gmail.com', '', '9915296283', '41486c8e798974cccc16db869fe95e86', '9317', '147, H Block, Sector 63, Noida, Uttar Pradesh 201307, India', 28.6259, 77.3773, 1, 1574315117),
(13, 'Clarence Early', 'earlyclarence1991@yahoo.com', '', '4016024622', '25d55ad283aa400af464c76d713c07ad', '6981', '', 0, 0, 0, 1574315335),
(14, 'Tester', 'tester@gmail.com', '', '6543210', 'a60b3374ff9fe7575d225c4ff97b7aaf', '1465', '96, H Block, Sector 63, Noida, Uttar Pradesh 201301, India', 28.6285, 77.3769, 1, 1574315776),
(15, 'Vishal Saini', 'vs@gmail.com', '', '86768968697', '25d55ad283aa400af464c76d713c07ad', '7280', '', 0, 0, 0, 1574316757),
(16, 'Abcd', 'abcd@gmail.com', '', '12345678', 'a60b3374ff9fe7575d225c4ff97b7aaf', '4258', '', 0, 0, 0, 1574316913),
(17, 'nah', 'nav.nav@gmail.com', '', '0000000000', '25f9e794323b453885f5181f1b624d0b', '9083', '', 0, 0, 1, 1574317399),
(18, 'Archana', 'archana2016oct@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/user/1574335592dgalaatnnltiireigare.jpg', '99999999999', '1bbd886460827015e5d605ed44252251', '4197', 'Noida, Uttar Pradesh, India', 28.5355, 77.391, 1, 1574335492),
(19, 'Testing', 'testing@gmail.com', '', '123', 'a60b3374ff9fe7575d225c4ff97b7aaf', '5745', '147, H Block, Sector 63, Noida, Uttar Pradesh 201307, India', 28.6259, 77.3773, 1, 1574339216),
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
(62, 'Johnny', 'swennie@africanssupermarket.com', '', '2548760517', 'fbc50d9ecc25966dff48111c29c3581d', '6413', '', 0, 0, 1, 1574727620),
(63, 'Komal', 'komal@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', '2244', '', 0, 0, 0, 1574745613);

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
(195, 19, '1', '2b86da337eff6855', '12345', '556e636f36da75e7688b', 1574427708),
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
(390, 62, '1', '1e6acd92b4dbc691', '12345', 'c96b22dbdd6b1dd4ddc1', 1574727875),
(398, 6, '3', '5ddcb20f03eff', 'token_5ddcb20f03f38', 'd20c0002cd3f3fd235d0', 1574744591),
(413, 9, '1', '7a4eaa5e9fefbb25', '12345', 'fb755a5ae4e975bae724', 1574748027),
(425, 54, '1', '2b86da337eff6855', '12345', 'b8758a87bf3d3f6d5a52', 1574858988),
(427, 14, '1', '2b86da337eff6855', '12345', 'ff8853b6f73356f257f2', 1574859007),
(493, 17, '1', '77629ddf47567d1f', '12345', '7467fd27d7966fff6f17', 1574961445),
(527, 5, '2', '75DA309D-CED6-4C70-B226-87FD19D5D510', 'hqlhhniiopo-kdd;', 'DDEB3D20-0A5F5D21DF-', 1574997465),
(530, 10, '2', 'FA42527E-A022-4977-974D-B7F265BE0CE2', 'hqlhhniiopo-kdd;', '9200242F4A26EF550727', 1575018772),
(536, 8, '2', 'FA42527E-A022-4977-974D-B7F265BE0CE2', 'hqlhhniiopo-kdd;', '---74072E40A7CD9B0A2', 1575019375),
(538, 11, '1', 'a1b731dd76980020', '12345', 'd0a2b932b7680001877d', 1575040479);

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
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:not verified,1:active,2=blocked,99=deleted',
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `af_vendor`
--

INSERT INTO `af_vendor` (`id`, `name`, `email`, `image`, `mobile`, `password`, `otp`, `shop_name`, `address`, `lat`, `lng`, `status`, `created_at`) VALUES
(1, 'Vishal Kumar Saini', 'vishal.gropse@gmail.com', 'dgdg', '70652272172', 'e3ceb5881a0a1fdaad01296d7554868d', '9442', '', '', 0, 0, 1, 1573644794),
(2, 'vishal saini', 'vishal.gropse11@gmail.com', '', '70652272116', '96e79218965eb72c92a549dd5a330112', '6856', '', '', 0, 0, 1, 1573645748),
(3, 'vishal saini', 'vishal.grops1e11@gmail.com', '', '706522721116', '96e79218965eb72c92a549dd5a330112', '8666', '', '', 0, 0, 0, 1573645930),
(4, 'vishal saini', 'vishal.grops13e11@gmail.com', '', '7065227321116', '96e79218965eb72c92a549dd5a330112', '4978', '', '', 0, 0, 1, 1573645945),
(5, 'vishal saini', 'vishal1@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/-1200Wx1200H-220429-1-300Wx300H1574520121.png', '', '1bbd886460827015e5d605ed44252251', '0', '', 'New Ashok Nagar, New Delhi, India', 28.593, 77.3052, 1, 2019),
(6, 'archana', 'archana2016oct@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/depositphotos_74814023-stock-photo-indian-street-food1574520175.jpg', '', '25d55ad283aa400af464c76d713c07ad', '0', '', 'Kanpur, Uttar Pradesh, India', 26.4499, 80.3319, 1, 2019),
(7, 'new vendor', 'new@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/2017-01-23_5885f9c7d1a3d_840x5001574520651.jpg', '', '1bbd886460827015e5d605ed44252251', '0', 'Aabra Ka Dabra', 'New Ashok Nagar, New Delhi, India', 28.593, 77.3052, 0, 2019),
(8, 'Komal Bajaj', 'k.bajaj93@gmail.com', 'http://auctionbuy.in/african_super_market/uploads/vendor/img_031574665305.png', '', 'a60b3374ff9fe7575d225c4ff97b7aaf', '1272', 'Lifestyle', 'Sector 63, Noida, Uttar Pradesh, India', 28.621, 77.3812, 1, 2019);

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
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 1, 1, 2);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `af_cart`
--
ALTER TABLE `af_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `af_category`
--
ALTER TABLE `af_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `af_category_attribute`
--
ALTER TABLE `af_category_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `af_category_attribute_value`
--
ALTER TABLE `af_category_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `af_devilery_charges`
--
ALTER TABLE `af_devilery_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `af_files`
--
ALTER TABLE `af_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `af_orders`
--
ALTER TABLE `af_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `af_order_items`
--
ALTER TABLE `af_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `af_products`
--
ALTER TABLE `af_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `af_product_attribute`
--
ALTER TABLE `af_product_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `af_product_review`
--
ALTER TABLE `af_product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `af_product_specification`
--
ALTER TABLE `af_product_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `af_service`
--
ALTER TABLE `af_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `af_service_booking`
--
ALTER TABLE `af_service_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `af_service_category`
--
ALTER TABLE `af_service_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `af_service_detail`
--
ALTER TABLE `af_service_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `af_service_plan`
--
ALTER TABLE `af_service_plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `af_service_review`
--
ALTER TABLE `af_service_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `af_slider`
--
ALTER TABLE `af_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `af_subscription_plan`
--
ALTER TABLE `af_subscription_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `af_users`
--
ALTER TABLE `af_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `af_user_address`
--
ALTER TABLE `af_user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `af_user_auth`
--
ALTER TABLE `af_user_auth`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;

--
-- AUTO_INCREMENT for table `af_vendor`
--
ALTER TABLE `af_vendor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `af_wishlist`
--
ALTER TABLE `af_wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
