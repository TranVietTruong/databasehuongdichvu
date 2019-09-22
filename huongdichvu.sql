-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2019 at 04:39 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huongdichvu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `reset_password` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `username`, `password`, `reset_password`, `active`, `created_at`, `updated_at`) VALUES
(1, 'trần viết trưởng', 'tranviettruong1998@gmail.com', 'administrator', '123', NULL, 1, NULL, NULL);

--
-- Triggers `admin`
--
DELIMITER $$
CREATE TRIGGER `44444431` BEFORE UPDATE ON `admin` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `123123123123` BEFORE INSERT ON `admin` FOR EACH ROW SET NEW.created_at = NOW(), NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `vote` int(11) NOT NULL,
  `active` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `answer`
--
DELIMITER $$
CREATE TRIGGER `1as` BEFORE INSERT ON `answer` FOR EACH ROW SET NEW.created_at = NOW(), NEW.updated_at = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `2a` BEFORE UPDATE ON `answer` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `image`, `name`, `rank`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 1, NULL, NULL);

--
-- Triggers `catagory`
--
DELIMITER $$
CREATE TRIGGER `1ct` BEFORE INSERT ON `catagory` FOR EACH ROW SET NEW.created_at = NOW(), NEW.updated_at = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `2ct` BEFORE UPDATE ON `catagory` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `comment`
--
DELIMITER $$
CREATE TRIGGER `1ccc` BEFORE INSERT ON `comment` FOR EACH ROW SET NEW.created_at = NOW(), NEW.updated_at = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `22ccc` BEFORE UPDATE ON `comment` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `contact`
--
DELIMITER $$
CREATE TRIGGER `1c` BEFORE INSERT ON `contact` FOR EACH ROW SET NEW.created_at = NOW(), NEW.updated_at = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `2c` BEFORE UPDATE ON `contact` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `content` text NOT NULL,
  `post_by` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `news`
--
DELIMITER $$
CREATE TRIGGER `11123` BEFORE INSERT ON `news` FOR EACH ROW SET NEW.created_at = NOW(), NEW.updated_at = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `1232333` BEFORE UPDATE ON `news` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `id_catagory` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `content` text NOT NULL,
  `view` bigint(20) NOT NULL DEFAULT '0',
  `vote` int(11) NOT NULL DEFAULT '0',
  `count_reply` int(11) NOT NULL DEFAULT '0',
  `active` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `id_catagory`, `id_user`, `title`, `slug`, `content`, `view`, `vote`, `count_reply`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '', '1', 0, 1, 0, 1, NULL, NULL);

--
-- Triggers `question`
--
DELIMITER $$
CREATE TRIGGER `1q` BEFORE INSERT ON `question` FOR EACH ROW SET NEW.created_at = NOW(), NEW.updated_at = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `2q` BEFORE UPDATE ON `question` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `post_by` varchar(255) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slogan`
--

INSERT INTO `slogan` (`id`, `author`, `image`, `description`, `content`, `post_by`, `rank`, `active`, `created_at`, `updated_at`) VALUES
(18, 'Thủ tướng Nguyễn Xuân Phúc', 'btnguyenmanhhung_qcyp.jpg', 'Thủ tướng nước CHXHCNVN', 'Chưa bao giờ khởi nghiệp có điều kiện như lúc này', 'trần viết trưởng', NULL, 1, '2019-09-20 19:39:51', '2019-09-21 15:50:06'),
(19, 'Nguyễn Mạnh Hùng', '', 'Bộ trưởng bộ thông tin và truyền thông', 'Điều kiện quan trọng nhất của khởi nghiệp là trong tay chẳng có gì cả. Chúng ta phải bán đi cái xe máy của mình bán đi cả chiếc áo vest đang mặc thì mới là khởi nghiệp. Vì chỉ khi ấy mình mới xả thân', 'trần viết trưởng', NULL, 1, '2019-09-20 19:44:26', '2019-09-21 15:50:28'),
(20, 'Trần Bá Dương', '', 'Chủ tịch HĐQT công ty cổ phần ô tô Trường Hải', 'Chúng ta đang mải mê cuốn theo phong trào mà quên đi mất giá trị khởi nghiệp', 'trần viết trưởng', NULL, 1, '2019-09-20 19:46:58', '2019-09-21 15:46:05'),
(21, 'Trịnh Văn Quyết ', '', 'Chủ tịch HĐQT FLC', 'Đừng sợ thất bại khi khởi nghiệp', 'trần viết trưởng', NULL, 1, '2019-09-20 19:48:49', '2019-09-21 15:46:31'),
(22, 'Trương Gia Bình ', '', 'Chủ tịch HĐQT FPT', 'Làm startup là mạo hiểm, đôi khi bất cần', 'trần viết trưởng', NULL, 1, '2019-09-20 19:50:02', '2019-09-21 15:46:14');

--
-- Triggers `slogan`
--
DELIMITER $$
CREATE TRIGGER `123123` BEFORE INSERT ON `slogan` FOR EACH ROW SET NEW.created_at = NOW(), NEW.updated_at = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `2222222` BEFORE UPDATE ON `slogan` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comment`
--

CREATE TABLE `sub_comment` (
  `id` int(11) NOT NULL,
  `id_comment` int(11) NOT NULL,
  `id_user_reply` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `sub_comment`
--
DELIMITER $$
CREATE TRIGGER `1s` BEFORE INSERT ON `sub_comment` FOR EACH ROW SET NEW.created_at = NOW(), NEW.updated_at = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `2s` BEFORE UPDATE ON `sub_comment` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email_verified` int(11) DEFAULT NULL,
  `reset_password` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `major`, `email`, `username`, `password`, `email_verified`, `reset_password`, `active`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '1', '1', 1, 1, 1, NULL, NULL);

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `1u` BEFORE INSERT ON `user` FOR EACH ROW SET NEW.created_at = NOW(), NEW.updated_at = NOW()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `2u` BEFORE UPDATE ON `user` FOR EACH ROW SET NEW.updated_at = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `vote_answer`
--

CREATE TABLE `vote_answer` (
  `id` int(11) NOT NULL,
  `id_answer` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `vote_answer`
--
DELIMITER $$
CREATE TRIGGER `auto_giam_vote_answer` AFTER DELETE ON `vote_answer` FOR EACH ROW UPDATE answer SET answer.vote = answer.vote - 1 WHERE answer.id = OLD.id_answer AND OLD.id_user = OLD.id_user
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `auto_vote_answer` AFTER INSERT ON `vote_answer` FOR EACH ROW UPDATE answer SET answer.vote = answer.vote + 1 WHERE answer.id = NEW.id_answer AND NEW.id_user = NEW.id_user
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `vote_question`
--

CREATE TABLE `vote_question` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_question` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vote_question`
--

INSERT INTO `vote_question` (`id`, `id_user`, `id_question`) VALUES
(1, 1, 1);

--
-- Triggers `vote_question`
--
DELIMITER $$
CREATE TRIGGER `auto_giam_vote` AFTER DELETE ON `vote_question` FOR EACH ROW UPDATE question SET question.vote = question.vote - 1 WHERE question.id = OLD.id_question AND question.id_user = OLD.id_user
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `auto_tang_vote` AFTER INSERT ON `vote_question` FOR EACH ROW UPDATE question SET question.vote = question.vote + 1 WHERE question.id = NEW.id_question AND question.id_user = NEW.id_user
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foregin_key_question` (`id_question`),
  ADD KEY `foregin_key_user_answer` (`id_user`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foregin_key_catagory` (`id_catagory`),
  ADD KEY `foregin_key_user` (`id_user`);

--
-- Indexes for table `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_comment`
--
ALTER TABLE `sub_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vote_answer`
--
ALTER TABLE `vote_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vote_question`
--
ALTER TABLE `vote_question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sub_comment`
--
ALTER TABLE `sub_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vote_answer`
--
ALTER TABLE `vote_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vote_question`
--
ALTER TABLE `vote_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `foregin_key_question` FOREIGN KEY (`id_question`) REFERENCES `question` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foregin_key_user_answer` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `foregin_key_catagory` FOREIGN KEY (`id_catagory`) REFERENCES `catagory` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `foregin_key_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
