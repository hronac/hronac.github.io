-- phpMyAdmin SQL Dump
-- version 2.7.0-pl2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 27, 2015 at 03:32 PM
-- Server version: 5.0.18
-- PHP Version: 5.1.2
-- 
-- Database: `store`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `category`
-- 

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL auto_increment,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `category`
-- 

INSERT INTO `category` (`category_id`, `category_name`) VALUES (3, 'Printer');
INSERT INTO `category` (`category_id`, `category_name`) VALUES (1, 'Desktop');
INSERT INTO `category` (`category_id`, `category_name`) VALUES (2, 'Laptop');

-- --------------------------------------------------------

-- 
-- Table structure for table `products`
-- 

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL auto_increment,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `description` text,
  `total_unit` int(11) NOT NULL default '0',
  `unit_price` int(11) NOT NULL default '0',
  `product_image` varchar(300) NOT NULL,
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `products`
-- 

INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `description`, `total_unit`, `unit_price`, `product_image`) VALUES (1, 1, 'Core i5', 'Processor: core-i5,\r\nHDD: TB\r\nMB: Gigabyte G41\r\nRAM: 4GB', 4, 60000, 'images/habib.bmp');
INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `description`, `total_unit`, `unit_price`, `product_image`) VALUES (2, 2, 'HP', 'Processor: core i3\r\nHdd: 1TB\r\nRAM: 4GB\r\nVGA Memory : 2GB', 5, 45000, 'images/laptop.bmp');
INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `description`, `total_unit`, `unit_price`, `product_image`) VALUES (3, 3, 'HP LaserJet Color M551 500', 'Color Printer in 4 cartridge', 5, 150, 'images/habib.bmp');
INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `description`, `total_unit`, `unit_price`, `product_image`) VALUES (4, 1, 'Dualcore', 'Processor: intel Dual core 3.00 GHz, \r\nHDD: 500GB,\r\nMotherboard: Gigabyte,\r\nRAM: 2GB ', 10, 25000, '');
INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `description`, `total_unit`, `unit_price`, `product_image`) VALUES (5, 1, 'Celeron', 'Processor: intel celeron 2.30 GHz, \r\nHDD: 500GB,\r\nMotherboard: Gigabyte,\r\nRAM: 1GB ', 0, 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `user`
-- 

CREATE TABLE `user` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` (`username`, `password`, `fullname`) VALUES ('admin', 'admin', 'Hasanur Rahman');
INSERT INTO `user` (`username`, `password`, `fullname`) VALUES ('abc', 'abc', 'ABCEFG');
INSERT INTO `user` (`username`, `password`, `fullname`) VALUES ('taniya', 'admin', 'Taniya Farjana');
INSERT INTO `user` (`username`, `password`, `fullname`) VALUES ('habib', 'admin', 'Rokonujjaman Habib');
INSERT INTO `user` (`username`, `password`, `fullname`) VALUES ('ijk', 'ijk', 'iJKL');
INSERT INTO `user` (`username`, `password`, `fullname`) VALUES ('mno', 'mno', 'MNOP');
