-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 03:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(10) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `categoryName`, `description`) VALUES
(1, 'Electronic', 'Devices like phones, laptops, and accessories.'),
(2, 'Clothing', 'Apparel, shoes, and accessories.'),
(3, 'Toys', 'Children’s toys and games.');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `firstName`, `lastName`, `email`, `pwd`, `phone`, `address`, `createdAt`, `updatedAt`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'password123', '555-1234', '123 Main St, Springfield', '2024-11-16 12:41:30', '2024-11-16 12:41:30'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'password456', '555-5678', '456 Oak St, Shelbyville', '2024-11-16 12:41:30', '2024-11-16 12:41:30'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 'password789', '555-8765', '789 Pine St, Capital City', '2024-11-16 12:41:30', '2024-11-16 12:41:30'),
(5, 'Emily', 'Davis', 'emily.davis@example.com', 'password202', '555-3333', '202 Elm St, Shelbyville', '2024-11-18 10:25:30', '2024-11-18 10:25:30'),
(6, 'David', 'Martinez', 'david.martinez@example.com', 'password303', '555-4444', '303 Birch St, Capital City', '2024-11-19 09:35:55', '2024-11-19 09:35:55'),
(7, 'Sophia', 'Hernandez', 'sophia.hernandez@example.com', 'password404', '555-5555', '404 Cedar St, Springfield', '2024-11-20 14:45:05', '2024-11-20 14:45:05'),
(8, 'Liam', 'Lopez', 'liam.lopez@example.com', 'password505', '555-6666', '505 Pine St, Shelbyville', '2024-11-21 11:00:15', '2024-11-21 11:00:15'),
(9, 'Olivia', 'Gonzalez', 'olivia.gonzalez@example.com', 'password606', '555-7777', '606 Oak St, Capital City', '2024-11-22 13:20:25', '2024-11-22 13:20:25'),
(10, 'James', 'Wilson', 'james.wilson@example.com', 'password707', '555-8888', '707 Maple St, Springfield', '2024-11-23 16:30:35', '2024-11-23 16:30:35'),
(11, 'Mia', 'Anderson', 'mia.anderson@example.com', 'password808', '555-9999', '808 Birch St, Shelbyville', '2024-11-24 17:40:45', '2024-11-24 17:40:45'),
(12, 'Ethan', 'Thomas', 'ethan.thomas@example.com', 'password909', '555-0000', '909 Cedar St, Capital City', '2024-11-25 18:50:55', '2024-11-25 18:50:55'),
(13, 'Isabella', 'Jackson', 'isabella.jackson@example.com', 'password010', '555-1235', '123 Pine St, Springfield', '2024-11-26 19:15:05', '2024-11-26 19:15:05'),
(14, 'Aiden', 'White', 'aiden.white@example.com', 'password111', '555-6789', '456 Maple St, Shelbyville', '2024-11-27 20:25:15', '2024-11-27 20:25:15'),
(15, 'Amelia', 'Harris', 'amelia.harris@example.com', 'password212', '555-7890', '789 Birch St, Capital City', '2024-11-28 21:35:25', '2024-11-28 21:35:25'),
(16, 'Benjamin', 'Clark', 'benjamin.clark@example.com', 'password313', '555-1111', '123 Birch St, Springfield', '2024-11-29 10:00:05', '2024-11-29 10:00:05'),
(17, 'Charlotte', 'Lewis', 'charlotte.lewis@example.com', 'password414', '555-2222', '456 Pine St, Shelbyville', '2024-11-30 13:15:15', '2024-11-30 13:15:15'),
(18, 'Daniel', 'Walker', 'daniel.walker@example.com', 'password515', '555-3333', '789 Maple St, Capital City', '2024-12-01 14:20:25', '2024-12-01 14:20:25'),
(19, 'Ella', 'Young', 'ella.young@example.com', 'password616', '555-4444', '101 Cedar St, Springfield', '2024-12-02 15:30:35', '2024-12-02 15:30:35'),
(20, 'Francis', 'King', 'francis.king@example.com', 'password717', '555-5555', '202 Birch St, Shelbyville', '2024-12-03 16:40:45', '2024-12-03 16:40:45'),
(21, 'Grace', 'Scott', 'grace.scott@example.com', 'password818', '555-6666', '303 Pine St, Capital City', '2024-12-04 17:50:55', '2024-12-04 17:50:55'),
(22, 'Henry', 'Nelson', 'henry.nelson@example.com', 'password919', '555-7777', '404 Maple St, Springfield', '2024-12-05 18:00:05', '2024-12-05 18:00:05'),
(23, 'Ivy', 'Adams', 'ivy.adams@example.com', 'password020', '555-8888', '505 Cedar St, Shelbyville', '2024-12-06 19:10:15', '2024-12-06 19:10:15'),
(24, 'Jack', 'Baker', 'jack.baker@example.com', 'password121', '555-9999', '606 Pine St, Capital City', '2024-12-07 20:20:25', '2024-12-07 20:20:25'),
(25, 'Lily', 'Carter', 'lily.carter@example.com', 'password222', '555-0000', '707 Birch St, Springfield', '2024-12-08 21:30:35', '2024-12-08 21:30:35'),
(26, 'Mason', 'Mitchell', 'mason.mitchell@example.com', 'password323', '555-1111', '808 Pine St, Shelbyville', '2024-12-09 10:40:45', '2024-12-09 10:40:45'),
(27, 'Nina', 'Roberts', 'nina.roberts@example.com', 'password424', '555-2222', '909 Cedar St, Capital City', '2024-12-10 11:50:55', '2024-12-10 11:50:55'),
(28, 'Peter', 'Parker', 'peter.parker@example.com', 'password001', '555-0100', '123 Web St, New York', '2024-11-16 12:00:00', '2024-11-16 12:00:00'),
(29, 'Mary', 'Jane', 'mary.jane@example.com', 'password002', '555-0101', '456 Love St, New York', '2024-11-16 12:00:00', '2024-11-16 12:00:00'),
(30, 'Tony', 'Stark', 'tony.stark@example.com', 'password003', '555-0102', '789 Stark Tower, New York', '2024-11-16 12:00:00', '2024-11-16 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `totalAmount` double NOT NULL,
  `status` varchar(15) NOT NULL,
  `shippingAddress` text NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderID`, `customerID`, `orderDate`, `totalAmount`, `status`, `shippingAddress`, `createdAt`, `updatedAt`) VALUES
(1, 1, '2024-11-10', 199.99, 'Pending', '123 Main St, Springfield', '2024-11-16 12:42:01', '2024-11-16 12:42:01'),
(2, 2, '2024-11-11', 299.99, 'Shipped', '456 Oak St, Shelbyville', '2024-11-16 12:42:01', '2024-11-16 12:42:01'),
(3, 3, '2024-11-12', 149.99, 'Delivered', '789 Pine St, Capital City', '2024-11-16 12:42:01', '2024-11-16 12:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `orderItemID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`orderItemID`, `orderID`, `productID`, `quantity`, `price`) VALUES
(1, 1, 1, 1, 99.99),
(2, 1, 2, 1, 99.99),
(3, 2, 3, 2, 149.99),
(4, 3, 4, 1, 149.99),
(5, 3, 5, 1, 149.99);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` double NOT NULL,
  `paymentMethod` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `orderID`, `paymentDate`, `amount`, `paymentMethod`, `status`) VALUES
(1, 1, '2024-11-10', 199.99, 'Credit Card', 'Pending'),
(2, 2, '2024-11-11', 299.99, 'PayPal', 'Completed'),
(3, 3, '2024-11-12', 149.99, 'Debit Card', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `productName` varchar(30) NOT NULL,
  `description` text DEFAULT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `description`, `price`, `stock`, `categoryID`, `createdAt`, `updatedAt`) VALUES
(1, 'Wireless Mouse', 'Ergonomic wireless mouse with adjustable DPI settings', 29.99, 150, 1, '2024-11-16 02:10:31', '2024-11-16 03:11:48'),
(2, 'Bluetooth Headphones', 'Noise-cancelling over-ear Bluetooth headphones', 89.99, 85, 2, '2024-11-16 02:10:31', '2024-11-16 02:10:31'),
(3, 'Gaming Laptop', 'High-performance gaming laptop with 16GB RAM and 1TB SSD', 1299.99, 20, 3, '2024-11-16 02:10:31', '2024-11-16 02:10:31'),
(4, 'Smartwatch', 'Smartwatch with heart rate monitor and fitness tracking features', 199.99, 200, 1, '2024-11-16 02:10:31', '2024-11-16 02:10:31'),
(5, '4K Monitor', 'Ultra HD 4K monitor with 27-inch display', 349.99, 50, 2, '2024-11-16 02:10:31', '2024-11-16 03:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comment` text DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewID`, `productID`, `customerID`, `rating`, `comment`, `createdAt`) VALUES
(1, 1, 1, 5, 'Great product, highly recommend!', '2024-11-16 12:41:45'),
(2, 2, 2, 4, 'Good quality, but a bit expensive.', '2024-11-16 12:41:45'),
(3, 3, 3, 3, 'It works, but not as expected.', '2024-11-16 12:41:45'),
(4, 4, 1, 5, 'Absolutely love this product! Will buy again.', '2024-11-16 12:41:45'),
(5, 5, 2, 2, 'Didn\'t meet my expectations, could be improved.', '2024-11-16 12:41:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`orderItemID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `customerID` (`customerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `orderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
