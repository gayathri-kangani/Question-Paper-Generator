-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2023 at 07:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `selectedqs`
--

CREATE TABLE `selectedqs` (
  `id` int(100) NOT NULL,
  `question` varchar(10000) NOT NULL,
  `marks` int(100) NOT NULL,
  `co` int(20) NOT NULL,
  `level` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selectedqs`
--

INSERT INTO `selectedqs` (`id`, `question`, `marks`, `co`, `level`) VALUES
(6, 'Describe the following HTML Tags with Suitable Examples.a)	Bold b) Italic c) Underline d) Paragraph e)Strike f) Break a line g) Horizontal line h) Pre-Formatting', 6, 1, 1),
(9, 'Discuss with suitable example about frame and frameset tags state flower and state tree as columns.\r\n', 7, 1, 3),
(12, 'Explain how PHP session is created and destroyed? Explain with an  example.', 6, 2, 1),
(16, 'What are the two modes that the PHP processor operates in? Explain?', 5, 2, 2),
(22, 'With the help of a neat diagram explain the lifecycle of a servlet', 6, 3, 1),
(31, 'What is JDBC? How to connecting to a database using JDBC?', 5, 4, 1),
(36, 'Explain Error handling in JSP with an example                                                          ', 7, 4, 2),
(41, 'What is Middleware in ExpressJS?                              \r\nWhat are the different types of Middleware?  \r\n', 6, 5, 1),
(48, 'Develop Servlet application to display student information (SNO, SNAME, COURSE and BRANCH) from database. ', 8, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `unit1`
--

CREATE TABLE `unit1` (
  `id` int(50) NOT NULL,
  `question` varchar(500) NOT NULL,
  `marks` int(100) NOT NULL,
  `co` int(50) NOT NULL,
  `level` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit1`
--

INSERT INTO `unit1` (`id`, `question`, `marks`, `co`, `level`) VALUES
(1, 'What do you mean by \"class\" and \"id\" in CSS? Explain with example?', 6, 1, 1),
(2, 'Write a JavaScript program to find the factorial of a number?', 8, 1, 3),
(3, 'Develop a Java Script to check whether the given number is Palindrome or not.', 4, 1, 3),
(4, 'Write HTML code to design a web page to create a table with 6 rows and 3 columns for entering the marks list of 5 students. Assume suitable headings for each column.', 6, 1, 3),
(5, 'What are the different methods by which we can convert a string to a number in JavaScript?', 5, 1, 1),
(6, 'Describe the following HTML Tags with Suitable Examples.\r\na)	Bold b) Italic c) Underline d) Paragraph e)Strike f) Break a line g) Horizontal line h) Pre-Formatting\r\n', 8, 1, 1),
(7, 'Explain any 2 objects with methods and properties.', 10, 1, 3),
(8, 'Write a java script to display the current date and time', 5, 1, 3),
(9, 'Discuss with suitable example about frame and frameset tags state flower and state tree as columns.\r\n', 7, 1, 3),
(10, 'Outline html table that comprises 5 rows of data with state ,state bird', 5, 1, 3),
(11, 'What are the different ways to create an array in PHP? Explain with example.', 8, 2, 1),
(12, 'Explain how PHP session is created and destroyed? Explain with an  example.', 6, 2, 1),
(13, 'Explain PHP Conditional statements with suitable example', 7, 2, 1),
(14, 'Write a PHP program to add array elements taken as input.', 6, 2, 1),
(15, 'What is server side scripting? Write a PHP program to check whether the given number is Armstrong or not?', 7, 2, 2),
(16, 'What are the two modes that the PHP processor operates in? Explain?', 5, 2, 2),
(17, 'Write a PHP program to display the third largest number among four given numbers ', 6, 2, 2),
(18, 'Design an HTML form for entering a number by the user.\r\nWrite a PHP code to display a message indicating, whether the number is odd or even, when clicking on the submit button?\r\n', 6, 2, 3),
(19, 'Explain cookies management in PHP.  ', 8, 2, 3),
(20, 'Explain how PHP can be used to interact with a database with suitable example', 7, 2, 3),
(21, 'What are features of JSP that make it an essential web-based technology?', 6, 3, 1),
(22, 'With the help of a neat diagram explain the lifecycle of a servlet', 7, 3, 1),
(23, 'Discuss the process of Handling a HITP Request and Response', 8, 3, 1),
(24, 'What is Java Server Pages (JSP)? Explain the meaning of the dynamic web page?', 6, 3, 2),
(25, 'Explain regarding the cookies mechanism for session tracking', 7, 3, 2),
(26, 'Discuss about the javax.servlet HTTP Package ', 5, 3, 2),
(27, 'Differentiate between JSP and Servlet?', 5, 3, 4),
(28, 'What are the primary differences between the JSP custom tags and java beans?', 8, 3, 4),
(29, 'Explain session Tracking in servilets', 7, 3, 4),
(30, 'List any 6 Security issues in servlets', 6, 3, 4),
(31, 'What is JDBC? How to connecting to a database using JDBC?', 5, 4, 1),
(32, 'What is a Collection in MongoDB? Explain?', 8, 4, 1),
(33, 'Describe all components of a JSP page with suitable example ', 6, 4, 1),
(34, 'Write a JSP program to check whether the given year is leap year or not', 6, 4, 1),
(35, 'Explain about accessing a database from JSP page?', 6, 4, 2),
(36, 'Explain Error handling in JSP with an example                                                          ', 7, 4, 2),
(37, 'Explain declaration of variables and methods in JSP', 5, 4, 2),
(38, 'Discuss about indexes in MongoDB?', 6, 4, 3),
(39, 'Explain JSP Elements', 6, 4, 3),
(40, 'Demonstrate the usage of various Action tags in JSP ', 8, 4, 3),
(41, 'What is Middleware in ExpressJS?                              \r\nWhat are the different types of Middleware?  \r\n', 6, 5, 1),
(42, 'List the need of JSON in building real web sites', 8, 5, 1),
(43, 'Explain about JSON Objects by specifying syntax', 7, 5, 1),
(44, 'What is NodeJS? Explain the features of NodeJS?                  ', 8, 5, 2),
(45, 'Explain Modules in NodeJS?', 6, 5, 2),
(46, 'Write the steps for setting up an ExpressJS application?', 7, 5, 2),
(47, 'Explain JDBC Drivers.', 7, 5, 3),
(48, 'Develop Servlet application to display student information (SNO, SNAME, COURSE and BRANCH) from database. ', 8, 5, 3),
(49, 'Illustrate the usage of JSON in real web sites.             ', 5, 5, 3),
(50, 'Describe JSON objects.	', 6, 5, 3),
(51, 'What is html used for?', 4, 1, 1),
(52, 'What is nodejs used for ?', 5, 3, 3),
(53, 'What is flask used for ?', 6, 4, 2),
(54, 'what is use of comments in html', 10, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `unit2`
--

CREATE TABLE `unit2` (
  `id` int(100) NOT NULL,
  `question` varchar(500) NOT NULL,
  `marks` int(100) NOT NULL,
  `co` int(20) NOT NULL,
  `level` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit2`
--

INSERT INTO `unit2` (`id`, `question`, `marks`, `co`, `level`) VALUES
(1, 'What are the different ways to create an array in PHP? Explain with example.', 8, 2, 1),
(2, 'Explain how PHP session is created and destroyed? Explain with an  example.', 6, 2, 1),
(3, 'Explain PHP Conditional statements with suitable example', 7, 2, 1),
(4, 'Write a PHP program to add array elements taken as input.\r\n\r\n', 6, 2, 1),
(5, 'What is server side scripting? Write a PHP program to check whether the given number is Armstrong or not?', 7, 2, 2),
(6, 'What are the two modes that the PHP processor operates in? Explain?', 5, 2, 2),
(7, 'Write a PHP program to display the third largest number among four given numbers', 6, 2, 2),
(8, 'Design an HTML form for entering a number by the user. Write a PHP code to display a message indicating, whether the number is odd or even, when clicking on the submit button?\r\n', 6, 2, 3),
(9, 'Explain cookies management in PHP. ', 8, 2, 3),
(11, 'Explain how PHP can be used to interact with a database with suitable example\r\n\r\n', 7, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `unit3`
--

CREATE TABLE `unit3` (
  `id` int(100) NOT NULL,
  `question` varchar(500) NOT NULL,
  `marks` int(100) NOT NULL,
  `co` int(20) NOT NULL,
  `level` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit3`
--

INSERT INTO `unit3` (`id`, `question`, `marks`, `co`, `level`) VALUES
(1, 'Explain how PHP can be used to interact with a database with suitable example\r\n\r\n', 6, 3, 1),
(2, 'With the help of a neat diagram explain the lifecycle of a servlet', 7, 3, 1),
(3, 'Discuss the process of Handling a HITP Request and Response', 8, 3, 1),
(4, 'What is Java Server Pages (JSP)? Explain the meaning of the dynamic web page?', 6, 3, 2),
(5, 'Explain regarding the cookies mechanism for session tracking  ', 7, 3, 2),
(6, 'Discuss about the javax.servlet HTTP Package', 5, 3, 2),
(7, 'Differentiate between JSP and Servlet?', 5, 3, 4),
(8, 'What are the primary differences between the JSP custom tags and java beans?', 8, 3, 4),
(9, 'Explain session Tracking in servlets', 7, 3, 4),
(10, 'List any 6 Security issues in servlets', 6, 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `selectedqs`
--
ALTER TABLE `selectedqs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question` (`question`) USING HASH;

--
-- Indexes for table `unit1`
--
ALTER TABLE `unit1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `unit2`
--
ALTER TABLE `unit2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `unit3`
--
ALTER TABLE `unit3`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question` (`question`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `selectedqs`
--
ALTER TABLE `selectedqs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `unit1`
--
ALTER TABLE `unit1`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `unit2`
--
ALTER TABLE `unit2`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `unit3`
--
ALTER TABLE `unit3`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
