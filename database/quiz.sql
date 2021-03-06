-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2018 at 01:43 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'A.	Asynchronous request'),
(2, 1, 0, 'B.	JavaScript request'),
(3, 1, 0, 'C.	Sync request '),
(4, 1, 1, 'D.	Synchronous request'),
(6, 2, 1, 'A.	Java EE'),
(7, 2, 0, 'B.	Java SE'),
(8, 2, 0, 'C.	Java ME'),
(9, 2, 0, 'D.	Java PE'),
(11, 3, 0, 'A.	Listeners'),
(12, 3, 0, 'B.	Web context'),
(13, 3, 1, 'C.	Servlet '),
(14, 3, 0, 'D.	DOM '),
(16, 4, 1, 'A.	Web context '),
(17, 4, 0, 'B.	Listeners'),
(18, 4, 0, 'C.	Servlet'),
(19, 4, 0, 'D.	DOM'),
(21, 5, 0, 'A.	Web container '),
(22, 5, 1, 'B.	Servlet container'),
(23, 5, 0, 'C.	Java container'),
(25, 5, 0, 'D.	API container '),
(26, 6, 0, 'A.	Filters'),
(27, 6, 0, 'B.	DOM'),
(28, 6, 0, 'C.	Server'),
(29, 6, 1, 'D.	Listeners '),
(31, 7, 1, 'A.	PHP '),
(32, 7, 0, 'B.	Java'),
(33, 7, 0, 'C.	Node.js'),
(35, 7, 0, 'D.	JavaScript '),
(36, 8, 0, 'A.	PHP'),
(37, 8, 0, 'B.	Java'),
(38, 8, 1, 'C.	Node.js '),
(39, 8, 0, 'D.	JavaScript '),
(41, 9, 1, 'A.	Server-side PHP scripts'),
(42, 9, 0, 'B.	HTML'),
(43, 9, 0, 'C.	CSS scripts'),
(44, 9, 0, 'D.	JavaScript'),
(46, 10, 0, 'A.	Server-side scripts is visible to the end user'),
(47, 10, 1, 'B.	Server-side scripts is invisible to the end user'),
(48, 10, 0, 'C.	Server-side scripts is defined to users'),
(49, 10, 0, 'D.	None of the above'),
(51, 11, 0, 'A.	Tags language '),
(52, 11, 1, 'B.	Compiled language'),
(54, 11, 0, 'C.	Markup language'),
(55, 11, 0, 'D. Both A and B'),
(56, 12, 0, 'A.	Lowevents'),
(57, 12, 0, 'B.	Highevents'),
(58, 12, 1, 'C.	Emitters '),
(59, 12, 0, 'D.	Generators'),
(61, 13, 1, 'A.	deleteAllListener(name)'),
(62, 13, 0, 'B.	deleteListerners(name, f)'),
(63, 13, 0, 'C.	removeListener (name, f)'),
(65, 13, 0, 'D.	removeAllListeners(name)'),
(66, 14, 0, 'A.	Tim-Berners Lee'),
(67, 14, 1, 'B.	Rasmus Lerdorf'),
(68, 14, 0, 'C.	Drek Kolkevi '),
(69, 14, 0, 'D.	Steve Jobs'),
(71, 15, 0, 'A.	APIs are reusable'),
(72, 15, 0, 'B.	APIs are recyclable '),
(73, 15, 0, 'C.	APIs are synchronous '),
(74, 15, 1, 'D.	APIs are asynchronous '),
(76, 16, 1, 'True'),
(77, 16, 0, 'False'),
(78, 17, 0, 'True'),
(79, 17, 1, 'False'),
(80, 18, 1, 'True'),
(81, 18, 0, 'False'),
(82, 19, 0, 'True'),
(83, 19, 1, 'False'),
(84, 20, 0, 'True'),
(85, 20, 1, 'False'),
(86, 21, 0, 'True'),
(87, 21, 1, 'False'),
(88, 22, 0, 'True'),
(89, 22, 1, 'False'),
(90, 23, 1, 'True'),
(91, 23, 0, 'False'),
(92, 24, 1, 'True'),
(93, 24, 0, 'False'),
(94, 25, 0, 'True'),
(95, 25, 1, 'False'),
(96, 26, 1, 'Document Object Model'),
(97, 27, 1, 'Javascript Object Notation'),
(98, 28, 1, 'Hypertext Markup Language'),
(99, 29, 1, 'Cascading Style Sheets'),
(100, 30, 1, 'Browser Object Model'),
(101, 31, 1, 'Hypertext Transfer Protocol'),
(102, 32, 1, 'Extensible Hypertext Markup Language'),
(103, 33, 1, 'Syntatically Awesome Stylesheet'),
(104, 34, 1, 'Asynchronous Javascript and XML'),
(105, 35, 1, 'Cross-Site Scripting'),
(106, 36, 1, 'CSS '),
(107, 36, 1, 'Cascading Style Sheets'),
(109, 37, 1, 'hr'),
(110, 37, 1, '<hr>'),
(111, 38, 1, 'type'),
(112, 39, 1, '>'),
(113, 40, 1, 'getElementById()'),
(114, 40, 1, 'getElementById'),
(115, 40, 1, 'getElementById();'),
(116, 41, 1, 'DOM '),
(117, 41, 1, 'Document Object Model'),
(118, 42, 1, 'Javascript'),
(119, 43, 1, 'onclick();'),
(120, 43, 1, 'onclick()'),
(121, 43, 1, 'onclick'),
(122, 44, 1, 'HTML'),
(123, 44, 1, 'Hypertext Markup Language'),
(124, 45, 1, '<noscript>'),
(125, 45, 1, 'noscript');

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `text`, `q_id`, `q_group`) VALUES
(1, '1. A request that is recommended for few small requests.', 1, 1),
(2, '2. An open, standard-based development platform and is a collection of Java APIs that is owned by Oracle. ', 2, 1),
(3, '3. It runs in a server application as a small Java program. It receives and responds to requests from web clients. ', 3, 1),
(4, '4. An object that provides methods that servlets use to communicate with the servlet container.', 4, 1),
(5, '5. A web tier container is called ___ ? ', 5, 1),
(6, '6. It is used to intercept and process requests before they are sent to servlets.', 6, 1),
(7, '7. A syntax that is similar to C and Perl, it is an open-source server-side scripting language that is especially suited for web development and can be embedded into HTML.', 7, 1),
(8, '8. It uses an event-based server execution procedure and executes JavaScript code outside of a browser.', 8, 1),
(9, '9. It is a script that connects the website to backend servers, data processing and controlling the behavior of higher layers.', 9, 1),
(10, '10. Which statement is correct about server-side scripts ?', 10, 1),
(11, '11. If PHP is a scripting language, what kind of language is Java?', 11, 1),
(12, '12. What events are generated by the Node objects? ', 12, 1),
(13, '13. A function that removes all handlers name events.', 13, 1),
(14, '14. Who is the father of PHP?', 14, 1),
(15, '15. What is the reason why Node rely on event handlers?', 15, 1),
(16, '1. Protocols is a various standards defining communication parameters, such as message and data formats, device addressing, error handling, etc.', 16, 2),
(17, '2. HTTP is defined in standard documents known as Request for Connectivity (RFC) published by theInternet Engineering Task Force (IETF).', 17, 2),
(18, '3. Status Code is a 3-digit integer code, indicating the result of the operation.\r\nANSWER: TRUE\r\n', 18, 2),
(19, '4. HTTP defines 7 standard methods, namely, GET, HEAD, POST, PUT, DELETE, OPTIONS, and TRACE.', 19, 2),
(20, '5. Internet Software is ranges from mid-level network device drivers to high-level applications implementing various Internet functionalities.', 20, 2),
(21, '6. Web Servers are primarily used to serve web applications that consist of dynamic web resources.', 21, 2),
(22, '7. MIME stands for Multipurpose Internet Message Extensions.', 22, 2),
(23, '8. World Wide Web: distributed, collaborative, hypermedia information system built on top of the infrastructure provided by the Internet.', 23, 2),
(24, '9. Web Application Development activities can be characterized as: Front-end web development, Back-end web development, and full-stack web development.', 24, 2),
(25, '10. Front-end web development is primarily concerned with the implementation of the business logic of web applications that runs on the server environment.', 25, 2),
(26, '1. What is the acronym of DOM?', 26, 3),
(27, '2. What is the acronym of JSON?', 27, 3),
(28, '3. What is the acronym of HTML?', 28, 3),
(29, '4. What is the acronym of CSS?', 29, 3),
(30, '5. What is the acronym of BOM?', 30, 3),
(31, '6. What is the acronym of HTTP?', 31, 3),
(32, '7. What is the acronym of XHTML?', 32, 3),
(33, '8. What is the acronym of SASS?', 33, 3),
(34, '9. What is the acronym of AJAX?', 34, 3),
(35, '10. What is the acronym of XSS?', 35, 3),
(36, '1. _______ is a programming language used to specify the presentation aspects of a document.', 36, 4),
(37, '2. A ______ element tag that displays a horizontal line.', 37, 4),
(38, '3. A _______ selector that target a given element.', 38, 4),
(39, '4. A ___ symbol used which is the direct descendant of an element.', 39, 4),
(40, '5. A _______ method that gets the element by its id.', 40, 4),
(41, '6. ______ represents the document as nodes and objects.', 41, 4),
(42, '7. _______ is a programming language that deals with the interaction of the user and can alter the document using scripts.', 42, 4),
(43, '8. A _______ method in which when clicked, an event will happen.', 43, 4),
(44, '9. A ________ programming language is that for creating web pages.', 44, 4),
(45, '10. A _______ element is used when the browser does not support script files.', 45, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
