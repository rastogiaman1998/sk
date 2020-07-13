-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 09:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `summerking`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `article_name` varchar(255) NOT NULL,
  `article_body` text NOT NULL,
  `para2` text NOT NULL,
  `para3` text NOT NULL,
  `article_image` varchar(255) NOT NULL,
  `article_image2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `article_name`, `article_body`, `para2`, `para3`, `article_image`, `article_image2`) VALUES
(1, 'Celebrating 40 years of togetherness', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ornare mauris eget nulla fermentum dignissim. Ut pretium purus nunc, sit amet pulvinar orci egestas eget. Phasellus non mi luctus purus pellentesque dapibus. Cras odio augue, accumsan in efficitur vitae, efficitur in ligula. Nam mattis nunc fringilla, luctus risus eget, luctus elit. Cras ultrices egestas velit. Nullam eu est ut felis posuere aliquam. Praesent sed enim pulvinar, finibus erat a, pretium ex. Duis sollicitudin scelerisque rhoncus. Quisque quis dignissim nunc. Vivamus euismod libero at varius condimentum. Vestibulum ut facilisis nibh. Maecenas non purus id massa gravida tristique semper ac quam. Aliquam erat volutpat. Nulla quis leo ipsum. Sed mollis turpis sed nisl cursus, sit amet euismod urna eleifend.  Etiam at bibendum ex, ut eleifend leo. Vivamus maximus erat non bibendum condimentum. Vestibulum imperdiet mauris massa, eget porta nunc maximus sed. Aliquam dui metus, pellentesque in dapibus at, pulvinar in enim. Morbi molestie varius elit sit amet sodales. Curabitur id imperdiet enim, iaculis venenatis enim. Proin interdum eros eget elementum consequat. Integer elit urna, mattis a sollicitudin et, dapibus ac nunc. Cras vel tincidunt sem, non dapibus ipsum. Aenean sed viverra erat, ut faucibus sem. Aenean bibendum turpis sit amet tortor pulvinar accumsan. Suspendisse sit amet erat vitae lectus mattis sagittis id tincidunt justo.  Duis et orci eu lacus ultricies consequat. Duis lorem ex, feugiat nec magna et, ullamcorper lobortis est. Proin congue erat eget semper gravida. Nunc iaculis id neque id fringilla. Vivamus pretium blandit dui, sed consequat ipsum dictum non. Quisque sit amet aliquet lorem, at lacinia mauris. Sed fermentum ultricies gravida. Sed malesuada tristique sem non elementum. In at est venenatis arcu sagittis eleifend. Suspendisse potenti. Suspendisse in felis condimentum, auctor metus quis, consequat ante.  Morbi condimentum, tortor nec finibus vestibulum, elit lacus consequat nisi, vel molestie augue urna quis mi. Duis laoreet, ex at venenatis porta, erat nulla egestas nibh, a bibendum lorem dolor id odio. Suspendisse iaculis metus ac tincidunt sodales. Nullam sollicitudin sem est, ac aliquet lectus tempus nec. Mauris blandit, lectus sit amet interdum volutpat, ex tortor faucibus neque, porta ornare lacus felis euismod elit. Mauris ut rhoncus nisi, vitae fringilla magna. Curabitur a enim laoreet, tincidunt nibh quis, lacinia ex. Praesent pellentesque at lorem eu fermentum. Etiam pharetra dolor in neque sodales, lobortis pellentesque mi pellentesque. Nulla ultricies suscipit eleifend. Nullam et augue felis.  Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce pellentesque quis arcu dignissim mattis. Vivamus pulvinar tincidunt mauris vel viverra. In egestas a augue in commodo. Fusce justo nisi, placerat a velit ut, condimentum pharetra nulla. Nunc at viverra dolor. Donec gravida leo ac nisl feugiat, a facilisis risus tempus. ', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ornare mauris eget nulla fermentum dignissim. Ut pretium purus nunc, sit amet pulvinar orci egestas eget. Phasellus non mi luctus purus pellentesque dapibus. Cras odio augue, accumsan in efficitur vitae, efficitur in ligula. Nam mattis nunc fringilla, luctus risus eget, luctus elit. Cras ultrices egestas velit. Nullam eu est ut felis posuere aliquam. Praesent sed enim pulvinar, finibus erat a, pretium ex. Duis sollicitudin scelerisque rhoncus. Quisque quis dignissim nunc. Vivamus euismod libero at varius condimentum. Vestibulum ut facilisis nibh. Maecenas non purus id massa gravida tristique semper ac quam. Aliquam erat volutpat. Nulla quis leo ipsum. Sed mollis turpis sed nisl cursus, sit amet euismod urna eleifend.  Etiam at bibendum ex, ut eleifend leo. Vivamus maximus erat non bibendum condimentum. Vestibulum imperdiet mauris massa, eget porta nunc maximus sed. Aliquam dui metus, pellentesque in dapibus at, pulvinar in enim. Morbi molestie varius elit sit amet sodales. Curabitur id imperdiet enim, iaculis venenatis enim. Proin interdum eros eget elementum consequat. Integer elit urna, mattis a sollicitudin et, dapibus ac nunc. Cras vel tincidunt sem, non dapibus ipsum. Aenean sed viverra erat, ut faucibus sem. Aenean bibendum turpis sit amet tortor pulvinar accumsan. Suspendisse sit amet erat vitae lectus mattis sagittis id tincidunt justo.  Duis et orci eu lacus ultricies consequat. Duis lorem ex, feugiat nec magna et, ullamcorper lobortis est. Proin congue erat eget semper gravida. Nunc iaculis id neque id fringilla. Vivamus pretium blandit dui, sed consequat ipsum dictum non. Quisque sit amet aliquet lorem, at lacinia mauris. Sed fermentum ultricies gravida. Sed malesuada tristique sem non elementum. In at est venenatis arcu sagittis eleifend. Suspendisse potenti. Suspendisse in felis condimentum, auctor metus quis, consequat ante.  Morbi condimentum, tortor nec finibus vestibulum, elit lacus consequat nisi, vel molestie augue urna quis mi. Duis laoreet, ex at venenatis porta, erat nulla egestas nibh, a bibendum lorem dolor id odio. Suspendisse iaculis metus ac tincidunt sodales. Nullam sollicitudin sem est, ac aliquet lectus tempus nec. Mauris blandit, lectus sit amet interdum volutpat, ex tortor faucibus neque, porta ornare lacus felis euismod elit. Mauris ut rhoncus nisi, vitae fringilla magna. Curabitur a enim laoreet, tincidunt nibh quis, lacinia ex. Praesent pellentesque at lorem eu fermentum. Etiam pharetra dolor in neque sodales, lobortis pellentesque mi pellentesque. Nulla ultricies suscipit eleifend. Nullam et augue felis.  Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce pellentesque quis arcu dignissim mattis. Vivamus pulvinar tincidunt mauris vel viverra. In egestas a augue in commodo. Fusce justo nisi, placerat a velit ut, condimentum pharetra nulla. Nunc at viverra dolor. Donec gravida leo ac nisl feugiat, a facilisis risus tempus. ', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ornare mauris eget nulla fermentum dignissim. Ut pretium purus nunc, sit amet pulvinar orci egestas eget. Phasellus non mi luctus purus pellentesque dapibus. Cras odio augue, accumsan in efficitur vitae, efficitur in ligula. Nam mattis nunc fringilla, luctus risus eget, luctus elit. Cras ultrices egestas velit. Nullam eu est ut felis posuere aliquam. Praesent sed enim pulvinar, finibus erat a, pretium ex. Duis sollicitudin scelerisque rhoncus. Quisque quis dignissim nunc. Vivamus euismod libero at varius condimentum. Vestibulum ut facilisis nibh. Maecenas non purus id massa gravida tristique semper ac quam. Aliquam erat volutpat. Nulla quis leo ipsum. Sed mollis turpis sed nisl cursus, sit amet euismod urna eleifend.  Etiam at bibendum ex, ut eleifend leo. Vivamus maximus erat non bibendum condimentum. Vestibulum imperdiet mauris massa, eget porta nunc maximus sed. Aliquam dui metus, pellentesque in dapibus at, pulvinar in enim. Morbi molestie varius elit sit amet sodales. Curabitur id imperdiet enim, iaculis venenatis enim. Proin interdum eros eget elementum consequat. Integer elit urna, mattis a sollicitudin et, dapibus ac nunc. Cras vel tincidunt sem, non dapibus ipsum. Aenean sed viverra erat, ut faucibus sem. Aenean bibendum turpis sit amet tortor pulvinar accumsan. Suspendisse sit amet erat vitae lectus mattis sagittis id tincidunt justo.  Duis et orci eu lacus ultricies consequat. Duis lorem ex, feugiat nec magna et, ullamcorper lobortis est. Proin congue erat eget semper gravida. Nunc iaculis id neque id fringilla. Vivamus pretium blandit dui, sed consequat ipsum dictum non. Quisque sit amet aliquet lorem, at lacinia mauris. Sed fermentum ultricies gravida. Sed malesuada tristique sem non elementum. In at est venenatis arcu sagittis eleifend. Suspendisse potenti. Suspendisse in felis condimentum, auctor metus quis, consequat ante.  Morbi condimentum, tortor nec finibus vestibulum, elit lacus consequat nisi, vel molestie augue urna quis mi. Duis laoreet, ex at venenatis porta, erat nulla egestas nibh, a bibendum lorem dolor id odio. Suspendisse iaculis metus ac tincidunt sodales. Nullam sollicitudin sem est, ac aliquet lectus tempus nec. Mauris blandit, lectus sit amet interdum volutpat, ex tortor faucibus neque, porta ornare lacus felis euismod elit. Mauris ut rhoncus nisi, vitae fringilla magna. Curabitur a enim laoreet, tincidunt nibh quis, lacinia ex. Praesent pellentesque at lorem eu fermentum. Etiam pharetra dolor in neque sodales, lobortis pellentesque mi pellentesque. Nulla ultricies suscipit eleifend. Nullam et augue felis.  Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce pellentesque quis arcu dignissim mattis. Vivamus pulvinar tincidunt mauris vel viverra. In egestas a augue in commodo. Fusce justo nisi, placerat a velit ut, condimentum pharetra nulla. Nunc at viverra dolor. Donec gravida leo ac nisl feugiat, a facilisis risus tempus. ', './images/website/40Years.jpg', './images/sk-products/catalog/40_Page_01.jpg'),
(2, 'Summering cooler making lives easy', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ornare mauris eget nulla fermentum dignissim. Ut pretium purus nunc, sit amet pulvinar orci egestas eget. Phasellus non mi luctus purus pellentesque dapibus. Cras odio augue, accumsan in efficitur vitae, efficitur in ligula. Nam mattis nunc fringilla, luctus risus eget, luctus elit. Cras ultrices egestas velit. Nullam eu est ut felis posuere aliquam. Praesent sed enim pulvinar, finibus erat a, pretium ex. Duis sollicitudin scelerisque rhoncus. Quisque quis dignissim nunc. Vivamus euismod libero at varius condimentum. Vestibulum ut facilisis nibh. Maecenas non purus id massa gravida tristique semper ac quam. Aliquam erat volutpat. Nulla quis leo ipsum. Sed mollis turpis sed nisl cursus, sit amet euismod urna eleifend.  Etiam at bibendum ex, ut eleifend leo. Vivamus maximus erat non bibendum condimentum. Vestibulum imperdiet mauris massa, eget porta nunc maximus sed. Aliquam dui metus, pellentesque in dapibus at, pulvinar in enim. Morbi molestie varius elit sit amet sodales. Curabitur id imperdiet enim, iaculis venenatis enim. Proin interdum eros eget elementum consequat. Integer elit urna, mattis a sollicitudin et, dapibus ac nunc. Cras vel tincidunt sem, non dapibus ipsum. Aenean sed viverra erat, ut faucibus sem. Aenean bibendum turpis sit amet tortor pulvinar accumsan. Suspendisse sit amet erat vitae lectus mattis sagittis id tincidunt justo.  Duis et orci eu lacus ultricies consequat. Duis lorem ex, feugiat nec magna et, ullamcorper lobortis est. Proin congue erat eget semper gravida. Nunc iaculis id neque id fringilla. Vivamus pretium blandit dui, sed consequat ipsum dictum non. Quisque sit amet aliquet lorem, at lacinia mauris. Sed fermentum ultricies gravida. Sed malesuada tristique sem non elementum. In at est venenatis arcu sagittis eleifend. Suspendisse potenti. Suspendisse in felis condimentum, auctor metus quis, consequat ante.  Morbi condimentum, tortor nec finibus vestibulum, elit lacus consequat nisi, vel molestie augue urna quis mi. Duis laoreet, ex at venenatis porta, erat nulla egestas nibh, a bibendum lorem dolor id odio. Suspendisse iaculis metus ac tincidunt sodales. Nullam sollicitudin sem est, ac aliquet lectus tempus nec. Mauris blandit, lectus sit amet interdum volutpat, ex tortor faucibus neque, porta ornare lacus felis euismod elit. Mauris ut rhoncus nisi, vitae fringilla magna. Curabitur a enim laoreet, tincidunt nibh quis, lacinia ex. Praesent pellentesque at lorem eu fermentum. Etiam pharetra dolor in neque sodales, lobortis pellentesque mi pellentesque. Nulla ultricies suscipit eleifend. Nullam et augue felis.  Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce pellentesque quis arcu dignissim mattis. Vivamus pulvinar tincidunt mauris vel viverra. In egestas a augue in commodo. Fusce justo nisi, placerat a velit ut, condimentum pharetra nulla. Nunc at viverra dolor. Donec gravida leo ac nisl feugiat, a facilisis risus tempus. ', '', '', './images/website/range.jpg', ''),
(4, 'Be The Best', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ornare mauris eget nulla fermentum dignissim. Ut pretium purus nunc, sit amet pulvinar orci egestas eget. Phasellus non mi luctus purus pellentesque dapibus. Cras odio augue, accumsan in efficitur vitae, efficitur in ligula. Nam mattis nunc fringilla, luctus risus eget, luctus elit. Cras ultrices egestas velit. Nullam eu est ut felis posuere aliquam. Praesent sed enim pulvinar, finibus erat a, pretium ex. Duis sollicitudin scelerisque rhoncus. Quisque quis dignissim nunc. Vivamus euismod libero at varius condimentum. Vestibulum ut facilisis nibh. Maecenas non purus id massa gravida tristique semper ac quam. Aliquam erat volutpat. Nulla quis leo ipsum. Sed mollis turpis sed nisl cursus, sit amet euismod urna eleifend.  Etiam at bibendum ex, ut eleifend leo. Vivamus maximus erat non bibendum condimentum. Vestibulum imperdiet mauris massa, eget porta nunc maximus sed. Aliquam dui metus, pellentesque in dapibus at, pulvinar in enim. Morbi molestie varius elit sit amet sodales. Curabitur id imperdiet enim, iaculis venenatis enim. Proin interdum eros eget elementum consequat. Integer elit urna, mattis a sollicitudin et, dapibus ac nunc. Cras vel tincidunt sem, non dapibus ipsum. Aenean sed viverra erat, ut faucibus sem. Aenean bibendum turpis sit amet tortor pulvinar accumsan. Suspendisse sit amet erat vitae lectus mattis sagittis id tincidunt justo.  Duis et orci eu lacus ultricies consequat. Duis lorem ex, feugiat nec magna et, ullamcorper lobortis est. Proin congue erat eget semper gravida. Nunc iaculis id neque id fringilla. Vivamus pretium blandit dui, sed consequat ipsum dictum non. Quisque sit amet aliquet lorem, at lacinia mauris. Sed fermentum ultricies gravida. Sed malesuada tristique sem non elementum. In at est venenatis arcu sagittis eleifend. Suspendisse potenti. Suspendisse in felis condimentum, auctor metus quis, consequat ante.  Morbi condimentum, tortor nec finibus vestibulum, elit lacus consequat nisi, vel molestie augue urna quis mi. Duis laoreet, ex at venenatis porta, erat nulla egestas nibh, a bibendum lorem dolor id odio. Suspendisse iaculis metus ac tincidunt sodales. Nullam sollicitudin sem est, ac aliquet lectus tempus nec. Mauris blandit, lectus sit amet interdum volutpat, ex tortor faucibus neque, porta ornare lacus felis euismod elit. Mauris ut rhoncus nisi, vitae fringilla magna. Curabitur a enim laoreet, tincidunt nibh quis, lacinia ex. Praesent pellentesque at lorem eu fermentum. Etiam pharetra dolor in neque sodales, lobortis pellentesque mi pellentesque. Nulla ultricies suscipit eleifend. Nullam et augue felis.  Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce pellentesque quis arcu dignissim mattis. Vivamus pulvinar tincidunt mauris vel viverra. In egestas a augue in commodo. Fusce justo nisi, placerat a velit ut, condimentum pharetra nulla. Nunc at viverra dolor. Donec gravida leo ac nisl feugiat, a facilisis risus tempus. ', '', '', './images/website/best.jpg', ''),
(12, 'Summerking recognized as leader', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ornare mauris eget nulla fermentum dignissim. Ut pretium purus nunc, sit amet pulvinar orci egestas eget. Phasellus non mi luctus purus pellentesque dapibus. Cras odio augue, accumsan in efficitur vitae, efficitur in ligula. Nam mattis nunc fringilla, luctus risus eget, luctus elit. Cras ultrices egestas velit. Nullam eu est ut felis posuere aliquam. Praesent sed enim pulvinar, finibus erat a, pretium ex. Duis sollicitudin scelerisque rhoncus. Quisque quis dignissim nunc. Vivamus euismod libero at varius condimentum. Vestibulum ut facilisis nibh. Maecenas non purus id massa gravida tristique semper ac quam. Aliquam erat volutpat. Nulla quis leo ipsum. Sed mollis turpis sed nisl cursus, sit amet euismod urna eleifend.  Etiam at bibendum ex, ut eleifend leo. Vivamus maximus erat non bibendum condimentum. Vestibulum imperdiet mauris massa, eget porta nunc maximus sed. Aliquam dui metus, pellentesque in dapibus at, pulvinar in enim. Morbi molestie varius elit sit amet sodales. Curabitur id imperdiet enim, iaculis venenatis enim. Proin interdum eros eget elementum consequat. Integer elit urna, mattis a sollicitudin et, dapibus ac nunc. Cras vel tincidunt sem, non dapibus ipsum. Aenean sed viverra erat, ut faucibus sem. Aenean bibendum turpis sit amet tortor pulvinar accumsan. Suspendisse sit amet erat vitae lectus mattis sagittis id tincidunt justo.  Duis et orci eu lacus ultricies consequat. Duis lorem ex, feugiat nec magna et, ullamcorper lobortis est. Proin congue erat eget semper gravida. Nunc iaculis id neque id fringilla. Vivamus pretium blandit dui, sed consequat ipsum dictum non. Quisque sit amet aliquet lorem, at lacinia mauris. Sed fermentum ultricies gravida. Sed malesuada tristique sem non elementum. In at est venenatis arcu sagittis eleifend. Suspendisse potenti. Suspendisse in felis condimentum, auctor metus quis, consequat ante.  Morbi condimentum, tortor nec finibus vestibulum, elit lacus consequat nisi, vel molestie augue urna quis mi. Duis laoreet, ex at venenatis porta, erat nulla egestas nibh, a bibendum lorem dolor id odio. Suspendisse iaculis metus ac tincidunt sodales. Nullam sollicitudin sem est, ac aliquet lectus tempus nec. Mauris blandit, lectus sit amet interdum volutpat, ex tortor faucibus neque, porta ornare lacus felis euismod elit. Mauris ut rhoncus nisi, vitae fringilla magna. Curabitur a enim laoreet, tincidunt nibh quis, lacinia ex. Praesent pellentesque at lorem eu fermentum. Etiam pharetra dolor in neque sodales, lobortis pellentesque mi pellentesque. Nulla ultricies suscipit eleifend. Nullam et augue felis.  Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce pellentesque quis arcu dignissim mattis. Vivamus pulvinar tincidunt mauris vel viverra. In egestas a augue in commodo. Fusce justo nisi, placerat a velit ut, condimentum pharetra nulla. Nunc at viverra dolor. Donec gravida leo ac nisl feugiat, a facilisis risus tempus. ', '', '', './images/sk-products/catalog/40_Page_14.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `dealer_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `mobile_number` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`dealer_id`, `first_name`, `last_name`, `email`, `password`, `create_datetime`, `mobile_number`, `address`, `city`, `state`) VALUES
(2, 'Aman', 'Rastogi', 'amanr@gmail.com', 'aman', '0000-00-00 00:00:00', '9811554026', 'xyz', 'Delhi', 'Delhi'),
(3, 'Kapil', 'xyz', 'kapil1234@gmail.com', 'kapil', '0000-00-00 00:00:00', '9855447825', 'abcd', 'delhi', 'delhi'),
(4, 'xyz', 'xyz', 'xyz@gmail.com', 'xyz', '0000-00-00 00:00:00', '9811554026', 'abcd', 'abcd', 'delhi'),
(5, NULL, NULL, NULL, '123', '0000-00-00 00:00:00', '123', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oeid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_registration`
--

CREATE TABLE `product_registration` (
  `product_registration_id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `serial_number` int(255) NOT NULL,
  `purchase_date` date NOT NULL,
  `invoice_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_registration`
--

INSERT INTO `product_registration` (`product_registration_id`, `user_id`, `pid`, `serial_number`, `purchase_date`, `invoice_image`) VALUES
(31, 4, 71, 995, '2020-07-05', 'invoice-template-us-neat-750px.png'),
(32, 4, 13, 995, '2020-07-03', 'invoice.png'),
(33, 4, 6, 62612262, '2020-07-16', 'invoice-template-us-neat-750px - Copy.png'),
(34, 4, 20, 995, '2020-07-30', 'invoice-template-us-neat-750px - Copy - Copy.png');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `product_registration_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `service` varchar(1000) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`product_registration_id`, `user_id`, `date_time`, `service`, `status`) VALUES
(31, 4, '2020-07-04 16:15:18', 'aman', 0);

-- --------------------------------------------------------

--
-- Table structure for table `skproducts`
--

CREATE TABLE `skproducts` (
  `id` int(11) NOT NULL,
  `model_number` varchar(500) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `speed` varchar(255) NOT NULL,
  `power_output` varchar(255) NOT NULL,
  `energy` varchar(255) NOT NULL,
  `description` varchar(600) NOT NULL,
  `sweep` varchar(255) DEFAULT NULL,
  `air_delivery` varchar(255) DEFAULT NULL,
  `tank_size` varchar(255) DEFAULT NULL,
  `ad` varchar(255) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `dimension` varchar(255) DEFAULT NULL,
  `gross_weight` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skproducts`
--

INSERT INTO `skproducts` (`id`, `model_number`, `product_type`, `price`, `model_name`, `image`, `speed`, `power_output`, `energy`, `description`, `sweep`, `air_delivery`, `tank_size`, `ad`, `length`, `width`, `height`, `dimension`, `gross_weight`) VALUES
(1, '1', 'Ceiling Fan', 1695, 'Flash', 'flash.JPG', '390', '230V 75W', '', 'COOPER CNC WINDING,\r\nHIGH SPEED FAN,\r\nWINDING BY CNC MACHINES,\r\nUNIQUE MOTOR DESIGN,\r\nMODERN DESIGN TO SUIT YOUR INTERIOR,\r\nSUPERIOR AIR DELIVERY,\r\nCOLOUR- BROWN, WHITE', '1200 (48 INCH)', '240M3/MIN (CMM)', '', '0', 715, 515, 125, '0', '3 KG'),
(2, '2', 'Ceiling Fan', 1795, 'Raftaar', 'raftaar.JPG', '350', '230V 70W', '', 'Cooper Winding, High Speed Fan, Winding By CNC Machines, Unique Motor Design, Modern Design To Suit your Interior, Superior Air Delivery, Colour- Brown and White', '1200 (48 INCH)', '340m3/min(CMM)', '', '0', 715, 515, 125, '0', '3 KG'),
(3, '3', 'Ceiling Fan', 1895, 'EVA', 'EVA.JPG', '350', '230V 70W', '', 'COOPER WINDING,\r\nPOWERFUL MOTOR WITH SILENT OPERATION,\r\nALUMINIUM MOTOR COVER WITH ALUMINIUM BLADE,\r\nHIGH SPEED FAN,\r\nD UNIQUE MOTOR DESIGN,\r\nWINDING BY CNC MACHINES,\r\nMODERN DESIGN TO SUIT YOUR INTERIOR,\r\nSUPERIOR AIR DELIVERY,\r\nCOLOUR - BROWN AND WHITE', '1200 (48 INCH)', '240 m3/min (CMM)', '', '0', 715, 515, 125, '0', '4 KG'),
(4, '4', 'Ceiling Fan', 1895, 'Eva Deluxe', 'Eva_Deluxe.jpg', '900', '230V 75W', '', 'COOPER WINDING,\r\nHIGH SPEED FAN,\r\nWINDING BY CNC MACHINES,\r\nUNIQUE MOTOR DESIGN,\r\nMODERN DESIGN TO SUIT YOUR INTERIOR,\r\nSUPERIOR AIR DELIVERY,\r\nCOLOUR- BROWN AND WHITE', '1200 (48 INCH)', '240 m3/min (CMM)', '', '0', 715, 515, 125, '0', '3 KG'),
(5, '5', 'Ceiling Fan', 1795, 'Flash Plus', 'Flash_plus.JPG', '350', '230V 75W', '', 'COOPER WINDING,\r\nHIGH SPEED FAN,\r\nWINDING BY CNC MACHINES,\r\nUNIQUE MOTOR DESIGN,\r\nMODERN DESIGN TO SUIT YOUR INTERIOR,\r\nSUPERIOR AIR DELIVERY,\r\nCOLOUR- BROWN, WHITE', '1200 (48 INCH)', '390 m3/min (CNN)', '', '0', 715, 515, 125, '0', '4 KG'),
(6, '6', 'Ceiling Fan', 2095, 'Aeron', 'Aeron.JPG', '350', '230V 75W', '', 'COOPER WINDING,\r\nHIGH SPEED FAN,\r\nWINDING BY CNC MACHINES,\r\nUNIQUE MOTOR DESIGN,\r\nMODERN DESIGN TO SUIT YOUR INTERIOR,\r\nSUPERIOR AIR DELIVERY,\r\nCOLOUR- SMOKE BROWN/WHITE', '1200 (48 INCH)', '390 m3/min (CNN)', '', '0', 715, 515, 125, '0', '4 KG'),
(7, '7', 'Ceiling Fan', 1895, 'Metallica', '', '350', '230V 75W', '', 'COOPER WINDING,\r\nHIGH SPEED FAN,\r\nWINDING BY CNC MACHINES,\r\nUNIQUE MOTOR DESIGN,\r\nMODERN DESIGN TO SUIT YOUR INTERIOR,\r\nSUPERIOR AIR DELIVERY,\r\nCOLOUR-', '1200 (48 INCH)', '390 m3/min (CNN)', '', '0', 715, 515, 125, '0', '4 KG'),
(8, '8', 'Ceiling Fan', 2595, 'Ego', 'Ego.JPG', '350', '230V 70W', '', 'COOPER WINDING,\r\nHIGH SPEED FAN,\r\nWINDING BY CNC MACHINES,\r\nUNIQUE MOTOR DESIGN,\r\nMODERN DESIGN TO SUIT YOUR INTERIOR,\r\nSUPERIOR AIR DELIVERY,\r\nCOLOUR OPTION - BEIGE BROWN, SILVER BLUE, PEARL IVORY', '1200 (48 INCH)', '240 m3/min (CMM)', '', '0', 715, 515, 125, '0', '4 KG'),
(9, '9', 'Ceiling Fan', 2395, 'Tulip', 'tulip.JPG', '350', '230V 72W', '', 'COOPER WINDING,\r\nMODERN DESIGN TO SUIT YOUR INTERIORS,\r\nMETALLIC PAINT FINISH,\r\n- SUPERIOR AIR DELIVERY.\r\nDECORATIVE PART IN PU FINISH.\r\nCOLOUR OPTION\r\nBEIGE BROWN,SILVER BLUE,PEARL IVORY', '1200 (48 INCH)', '240 m3/min (CMM)', '', '0', 715, 515, 125, '0', '4 KG'),
(10, '10', 'Ceiling Fan', 2595, 'Marino', 'marino.JPG', '', '230V 72W', '', 'COOPER WINDING,\r\nMODERN DESIGN TO SUIT YOUR INTERIORS,\r\nMETALLIC PAINT FINISH,\r\nSUPERIOR AIR DELIVERY,\r\nDECORATIVE PART IN PU FINISH.\r\nCOLOUR OPTION\r\nLAVENDER,BURGUNDY, LOTTO BROWN,HONEY,GOLD', '1200 (48 INCH)', '230 m3/min (CMM)', '', '0', 715, 515, 125, '0', '4 KG'),
(11, '11', 'Ceiling Fan', 2595, 'Espana', 'Espana.JPG', '350', '230V 72W', '', 'COOPER WINDING,\r\nMODERN DESIGN TO SUIT YOUR INTERIORS,\r\nMETALLIC PAINT FINISH,\r\nSUPERIOR AIR DELIVERY,\r\nDECORATIVE PART IN PU FINISH.\r\nCOLOUR OPTION\r\nTOPAZ GOLD, PEARL IVORY', '1200 ', '230 m3/min (CMM)', '', '0', 715, 515, 125, '0', '4 KG'),
(12, '12', 'Ceiling Fan', 2695, 'Irish', 'irish.JPG', '350', '72 W', '', 'COOPER WINDING,\r\nELECTROPLATED FINISH,\r\nSTYLISH RANGE TO SUIT YOUR INTERIORS,\r\nSUPERIOR AIR DELIVERY,\r\nCOLOUR:\r\nANTIQUE COPPER, BRUSHED NICKEL', '1200', '230 m3/min (CMM)', '', '0', 715, 515, 125, '0', '4 KG'),
(13, '1', 'Multipurpose Fan', 0, 'Fresh Air ', 'fresh_air.JPG', '1400/1400', '40W/ 45W', '', 'Cooper Winding, High Speed motor, wire mesh protection, Superior Air Deliverl', '225/300 (9\"/ 12\")', '', '', '0', 0, 0, 0, '0', '3/ 4 Kg'),
(14, '2', 'Multipurpose Fan', 0, 'Vento H.S', '', '1400/1400', '40W/ 45W', '', 'Cooper Winding, High Speed motor, wire mesh protection, Superior Air Deliverl', '225/300 (9\"/ 12\")', '', '', '0', 0, 0, 0, '0', '3/ 4 Kg'),
(15, '3', 'Multipurpose Fan', 0, 'Innox 6V/8V/10V', 'Innox_6v_8v_10v.JPG', '', '7W', '', 'COOPER WINDING,\r\nSHUTTERS TO PREVENT DUST,\r\nPLASTIC BODY AND BLADE FOR EASY MAINTENANCE,\r\nSUPERIOR AIR DELIVERL', '150/200/250 (6\"/8\"/10\")', '', '', '0', 0, 0, 0, '0', ''),
(16, '4', 'Multipurpose Fan', 0, 'Turbo Exhaust Fan', 'turbo.JPG', '2600', '90W', '', 'COOPER WINDING,\r\nHIGH SPEED,\r\nEXHAUST TYPE BLADE,\r\nDOUBLE BALL BEARING,\r\nSUPERIOR AIR DELIVERL', '(9\" 15\" 18)', '', '', '0', 0, 0, 0, '0', '4 KG'),
(17, '5', 'Multipurpose Fan', 0, 'Trans Air', 'trans_air.JPG', '1400/1400', '50W/ 90W', '', 'COOPER WINDING,\r\nEXHAUST TYPE BLADE,\r\nDOUBLE BALL BEARING,\r\nSUPERIOR AIR DELIVERL', '225/300 (9\"/ 12\")', '', '', '0', 0, 0, 0, '0', '3/ 4 Kg'),
(18, '6', 'Multipurpose Fan', 0, 'Turbo Heavy Duty Exhaust Fan', 'turbo_exhaust.JPG', '', '72W', '', 'COOPER WIN DING,\r\nEXHAUST BLADE,\r\nDOUBLE BALL BEARING,\r\nSUPERIOR AIR DELIVERL', '375/450 (15\"/18\")', '', '', '0', 0, 0, 0, '0', '4 / 5 Kg'),
(19, '7', 'Multipurpose Fan', 0, 'Atlanta', 'Atlanta.JPG', '1350', '300W', '', 'COOPER WINDING,\r\nDOUBLE BALL BEARING,\r\nFITTED WITH POWERFUL MOTOR,\r\nDELIVERING OPTIMAL PERFORMANC,', '450 (18\")', '', '', '0', 0, 0, 0, '0', '5 Kg'),
(20, '8', 'Multipurpose Fan', 0, 'Exhaust 24\"', 'Exhaust24.JPG', '850', '480W', '', 'COOPER WINDING\r\nDOUBLE BALL BEARING\r\nFITTED WITH POWERFUL MOTOR\r\nDELIVERING OPTIMAL PERFORMANC', '600 (24\")', '', '', '0', 0, 0, 0, '0', '8 kg'),
(21, '9', 'Multipurpose Fan', 0, 'Marvel All Purpose Fan', 'marvel_all_purpose_fan.JPG', '2400', '80W', '', 'COOPER WINDING,\r\nHIGH SPEED,\r\nDOUBLE BALL BEARING,\r\nFITTED WITH POWERFUL MOTOR,\r\nDELIVERING OPTIMAL PERFORMANC', '300 (12\")', '', '', '0', 0, 0, 0, '0', '4 KG'),
(22, '10', 'Multipurpose Fan', 0, 'Innox 12 WHS/ 16 WHS', 'innox_12whs_16whs.JPG', '', '72 W', '', 'COOPER WINDING,\r\nHIGH SPEED,\r\n90 DEGREE OSCILLATION , TILT ADJUSTMENT,\r\nHIGH TORQUE FAN WITH HIGH AIR THRUST,\r\n3 SPEED MOTOR WITH 3 SPEED CONTROL', '300 / 400 (12\" 16\")', '', '', '0', 0, 0, 0, '0', '4 Kg'),
(23, '11', 'Multipurpose Fan', 0, 'Cooler Fan', 'cooler_fan.JPG', '1400', '150W', '', 'COOPER WINDIN,\r\nFITTED WITH POWERFUL MOTOR,\r\n3 SPEED COOLER KIT', '500 (20\")', '', '', '0', 0, 0, 0, '0', '4 KG'),
(24, '12', 'Multipurpose Fan', 0, 'Innox Pedestal Fan', 'innox_pedestal_fan.JPG', '2100', '70W', '', 'COOPER WINDING,\r\nHIGH SPEED,\r\nHIGH TORQUE FAN WITH HIGH AIR THRUST,\r\n90 DEGREE OSCILLATION, TILT ADJUSTMENT,\r\n3 SPEED CONTROL,\r\nSLEEK SWITCH PANEL & ROUND BASE', '400 (16\")', '', '', '0', 0, 0, 0, '0', '4 KG'),
(25, '13', 'Multipurpose Fan', 0, 'Runner Pedestal Fan', 'runner_pedestal_fan.JPG', '2200', '106W', '', 'COOPER WINDING,\r\nHIGH SPEED,\r\nDOUBLE BALL BEARING,\r\nFITTED WITH POWERFUL MOTOR,\r\nDELIVERING OPTIMAL PERFORMANC,\r\n3 SPEED MOTOR WITH 3 SPEED CONTROL', '400 (16\")', '', '', '0', 0, 0, 0, '0', '7 kg'),
(26, '14', 'Multipurpose Fan', 0, 'Runner Swing Pedestal Fan', 'runner_swing_pedestal_fan.JPG', '2200', '106W', '', 'COOPER WINDING,\r\nHIGH SPEED,\r\nDOUBLE BALL BEARING,\r\nFITTED WITH POWERFUL MOTOR,\r\nDELIVERING OPTIMAL PERFORMANC,\r\n3 SPEED MOTOR WITH 3 SPEED CONTROL', '400 (16\")', '', '', '0', 0, 0, 0, '0', '7 Kg'),
(27, '14', 'Multipurpose Fan', 0, 'Kit Pedestal Fan', 'kit_pedestal_fan.JPG', '1400', '150W', '', 'COOPER WINDIN,\r\nFITTED WITH POWERFUL MOTOR,\r\nHIGHT ADJUSTABLE MECHANISM,\r\n3 SPEED POWWERFUL MOTOR', '500 (20\")', '', '', '0', 0, 0, 0, '0', '8 kg'),
(28, '1', 'Plastic Air Coolers', 0, 'Teeny', 'teeny.JPG', '2300 RPM', '230v, 105W', '', 'COOPER WINDING,\r\nINVERTER COMPATIBLE,\r\nHONEYCOMB TECHNOLOGY,\r\nCOMPACT & MODERN LOOK,\r\nIDEAL FOR KID ROOM,OFFICE SPACE,PERSONAL,SPACE', '300 mm', '1900', '18 L', '0', 400, 340, 620, '0', '7.25 KG'),
(29, '2', 'Plastic Air Coolers', 0, 'RIO 30', 'Rio_30.JPG', '2300 RPM', '230v, 105W', '', 'COOPER WINDING, INVERTER COMPATIBLE, HONEYCOMB TECHNOLOGY, COMPACT & MODERN LOOK, CASTOR WHEELS, IDEAL FOR KID ROOM, OFFICE SPACE, PERSONAL SPACE', '300 mm', '1900', '30 L', '0', 535, 550, 885, '0', '12.10 kg'),
(30, '3', 'Plastic Air Coolers', 7595, 'ICY', 'ICY.JPG', '2300 RPM', '230v, 105W', '', 'INVERTER COMPATIBLE, HONEYCOMB TECHNOLOGY, COMPACT & MODERN LOOK, CASTOR WHEELS, IDEAL FOR INDOOR , OUT DOOR, PERSONAL SPACE', '300 mm', '1900', '40L', '0', 500, 455, 985, '0', '11.30KG'),
(31, '4', 'Plastic Air Coolers', 9625, 'Aster', 'aster.JPG', '1375 RPM', '230V, 175W', '', 'INVERTER COMPATIBLE, HONEYCOMB TECHNOLOGY, COMPACT & MODERN LOOK, CASTOR WHEELS, IDEAL FOR INDOOR , OUT DOOR, PERSONAL SPACE', '450mm', '3500', '65L', '0', 640, 500, 1015, '0', '11.30KG'),
(32, '5', 'Plastic Air Coolers', 12125, 'Solitaire', 'Solitaire.JPG', '1400 RPM', '230v, 185W', '', 'INVERTER COMPATIBLE, OVERFLOW FACILITY, HONEYCOMB TECHNOLOGY, POWERFUL THROW FOR LARGE ROOMS', '450MM', '3500', '50L', '0', 715, 515, 1250, '0', '19.20KG'),
(33, '6', 'Plastic Air Coolers', 12750, 'Primo', 'primo.JPG', '1375 RPM', '230V, 185W', '', 'INVERTER COMPATIBLE, OVERFLOW FACILITY, HONEYCOMB TECHNOLOGY, POWERFUL THROW FOR LARGE ROOMS', '450mm', '3500', '75L', '0', 715, 515, 1250, '0', '19.20KG'),
(34, '7', 'Plastic Air Coolers', 13250, 'Daisy 90', 'daisy_90.JPG', '1350 RPM', '230V, 180W', '', 'INVERTER COMPATIBLE, OVERFLOW FACILITY, HONEYCOMB TECHNOLOGY, POWERFUL THROW FOR LARGE ROOMS', '450mm', '4000', '90L', '0', 685, 530, 1230, '0', '22.00 KG'),
(35, '8', 'Plastic Air Coolers', 22750, 'Tycoon', 'tycoon.JPG', '', '230V, 240W', '', 'IDEAL FOR- COMMERCIAL/ INDUSTRIAL,\r\nOUTDOOR', '450mm', '5500', '75 L', '0', 855, 530, 1280, '0', '26KG'),
(36, '1', 'GI Sheet Air Coolers', 22750, 'Standred', 'standred.JPG', '', '230V,180W', '', 'IDEAL FOR- HOME/OFFICE, OUTDOOR', '20\" Cooler Kit', '', '70L', '0', 25, 25, 0, '0', ''),
(37, '2', 'GI Sheet Air Coolers', 10695, 'Standard Exhaust', 'standard_exhaust.JPG', '', '230V , 180W', '', 'IDEAL FOR HOME/OFFICE, OUTDOOR', '18\" Exhaust', '', '70L', '0', 25, 25, 0, '0', ''),
(38, '3', 'GI Sheet Air Coolers', 10095, 'Gold 15', 'gold_15.JPG', '', '230V, 240W', '', 'IDEAL FOR HOME/OFFICE, OUTDOOR', '15\" Semi Exhaust', '', '65 L', '0', 20, 22, 0, '0', ''),
(39, '4', 'GI Sheet Air Coolers', 12695, '409 Semi Exhaust', '409_semi_exhaust.JPG', '', '230V, 150W', '', 'IDEAL FOR HOME/ OFFICE, OUTDOOR', 'Noise free 16\" Semi Exhaust', '', '100L', '0', 27, 27, 48, '0', ''),
(40, '5', 'GI Sheet Air Coolers', 12995, '409 Exhaust', '409_exhaust.JPG', '', '230V, 240W', '', 'IDEAL FOR- HOME/COMMERCIAL, OUTDOOR', '18\" Exhaust', '', '100L', '0', 27, 27, 48, '0', ''),
(41, '6', 'GI Sheet Air Coolers', 15295, '512', '512.JPG', '', '230V, 350W', '', 'IDEAL FOR- HOME/COMMERCIAL/INDUSTRIAL, OUTDOOR', '', '', '140L', '0', 27, 27, 60, '0', ''),
(42, '7', 'GI Sheet Air Coolers', 17095, '615', '615.JPG', '', '230V, 350W', '', 'IDEAL FOR- COMMERCIAL/INDUSTRIAL, OUTDOOR', '', '', '210L', '0', 30, 30, 72, '0', ''),
(43, '8', 'GI Sheet Air Coolers', 24595, '624', '624.JPG', '', '230V, 600W', '', 'IDEAL FOR- COMMERCIAL/INDUSTRIAL, OUTDOOR', '24\" Exhaust', '', '270L', '0', 34, 34, 72, '0', ''),
(44, '9', 'GI Sheet Air Coolers', 10995, 'Neva', 'neva.JPG', '', '230V 120W', '', 'IDEAL FOR- COMMERCIAL/HOME, OUTDOOR', '16\" one ten motor', '', '65L', '0', 24, 18, 42, '0', ''),
(45, '10', 'GI Sheet Air Coolers', 11295, 'Neva DX', 'neva_dx.JPG', '', '230V, 120W', '', 'IDEAL FOR- COMMERCIAL/HOME, OUTDOOR', '16\" one ten motor', '', '65 L', '0', 24, 18, 42, '0', ''),
(46, '11', 'GI Sheet Air Coolers', 11995, 'Axis', 'axis.JPG', '', '230V, 150W', '', 'IDEAL FOR- HOME/COMMERCIAL, OUTDOOR', '16\" Semi Exhaust copper motor', '', '75 L', '0', 27, 18, 48, '0', ''),
(47, '12', 'GI Sheet Air Coolers', 12295, 'Premia', 'premia.JPG', '', '230V, 150W', '', 'IDEAL FOR- COMMERCIAL/INDUSTRIAL, OUTDOOR', '16\" Semi Exhaust ', '', '75 L', '0', 24, 18, 48, '0', ''),
(48, '1', 'water heater', 0, 'Standard SS Tank Water Heater', 'STANDARD_water_heater.JPG', '', '3KW/ 2kW ELEMENT', '', 'AN ISI THERMOSTAT, A THERMAL CUT-OUT, PRESSUREBRELESE VALUE SET AT 50 P.S.I, SIPHON HOLE TO PREVENT BACK FLOW OF WATER', '', '', '', '0', 0, 0, 0, '0', '6L/10L/15L/25L/35L/50L'),
(49, '2', 'water heater', 0, 'Spice SS Tank Water Heater', 'SPICE_water_heater.JPG', '', '3KW/ 2kW ELEMENT', '', 'AN ISI THERMOSTAT, A THERMAL CUT-OUT, PRESSUREBRELESE VALUE SET AT 50 P.S.I, SIPHON HOLE TO PREVENT BACK FLOW OF WATER', '', '', '', '0', 0, 0, 0, '0', '15L/25L'),
(50, '3', 'water heater', 0, 'Sapphire SS Tank Water Heater', 'SAPPHIRE_sstankwaterheater.JPG', '', '3KW/ 2kW ELEMENT', '', 'AN ISI THERMOSTAT, A THERMAL CUT-OUT, PRESSUREBRELESE VALUE SET AT 50 P.S.I, SIPHON HOLE TO PREVENT BACK FLOW OF WATER', '', '', '', '0', 0, 0, 0, '0', '15L/ 25L'),
(51, '4', 'water heater', 3495, 'Astra Instant', 'astra_instant.JPG', '', '3KW/ 2kW ELEMENT', '', 'AN ISI THERMOSTAT, A THERMAL CUT-OUT, PRESSUREBRELESE VALUE SET AT 50 P.S.I, SIPHON HOLE TO PREVENT BACK FLOW OF WATER', '', '', '', '0', 0, 0, 0, '0', '3L'),
(52, '5', 'water heater', 0, 'Viva Enameled Tank Water Heater', 'viva.JPG', '', '3KW/ 2kW ELEMENT', '', 'AN ISI THERMOSTAT, A THERMAL CUT-OUT, PRESSUREBRELESE VALUE SET AT 50 P.S.I, SIPHON HOLE TO PREVENT BACK FLOW OF WATER', '', '', '', '0', 0, 0, 0, '0', '15L / 25L'),
(53, '6', 'water heater', 0, 'Jazz Enameled Tank Water Heater', 'jazz.JPG', '', '3KW/ 2kW ELEMENT', '', 'AN ISI THERMOSTAT, A THERMAL CUT-OUT, PRESSUREBRELESE VALUE SET AT 50 P.S.I, SIPHON HOLE TO PREVENT BACK FLOW OF WATER', '', '', '', '0', 0, 0, 0, '0', '15L/ 25L'),
(54, '7', 'water heater', 4495, 'Trigger Gass Water heater', 'trigger_gas_heater.JPG', '', '', '', 'INSTANT GASS WATER HEATER, ISI MARK FOR MAXIMUM SAFETY & QUALITY, HEAVY HEAT EXCHANGER, AUTO PROTECTION FROM GAS LEAKAGE, FLAME FAILURE DEVICE IS INBULT', '', '', '', '0', 0, 0, 0, '0', '6.5L'),
(55, '8', 'water heater', 4795, 'Impulse Gass Water Heater', 'IMPULSE_GAS_HEATER.JPG', '', '', '', 'INSTANT GASS WATER HEATER, ISI MARK FOR MAXIMUM SAFETY & QUALITY, HEAVY HEAT EXCHANGER, AUTO PROTECTION FROM GAS LEAKAGE, FLAME FAILURE DEVICE IS INBULT', '', '', '', '0', 0, 0, 0, '0', '6.5L'),
(56, '9', 'water heater', 4895, 'Spark Gass Water Heater', 'spark_gass_heater.JPG', '', '', '', 'INSTANT GASS WATER HEATER, ISI MARK FOR MAXIMUM SAFETY & QUALITY, HEAVY HEAT EXCHANGER, AUTO PROTECTION FROM GAS LEAKAGE, FLAME FAILURE DEVICE IS INBULT', '', '', '', '0', 0, 0, 0, '0', '6.5L'),
(57, '1', 'Immersion Rod', 0, 'Immersion Road ', 'immersion_road.JPG', '', 'Available in 1000/1500/ 2000 Watts', '', '100% COPPER TUBULAR ELEMENT, LOW COST WATER HEATING OPTION, PORTABLE AND EASY TO USE', '', '', '', '0', 0, 0, 0, '0', ''),
(58, '2', 'Immersion Rod', 795, 'Immersion Road Waterod', 'immersion_road_waterod.JPG', '', '1500 Watts', '', '100% WATERPROOF, 100% COPPER TUBULAR ELEMENT, LOW COST WATER HEATING OPTION PORTABLE AND EASY TO USE', '', '', '', '0', 0, 0, 0, '0', ''),
(59, '1', 'Room Heaters', 1695, 'Heat Convector Calda', 'heat_convector_calda.JPG', '', '1000W/ 2000W', '', 'BLOWER FORCED HOT AIR CIRCULATION, DUAL MODE, HEATER IN WINTER FAN IN SUMMER, AUTOMATIC THERMAL CUT OUT, VARIABLE HEATING POSITIONS FOR DIFFERENT HEATING NEEDS', '', '', '', '0', 0, 0, 0, '0', ''),
(60, '2', 'water heater', 1695, 'Heat Convector Blow', 'heat_convector_BLOW.JPG', '', '1000W/ 2000W', '', 'BLOWER FORCED HOT AIR CIRCULATION, DUAL MODE, HEATER IN WINTER FAN IN SUMMER, AUTOMATIC THERMAL CUT OUT, VARIABLE HEATING POSITIONS FOR DIFFERENT HEATING NEEDS', '', '', '', '0', 0, 0, 0, '0', ''),
(61, '3', 'Room Heaters', 1995, 'Heat Convector Flow', 'heat_converter_flow.JPG', '', '1000W/ 2000W', '', 'BLOWER FORCED HOT AIR CIRCULATION, DUAL MODE, HEATER IN WINTER FAN IN SUMMER, AUTOMATIC THERMAL CUT OUT, VARIABLE HEATING POSITIONS FOR DIFFERENT HEATING NEEDS', '', '', '', '0', 0, 0, 0, '0', ''),
(62, '4', 'Room Heaters', 2295, 'Heat Convector Ushma', 'heat_convector_ushma.JPG', '', '1000W/ 2000W', '', 'BLOWER FORCED HOT AIR CIRCULATION, DUAL MODE, HEATER IN WINTER FAN IN SUMMER, AUTOMATIC THERMAL CUT OUT, VARIABLE HEATING POSITIONS FOR DIFFERENT HEATING NEEDS', '', '', '', '0', 0, 0, 0, '0', ''),
(63, '5', 'Room Heaters', 2295, 'Halogen Heaters Inferno', 'halogen_heaters_inferno.JPG', '', '400W/ 800W/ 1200W', '', 'IDEAL ANGLE OSCILLATION FUNCTION, LONG HALOGEN TUBES FOR EFFECTIVE HEATING, OVAL SHAPE BASE FOR BETTER STABILITY, THREE TUBE FOR VARIED HEATING NEEDS AND UNINTERRUPTED HEATING', '', '', '', '0', 0, 0, 0, '0', ''),
(64, '6', 'Room Heaters', 1095, 'Quartz Heaters Inferno', 'quartz_heaters.JPG', '', '400W/ 800W', '', 'LONG QUARTZ TUBES FOR EFFECTIVE HEATING, OVAL SHAPE BASE FOR BETTER STABILITY, TOW TUBE FOR VARIED HEATING NEEDS AND UNINTERRUPTED HEATING', '', '', '', '0', 0, 0, 0, '0', ''),
(65, '1', 'Home Appliances', 1095, 'Dry Iron Diva', 'dry_iron_diva.JPG', '', '1000 WATT', '', 'ADJUSTABLE THERMOSTATIC CONTROL, SILK BRAIDED COPPER SWIVEL CORD, INDICATOR LIGHT, NON STICK PLATE', '', '', '', '0', 0, 0, 0, '0', ''),
(66, '2', 'Home Appliances', 1295, 'Dry Iron Senora', 'dry_iron_senora.JPG', '', '1000 WATT', '', 'ADJUSTABLE THERMOSTATIC CONTROL, SILK BRAIDED COPPER SWIVEL CORD, INDICATOR LIGHT, NON STICK PLATE', '', '', '', '0', 0, 0, 0, '0', ''),
(67, '3', 'Home Appliances', 1995, 'Dry Iron Heavy Weight Nitro', 'dry_iron_heavy_weight_nitro.JPG', '', '1000 WATT', '', 'UNIQUE TEMPERATURE CONTROL WITH LABEL, SILK BRAIDED COPPER SWIVEL CORD, INDICATOR LIGHT, CHROME PLATE HIGH EFFICIENCY HEAVY WEIGHT BASE', '', '', '', '0', 0, 0, 0, '0', ''),
(68, '4', 'Home Appliances', 1895, 'Mixer Grinder Axis 2 Jar', 'MIXER_AXIS.JPG', '', '', '', 'POWERFUL CRC 500W MOTOR, DURABLE THICK JAR, 1.2 LTR LIQUID JAR, SHOK/RUST PROOF ABS BODY, STAINLESS STEEL 3 JAR & BLADES', '', '', '', '0', 0, 0, 0, '0', ''),
(69, '5', 'Home Appliances', 2395, 'Mixer Grinder Nero 3 Jar', 'MIXER_NERO.JPG', '', '', '', 'POWERFUL CRC 500W MOTOR, DURABLE THICK JAR, 1.2 LTR LIQUID JAR, SHOK/RUST PROOF ABS BODY, STAINLESS STEEL 3 JAR & BLADES', '', '', '', '0', 0, 0, 0, '0', ''),
(70, '6', 'Home Appliances', 2795, 'Juicer Mixer Grinder Leo', 'juicer_mixer_leo.JPG', '', '', '', 'POWERFUL CRC MOTOR, DRY & WET GRINDING, 1.5 LTR. LIQUID PC UNBREAKABLE JAR, ELEGANT DESIGN', '', '', '', '0', 0, 0, 0, '0', ''),
(71, '7', 'Home Appliances', 3295, 'Juicer Mixer Grinder Prime', 'juicer_mixer_PRIME.JPG', '', '', '', 'POWERFUL CRC MOTOR, DRY & WET GRINDING, 1.5 LTR. LIQUID PC UNBREAKABLE JAR, UNIQUE BODY DESIGN', '', '', '', '0', 0, 0, 0, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mobile_number` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `usertype`, `email`, `password`, `create_datetime`, `mobile_number`, `address`, `city`, `state`) VALUES
(4, 'Aman', 'Rastogi', 'customer', 'amanr123@gmail.com', 'aman', '2020-07-04 13:25:21', '9811554026', 'X-113', 'Delhi', 'Delhi'),
(11, 'Shera', 'Thakur', 'customer', 'ashish@gmail.com', 'ashish', '2020-07-03 15:51:54', '1212', 'abcd', 'abcd', 'abcd'),
(12, 'aman', 'rastogi', 'customer', 'ashish@gmail.com', 'ashish', '2020-07-03 16:10:02', '1234', 'xyz', 'abcd', 'abcdef122'),
(13, 'Tej', 'Bahadur', 'customer', 'test@gmail.com', '123', '2020-06-29 15:53:02', '123', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`dealer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oeid`);

--
-- Indexes for table `product_registration`
--
ALTER TABLE `product_registration`
  ADD PRIMARY KEY (`product_registration_id`);

--
-- Indexes for table `skproducts`
--
ALTER TABLE `skproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `dealer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_registration`
--
ALTER TABLE `product_registration`
  MODIFY `product_registration_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `skproducts`
--
ALTER TABLE `skproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
