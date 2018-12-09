-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 06, 2018 at 03:52 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

DROP TABLE IF EXISTS `choices`;
CREATE TABLE IF NOT EXISTS `choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'Pretext Home Page'),
(2, 1, 1, 'Hypertext Preprocessor'),
(3, 1, 0, 'Pretext Hypertext Processor'),
(4, 1, 0, 'Preprocessor Home Page'),
(6, 2, 0, '.html'),
(7, 2, 0, '.xml'),
(8, 2, 1, '.php'),
(9, 2, 0, '.ph'),
(11, 3, 0, '< php >'),
(12, 3, 0, '< ? php ?>'),
(13, 3, 1, '< ? ? >'),
(14, 3, 0, '< php ? >'),
(16, 4, 0, 'Notepad'),
(17, 4, 0, 'Notepad++'),
(18, 4, 0, 'Brackets'),
(19, 4, 0, 'Sublime Text 3'),
(20, 4, 1, 'All of the above'),
(21, 5, 0, 'Adobe Dreamweaver'),
(22, 5, 1, 'WAMP'),
(23, 5, 0, 'Notepad++'),
(25, 5, 0, 'Sublime Text 3'),
(26, 6, 0, 'Session'),
(27, 6, 1, 'HttpSession'),
(28, 6, 0, 'HttpServletSession'),
(29, 6, 0, 'ServletSession'),
(31, 7, 0, 'jspInit()'),
(32, 7, 0, 'jspService()'),
(33, 7, 0, 'jspDestroy()'),
(35, 7, 1, 'All of the Above'),
(36, 8, 0, 'Object created with request scope are accessible only from the page in which they are created.'),
(37, 8, 0, 'Object created with request scope are accessible only from the pages which are in same session.'),
(38, 8, 0, 'Object created with request scope are accessible only from the pages which are processing the same request.'),
(39, 8, 1, 'Object created with request scope are accessible only from the pages which reside in same application.'),
(41, 9, 1, 'javax.servlet.ServletContext'),
(42, 9, 0, 'javax.servlet.HttpContext'),
(43, 9, 0, 'javax.servlet.Context'),
(44, 9, 0, 'javax.servlet.Application'),
(46, 10, 1, 'true'),
(47, 10, 0, 'false'),
(51, 11, 0, 'The init() method simply creates or loads some data that will be used throughout the life of the servlet.'),
(52, 11, 0, 'The init() method is not called again and again for each user request.'),
(54, 11, 1, 'Both A and B'),
(56, 12, 0, 'request.getParameter()'),
(57, 12, 0, 'request.getParameterValues()'),
(58, 12, 1, 'request.getParameterNames()'),
(61, 13, 1, 'request.getAttribute(name)'),
(62, 13, 0, 'response.getAttribute(name)'),
(63, 13, 0, 'new Attribute(name)'),
(65, 13, 0, 'None of the above.'),
(66, 14, 1, 'request.getRemoteAddr()'),
(67, 14, 0, 'response.getRemoteAddr()'),
(68, 14, 0, 'Header.getRemoteAddr()'),
(71, 15, 1, 'request.getRequestedSessionId()'),
(72, 15, 0, 'response.getRequestedSessionId()'),
(73, 15, 0, 'Header.getRequestedSessionId()'),
(76, 16, 0, 'I/O bound Applications'),
(77, 16, 0, 'Data Streaming Applications'),
(78, 16, 0, 'Data Intensive Realtime Applications (DIRT)'),
(79, 16, 1, 'All of the above.'),
(81, 17, 1, '$ npm --version'),
(82, 17, 0, '$ node --version'),
(83, 17, 0, '$ npm getVersion'),
(84, 17, 0, '$ node getVersion'),
(86, 18, 1, 'true'),
(87, 18, 0, 'false'),
(91, 19, 0, 'fs.open(path, flags[, mode], callback)'),
(92, 19, 0, 'fs.openFile(path, flags[, mode], callback)'),
(93, 19, 0, 'fs.openPath(path, flags[, mode], callback)'),
(94, 19, 1, 'fs.read(fd, buffer, offset, length, position, callback)'),
(96, 20, 0, 'fs.delete(fd, len, callback)'),
(97, 20, 0, 'fs.remove(fd, len, callback)'),
(98, 20, 1, 'fs.unlink(path, callback)');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL,
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `q_group` int(11) NOT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `text`, `q_id`, `q_group`) VALUES
(1, 'What does PHP stand for?', 1, 1),
(2, 'PHP files have a default file extension of_______', 2, 1),
(3, 'A PHP script should start with _ and end with _', 3, 1),
(4, 'Which of the following is/are a PHP code editor?', 4, 1),
(5, 'Which of the following must be installed on your computer so as to run PHP script?', 5, 1),
(6, 'session is instance of which class?', 6, 2),
(7, 'Which is the methods of generated Servlet?', 7, 2),
(8, 'Which of the following is true about application scope?', 8, 2),
(9, 'application is instance of which class?', 9, 2),
(10, 'What is the default value of isELIgnored attribute?', 10, 2),
(11, 'Which of the following is true about init() method of servlet?', 11, 3),
(12, 'Which of the following method can be used to get complete list of all parameters in the current request?', 12, 3),
(13, 'Which of the following code is used to get a particular attribute in servlet?', 13, 3),
(14, 'Which of the following code retrieves the Internet Protocol (IP) address of the client that sent the request?', 14, 3),
(15, 'Which of the following code retrieves session ID specified by the client?', 15, 3),
(16, 'In which of the following areas, Node.js is perfect to use?', 16, 4),
(17, 'Which of the following command will show version of npm?', 17, 4),
(18, 'Buffer class is a global class and can be accessed in application without importing buffer module.', 18, 4),
(19, 'Which method of fs module is used to read a file?', 19, 4),
(20, 'Which method of fs module is used to delete a file?', 20, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
