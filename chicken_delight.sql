-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2025 at 07:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chicken_delight`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `name`, `price`, `quantity`, `total_price`, `user_id`) VALUES
(22, 21, 'Chicken- Liver', 299, 1, 299, 14),
(23, 22, 'Chicken- Whole Leg', 249, 1, 249, 14),
(55, 16, 'Chicken- Curry Cut(Skin Off)', 449, 1, 449, 0),
(57, 18, 'Chicken- Wings', 549, 1, 549, 0),
(58, 19, 'Chicken Drumsticks', 499, 1, 499, 0),
(65, 20, 'Chicken- Lollipop', 549, 1, 549, 0),
(68, 23, 'Chicken Boneless (Cubes)', 289, 1, 289, 0),
(76, 22, 'Chicken- Whole Leg', 249, 1, 249, 0),
(77, 23, 'Chicken Boneless (Cubes)', 289, 1, 289, 0),
(78, 19, 'Chicken Drumsticks', 499, 1, 499, 0),
(79, 19, 'Chicken Drumsticks', 499, 1, 499, 0),
(80, 20, 'Chicken- Lollipop', 549, 1, 549, 0),
(81, 22, 'Chicken- Whole Leg', 249, 1, 249, 0),
(82, 20, 'Chicken- Lollipop', 549, 1, 549, 0),
(83, 19, 'Chicken Drumsticks', 499, 1, 499, 0),
(84, 16, 'Chicken- Curry Cut(Skin Off)', 449, 1, 449, 0),
(85, 16, 'Chicken- Curry Cut(Skin Off)', 449, 1, 449, 0),
(86, 21, 'Chicken- Liver', 299, 1, 299, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `username` text NOT NULL,
  `address` text NOT NULL,
  `locality` text NOT NULL,
  `area` text NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `contact` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `transaction_status` text NOT NULL,
  `transaction_id` text NOT NULL,
  `transaction_date` text NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `product_id`, `total_amount`, `username`, `address`, `locality`, `area`, `state`, `city`, `contact`, `pincode`, `order_status`, `transaction_status`, `transaction_id`, `transaction_date`, `reason`) VALUES
(1, 23, 23, 1536, 'mayu', 'Tulas Paltad', 'grfjy', 'vdbg', 'Maharashtra', 'Vengurla', '7769843674', 416515, 0, '0', '0', '2025-02-23 06:48:38', 'pending'),
(2, 23, 23, 1536, 'mayu', 'Tulas Paltad', 'grfjy', 'vdbg', 'Maharashtra', 'Vengurla', '3476548743', 416515, 0, '0', '0', '2025-02-23 06:49:08', 'pending'),
(3, 23, 23, 1536, 'mayu', 'Tulas Paltad', 'grfjy', 'vdbg', 'Maharashtra', 'Vengurla', '3476548743', 416515, 0, '0', '0', '2025-02-23 06:50:00', 'pending'),
(4, 23, 23, 1536, 'mayu', 'Tulas Paltad', 'grfjy', 'vdbg', 'Maharashtra', 'Vengurla', '3476548743', 416515, 1, '1', 'pay_Pz2qS60YpDjSu2', '2025-02-23 06:50:37', 'complete'),
(5, 23, 23, 289, 'mayu', 'Tulas Paltad', 'grfjy', 'vdbg', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-02-23 06:59:56', 'pending'),
(6, 23, 23, 289, 'mayu', 'Tulas Paltad', 'grfjy', 'vdbg', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-02-23 07:00:21', 'pending'),
(7, 23, 21, 588, 'mayu', 'Tulas Paltad', 'grfjy', 'vdbg', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-02-23 07:01:09', 'pending'),
(8, 23, 21, 588, 'mayu', 'Tulas Paltad', 'grfjy', 'vdbg', 'Maharashtra', 'Vengurla', '7769096495', 416515, 1, '1', 'pay_Pz2wIAcKQB3Na5', '2025-02-23 07:03:40', 'complete'),
(9, 23, 18, 549, 'mayu', 'Tulas Paltad', 'grfjy', 'vdbg', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-02-23 07:05:55', 'pending'),
(10, 23, 22, 798, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7769843674', 416515, 0, '0', '0', '2025-02-23 07:24:41', 'pending'),
(11, 23, 23, 1286, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7435663458', 416515, 0, '0', '0', '2025-02-23 15:30:08', 'pending'),
(12, 23, 23, 1286, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7435663458', 416515, 0, '0', '0', '2025-02-23 15:31:19', 'pending'),
(13, 23, 18, 1835, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-02-23 16:22:44', 'pending'),
(15, 23, 18, 1835, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-02-23 18:58:33', 'pending'),
(16, 23, 18, 1835, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-02-23 18:58:47', 'pending'),
(17, 23, 20, 3482, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7435663458', 416515, 0, '0', '0', '2025-02-24 07:54:53', 'pending'),
(18, 23, 20, 3482, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7435663458', 416515, 0, '0', '0', '2025-02-24 07:56:01', 'pending'),
(19, 23, 20, 3782, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '3476548743', 416515, 0, '0', '0', '2025-02-24 09:38:59', 'pending'),
(20, 23, 21, 3792, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-02-25 05:33:04', 'pending'),
(21, 23, 21, 3792, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-02-25 05:33:27', 'pending'),
(22, 23, 21, 3792, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7435663458', 416515, 0, '0', '0', '2025-02-25 05:48:51', 'pending'),
(23, 23, 21, 3792, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7435663458', 416515, 0, '0', '0', '2025-02-25 05:49:43', 'pending'),
(24, 23, 22, 2095, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7435663458', 416515, 0, '0', '0', '2025-02-26 15:39:49', 'pending'),
(25, 23, 19, 2145, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7769843674', 416515, 0, '0', '0', '2025-02-26 15:54:26', 'pending'),
(26, 23, 19, 2145, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-02-26 15:54:57', 'pending'),
(27, 23, 19, 2145, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-02-26 15:56:44', 'pending'),
(28, 23, 23, 2434, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-03-01 16:09:45', 'pending'),
(29, 23, 23, 2434, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-03-01 16:12:15', 'pending'),
(30, 23, 23, 2434, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-03-01 16:16:33', 'pending'),
(31, 23, 20, 5028, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '3476548743', 416515, 0, '0', '0', '2025-03-02 10:05:55', 'pending'),
(32, 23, 20, 5877, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7769843674', 416515, 0, '0', '0', '2025-03-10 09:54:00', 'pending'),
(33, 23, 20, 5877, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-03-10 09:54:21', 'pending'),
(34, 23, 20, 5877, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-03-10 09:54:44', 'pending'),
(35, 23, 20, 5877, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-03-10 09:55:34', 'pending'),
(36, 23, 20, 5877, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-03-10 09:56:01', 'pending'),
(37, 23, 20, 6426, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-03-13 09:22:01', 'pending'),
(38, 23, 20, 6426, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-03-13 09:23:52', 'pending'),
(39, 23, 20, 6426, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7769096495', 416515, 0, '0', '0', '2025-03-13 09:29:02', 'pending'),
(40, 23, 19, 1497, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7435663458', 416515, 0, '0', '0', '2025-03-14 06:40:58', 'pending'),
(41, 23, 19, 1497, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '7435663458', 416515, 0, '0', '0', '2025-03-14 06:41:17', 'pending'),
(42, 23, 19, 1497, '', '', '', '', '', '', '', 0, 1, '1', 'pay_Q6Ypn4PirlgoqI', '2025-03-14 06:45:45', 'complete'),
(43, 23, 0, 0, 'mayu', 'Tulas Paltad', 'Tulas', 'Paltad', 'Maharashtra', 'Vengurla', '1234567893', 416515, 0, '0', '0', '2025-03-14 06:58:53', 'pending'),
(44, 23, 0, 0, '', '', '', '', '', '', '', 0, 0, '0', '0', '2025-03-14 06:59:49', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `user_id`, `product_id`, `unit_price`, `quantity`, `product_amount`, `order_id`, `date`) VALUES
(1, 23, 16, 449, 1, 1536, 4, '2025-02-23 06:59:12'),
(2, 23, 19, 499, 1, 1536, 4, '2025-02-23 06:59:12'),
(3, 23, 21, 299, 1, 1536, 4, '2025-02-23 06:59:12'),
(4, 23, 23, 289, 1, 1536, 4, '2025-02-23 06:59:12'),
(5, 23, 23, 289, 1, 588, 8, '2025-02-23 07:04:44'),
(6, 23, 21, 299, 1, 588, 8, '2025-02-23 07:04:44'),
(7, 23, 20, 549, 1, 1497, 42, '2025-03-14 06:50:33'),
(8, 23, 16, 449, 1, 1497, 42, '2025-03-14 06:50:33'),
(9, 23, 19, 499, 1, 1497, 42, '2025-03-14 06:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `photo` text NOT NULL,
  `description` text NOT NULL,
  `quantity` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `photo`, `description`, `quantity`, `price`) VALUES
(16, 'Chicken- Curry Cut(Skin Off)', 'img4.webp', 'As most of the fat content in a chicken is stored in its skin, our chicken curry cut without the skin is a healthy alternative.', '14', '449'),
(18, 'Chicken- Wings', 'wings.webp', 'Chicken Wings is a mix of meaty and bone-in cut of the chicken. This cut includes bone-in pieces with skin that are succulent and flavourful.', '11-16 (pcs)', '549'),
(19, 'Chicken Drumsticks', 'drumsticks.webp', 'The lower quarter of the chicken’s leg, meticulously cut for even cooking. Inexpensive and easy to cook, you can drum up a culinary storm.', '1', '499'),
(20, 'Chicken- Lollipop', 'lollipop.png', 'With high meat to bone ratio, our incredibly delectable chicken lollipops are hand cut with utmost precision. Made from chicken wings, they are a perfect balance of a crisp outside and rich, moist meat.', '3', '549'),
(21, 'Chicken- Liver', 'liver.webp', 'chicken liver has a peculiarly delicious taste and texture, that is denser than meat which makes a nutritious, healthy meal packed with vitamins and iron.', '0', '299'),
(22, 'Chicken- Whole Leg', 'whole leg.webp', 'A combination of chicken drumstick and thigh, whole chicken leg with a higher fat content, is a wonderfully juicy cut of meat.', '2-4(pcs)', '249'),
(23, 'Chicken Boneless (Cubes)', 'boneless cubes.webp', 'Fresh pack of boneless and buttery chicken pieces cut in cubes. Soft, slimy breast portions cut in uniform shapes are easy to evenly cook.', '3', '289');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email_id` text NOT NULL,
  `password` text NOT NULL,
  `contact` text NOT NULL,
  `type` int(11) NOT NULL,
  `photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email_id`, `password`, `contact`, `type`, `photo`) VALUES
(2, 'mayuri shetkar', 'mayurishetkar12@gmail.com', '1234', '7769096495', 0, NULL),
(4, 'vinod shetkar', 'vinodshetkar12@gmail.com', 'dmlub2QxMjAx', '7769843674', 0, NULL),
(5, 'kartiki', 'kartiki12@gmail.com', 'a2FydGlraTEy', '7769096495', 0, NULL),
(11, 'mayuri', 'mayuripalav@gmail.com', 'MTIzNDU=', '7654678934', 0, NULL),
(14, 'admin', 'admin@gmail.com', 'MTIz', '1234567896', 1, NULL),
(20, 'gayatri', 'gayatri@gmail.com', 'MTIz', '1234567890', 0, NULL),
(21, 'sakshi', 'sakshi@gmail.com', 'MzQ1', '7654348765', 0, NULL),
(22, 'a', 'a@gmail.com', 'MTIz', '3476548743', 0, NULL),
(25, 'mayu', 'mayu@gmail.com', 'MTIz', '7769096495', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
