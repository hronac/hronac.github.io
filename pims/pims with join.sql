-- phpMyAdmin SQL Dump
-- version 2.7.0-pl2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: May 11, 2018 at 08:03 AM
-- Server version: 5.0.18
-- PHP Version: 5.1.2
-- 
-- Database: `pims`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `category`
-- 

CREATE TABLE `category` (
  `dev_id` int(5) NOT NULL auto_increment,
  `dev_name` varchar(20) NOT NULL,
  PRIMARY KEY  (`dev_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `category`
-- 

INSERT INTO `category` VALUES (3, 'Printer');
INSERT INTO `category` VALUES (1, 'Desktop');
INSERT INTO `category` VALUES (2, 'Laptop');
INSERT INTO `category` VALUES (4, 'N-Com');
INSERT INTO `category` VALUES (5, 'Photocopy');
INSERT INTO `category` VALUES (6, 'Scaner');
INSERT INTO `category` VALUES (11, 'Mobile');
INSERT INTO `category` VALUES (15, 'CC Camera');

-- --------------------------------------------------------

-- 
-- Table structure for table `job`
-- 

CREATE TABLE `job` (
  `job_id` int(100) NOT NULL auto_increment,
  `user_id` varchar(100) default NULL,
  `other_user` varchar(100) default NULL,
  `pc_id` varchar(100) default NULL,
  `problems` varchar(500) NOT NULL,
  `solveproc` varchar(500) default NULL,
  `attention` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  `remarks` varchar(100) default NULL,
  `jobcreatedate` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `updatedate` varchar(100) default NULL,
  `jobdoneby` varchar(100) default NULL,
  PRIMARY KEY  (`job_id`),
  KEY `pc_user_id` (`user_id`,`pc_id`,`jobcreatedate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `job`
-- 

INSERT INTO `job` VALUES (1, '1820', NULL, '177', 'Wifi cant connect', 'then i restart ed sir router', '', 'solve', '', '2018-04-07 09:53:08', '', 'Hasan');
INSERT INTO `job` VALUES (2, '1819', NULL, '50', 'Office Problem', 'Office reinstall', '', 'solve', '', '2018-04-07 09:52:47', '', 'Hasan');
INSERT INTO `job` VALUES (3, '1981', NULL, 'SMFAC-0093', 'Windows corrupted', 'Reinstall windows and other soft with AD', NULL, 'solve', 'the printer will be setup afterwards', '2018-04-08 13:35:46', NULL, 'Hasan');
INSERT INTO `job` VALUES (4, '1856', NULL, NULL, 'Laptop doesn''t start', 'then i restart Laptop', NULL, 'Solve', NULL, '2018-05-05 23:48:33', NULL, 'Hasan');
INSERT INTO `job` VALUES (5, '1856', NULL, NULL, 'Wifi Problems', 'Wifi Router Restart, but cant connect, then some time stop router and one router MKT-1 reset', NULL, 'Solve', NULL, '2018-05-05 23:48:33', NULL, 'Hasan');

-- --------------------------------------------------------

-- 
-- Table structure for table `section`
-- 

CREATE TABLE `section` (
  `section_id` int(5) NOT NULL auto_increment,
  `section_name` varchar(30) NOT NULL,
  PRIMARY KEY  (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- 
-- Dumping data for table `section`
-- 

INSERT INTO `section` VALUES (1, 'MKT');
INSERT INTO `section` VALUES (2, 'Admin');
INSERT INTO `section` VALUES (3, 'Accounts');
INSERT INTO `section` VALUES (4, 'Store General');
INSERT INTO `section` VALUES (5, 'Store Yarn');
INSERT INTO `section` VALUES (6, 'Store Grey');
INSERT INTO `section` VALUES (7, 'Store Finish fabric');
INSERT INTO `section` VALUES (8, 'Store Accessories');
INSERT INTO `section` VALUES (9, 'Store chemical');
INSERT INTO `section` VALUES (10, 'CAD');
INSERT INTO `section` VALUES (11, 'Work Study');
INSERT INTO `section` VALUES (12, 'Planning');
INSERT INTO `section` VALUES (13, 'Supply Chain');
INSERT INTO `section` VALUES (16, 'Printing');
INSERT INTO `section` VALUES (17, 'Production');
INSERT INTO `section` VALUES (18, 'Dyeing');
INSERT INTO `section` VALUES (19, 'Embroidery');
INSERT INTO `section` VALUES (20, 'Knitting');
INSERT INTO `section` VALUES (21, 'Warehouse');
INSERT INTO `section` VALUES (22, 'Cutting');
INSERT INTO `section` VALUES (23, 'Utility');
INSERT INTO `section` VALUES (24, 'Waste store');
INSERT INTO `section` VALUES (25, 'Quality');
INSERT INTO `section` VALUES (26, 'IT');
INSERT INTO `section` VALUES (27, 'Civil');

-- --------------------------------------------------------

-- 
-- Table structure for table `user`
-- 

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(100) NOT NULL,
  `designation` varchar(100) default NULL,
  `section` varchar(100) NOT NULL,
  `pc_type` varchar(100) default NULL,
  `ip` varchar(100) default NULL,
  `teamviewer` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  `section_id` varchar(100) default NULL,
  `pc_id` varchar(100) default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `sec_id` (`section_id`),
  KEY `pc_id` (`pc_id`),
  KEY `section_name` (`section`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=2028 ;

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` VALUES (1813, 'Sajedul', 'AM of Accounts', 'Accounts', 'Desktop', '5.211', '123456789', 'active', '3', NULL);
INSERT INTO `user` VALUES (1814, 'Zahidul', 'Accounts', 'Accounts', 'Desktop', '****', '***', 'active', '3', NULL);
INSERT INTO `user` VALUES (1815, 'Samad(ACC)', 'Accounts', 'Accounts', 'Desktop', '****', '***', 'active', '3', NULL);
INSERT INTO `user` VALUES (1816, 'Nasir Uddin', 'Accounts', 'Accounts', 'Desktop', '****', '***', 'active', '3', NULL);
INSERT INTO `user` VALUES (1817, 'Production Audit-2', 'Accounts', 'Accounts', 'Desktop', '****', '***', 'active', '3', NULL);
INSERT INTO `user` VALUES (1818, 'Humayun', 'Accounts', 'Accounts', 'Desktop', '****', '***', 'active', '3', NULL);
INSERT INTO `user` VALUES (1819, 'Production Audit-1', 'Accounts', 'Accounts', 'Desktop', '****', '***', 'active', '3', NULL);
INSERT INTO `user` VALUES (1820, 'IMRUL', 'DGM Accounts & Store', 'Accounts', 'Laptop', '****', '***', 'active', '3', NULL);
INSERT INTO `user` VALUES (1821, 'H.I. Alamgir', 'GM Admin', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1822, 'M.S Mahmud', 'GM Technical', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1823, 'MD Sir', 'Managing Dirrector', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1824, 'Anwar', 'Asst.Manager', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1825, 'Medical', 'Medical Officer', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1826, 'Atik', 'Time section', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1827, 'Lokman', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1828, 'Jaber-Compliance', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1829, 'Akhanda-Compliance', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1830, 'Rana-Hr', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1831, 'Mazharul-Compliance', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1832, 'Data entry-HR', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1833, 'Anamul-HR', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1834, 'Hai-HR', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1835, 'Mr. Salam-HR', 'AGM HR', 'Admin', 'Laptop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1836, 'Mr. Ali', 'GM Admin', 'Admin', 'Laptop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1837, 'Mr. Asad-Compliance', 'AGM Compliance', 'Admin', 'Laptop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1838, 'Saiful Malek', 'Transport', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1839, 'Minhaj Uddin', 'Co-Ordinator', 'Cutting', 'Desktop', '****', '***', 'active', '22', NULL);
INSERT INTO `user` VALUES (1840, 'Helal-cutting', 'Cutting', 'Cutting', 'Desktop', '****', '***', 'active', '22', NULL);
INSERT INTO `user` VALUES (1841, 'Afaz', '', 'Finish fabric store', 'Desktop', '****', '***', 'active', '7', NULL);
INSERT INTO `user` VALUES (1842, 'Shohel', '', 'Finish fabric store', 'Desktop', '****', '***', 'active', '7', NULL);
INSERT INTO `user` VALUES (1843, 'Active Directory Server', '', 'IT', 'Desktop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1844, 'ERP HR Server', '', 'IT', 'Desktop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1845, 'Data Center CPU', '', 'IT', 'Desktop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1846, 'Attendance data Downloader CPU', '', 'IT', 'Desktop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1847, 'N-Com Server CPU', '', 'IT', 'Desktop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1848, 'MKT Support', '', 'IT', 'Desktop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1849, 'Fast React Server', '', 'IT', 'Desktop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1850, 'ERP HR backup CPU', '', 'IT', 'Desktop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1851, 'AD Backup CPU', '', 'IT', 'Desktop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1852, 'Mr. Ikbal Hossain', 'AM of IT', 'IT', 'Laptop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1853, 'Mr. Hasanur Rahman', 'Executive IT', 'IT', 'Laptop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (1854, 'Mr. Saifur Rahman Shanto', 'Asst. Merchandiser', 'MKT', 'Desktop Vivo PC', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1855, 'Mr. Sawpan Kumar Ghosh', 'ED (Marketing & Merchandising)', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1856, 'Md. Bashir', 'DGM (Marketing & Merchandising)', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1857, 'Md. Zane Alam Chowdhury (Shohel)', 'AGM (Marketing & Merchandising)', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1858, 'Mr. Taj Uddin', 'AGM (Marketing & Merchandising)', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1859, 'Mr. Arif', 'Asst. Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1860, 'Mr. Israfil Rasel', 'Jr. Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1861, 'Mr. Dipak Kumar', 'Manager', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1862, 'Mr. Manna', 'Sr. Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1863, 'Mr. Ashraful Alam', 'Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1864, 'Mr. Abul Khair Bhuiyan (Khair)', 'Sr.Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1865, 'Mr. Salim', 'Sr. Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1866, 'Mr. Masum', 'Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1867, 'Mr. Mostakim', 'Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1868, 'Mr. Bidyut', 'Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1869, 'Mr. Asad', 'Sr. Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1870, 'Mr. Animesh', 'Sr.Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1871, 'Mr. Taufique', 'Sr. Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1872, 'Nazmul Islam', 'Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1873, 'Mr. Siddhartha Saha', 'Sr. Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1874, 'Mr. SHAH MAMUN', 'Sr. Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1875, 'Mr. Obayedur Rashid', 'Sr. Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1876, 'Mr. Zakir Hossain', 'AM of MKT', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1877, 'Mr. Sumon Miah', 'Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1878, 'Mr. Shamsul Alam shahin', 'Sr. Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1879, 'Mr. Ashraf', 'Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1880, 'Shajibur Rahman shajib', 'Manager', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1881, 'Nur Solaiman Shimul', 'Manager', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1882, 'Mr. Shamim', 'Asst. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1883, 'Mr. Mahmud', 'Jr. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1884, 'Mr. Mahbubur Bappy', 'Jr. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1885, 'Mr. Shamal', 'Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1886, 'Mr. Rubel', 'Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1887, 'Mr. Mahfuz Ahmed', 'Asst. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1888, 'Mr. Sanjit', 'Asst. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1889, 'Mr. Kamal Parvez', 'Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1890, 'Mr. Rezaur Rahman Abir', 'Merchandiser', 'MKT', 'Desktop', '****', '462406667', 'active', '1', NULL);
INSERT INTO `user` VALUES (1891, 'Mr. Mamunur Rashid', 'Asst. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1892, 'Mr. Amdadul', 'Trainee. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1893, 'Mr. Kibria', 'Asst. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1894, 'Mr. Shan', 'Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1895, 'Nazmul alam Khandokar', 'Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1896, 'Mr.Rana', 'Trainee. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1897, 'Mohan-Mr. Mahfuzur Rahman', 'Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1898, 'Mr. Ariful Islam', 'Jr.Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1899, 'Mr. Taufique', 'Sr.Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1900, 'Scaner', 'Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1901, 'Mr.Monir', 'Asst. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1902, 'Mr. Mirja Ali', 'Trainee. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1903, 'Mr. Mohiuddin', 'Asst. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1904, 'Mr. Saiful Islam', 'Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1905, 'Mr. Aftab Hossain', 'Asst. Merchandider', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1906, 'Mr. Maidul Islam', 'Trainee Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1907, 'Mr. Mahbubur Rahman', 'Asst. Merchandiser', 'MKT', 'Desktop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (1908, 'Rajib Chowdhury', 'Sr. Manager Planning', 'Planning', 'Laptop', '****', '***', 'active', '12', NULL);
INSERT INTO `user` VALUES (1909, 'Saidur Rahman', '', 'Planning', 'Laptop', '****', '***', 'active', '12', NULL);
INSERT INTO `user` VALUES (1910, 'Masum', '', 'Planning', 'Laptop', '****', '***', 'active', '12', NULL);
INSERT INTO `user` VALUES (1911, 'Moshiur Rahman', '', 'Planning', 'Desktop', '****', '***', 'active', '12', NULL);
INSERT INTO `user` VALUES (1912, 'Aman', '', 'Planning', 'Desktop', '****', '***', 'active', '12', NULL);
INSERT INTO `user` VALUES (1913, 'Raihan', '', 'Planning', 'Desktop', '****', '***', 'active', '12', NULL);
INSERT INTO `user` VALUES (1914, 'Shohel Rana', 'OFFICER', 'Planning', 'Desktop', '****', '***', 'active', '12', NULL);
INSERT INTO `user` VALUES (1915, 'Firoj-FastReact', '', 'Planning', 'Desktop', '****', '***', 'active', '12', NULL);
INSERT INTO `user` VALUES (1916, 'Ehtesham UL Haque Khan', 'Sr. GM', 'Planning', 'Laptop', '****', '***', 'active', '12', NULL);
INSERT INTO `user` VALUES (1917, 'Din islam-pm', 'Manager', 'Production', 'N-Com', '****', '***', 'active', '17', NULL);
INSERT INTO `user` VALUES (1918, 'Rahul-PM', 'Manager', 'Production', 'N-Com', '****', '***', 'active', '17', NULL);
INSERT INTO `user` VALUES (1919, 'Mr. Mrinal Kanti Ghosh Mintu', 'GM production', 'Production', 'Desktop', '****', '***', 'active', '17', NULL);
INSERT INTO `user` VALUES (1920, 'Mr. Ashraf', 'Incharge-FQC', 'Production', 'Desktop', '****', '***', 'active', '17', NULL);
INSERT INTO `user` VALUES (1921, 'Mr. Arif Hossain', 'Am of Supply Chain', 'Supply Chain', 'Laptop', '****', '***', 'active', '13', NULL);
INSERT INTO `user` VALUES (1922, 'Ataullah', 'Officer Supply Chain', 'Supply Chain', 'Desktop', '****', '***', 'active', '13', NULL);
INSERT INTO `user` VALUES (1923, 'Manik', 'Officer Supply Chain', 'Supply Chain', 'Desktop', '****', '***', 'active', '13', NULL);
INSERT INTO `user` VALUES (1924, 'Motaleb', 'Am Supply Chain', 'Supply Chain', 'Desktop', '****', '***', 'active', '13', NULL);
INSERT INTO `user` VALUES (1925, 'Nimay', 'Manager', 'Utility', 'Laptop', '****', '***', 'active', '23', NULL);
INSERT INTO `user` VALUES (1926, 'Alauddin', 'Sr. Manager', 'Utility', 'Desktop', '****', '***', 'active', '23', NULL);
INSERT INTO `user` VALUES (1927, 'Sajjad', 'Warehouse', 'Warehouse', 'Desktop', '****', '***', 'active', '21', NULL);
INSERT INTO `user` VALUES (1928, 'Kamrul', 'Warehouse', 'Warehouse', 'Desktop', '****', '***', 'active', '21', NULL);
INSERT INTO `user` VALUES (1929, 'Azfar chowdhury', 'waste store', 'waste store', 'Desktop', '****', '***', 'active', '24', NULL);
INSERT INTO `user` VALUES (1930, 'Anamul Hoque', 'office Work Study', 'WSD', 'Desktop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (1931, 'Zahangir', 'AM WSD', 'WSD', 'Desktop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (1932, 'Rahatul', 'Sr. Officer Work Study', 'WSD', 'Desktop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (1933, 'Rakibul Hasan', 'Sr. Officer Work Study', 'WSD', 'Desktop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (1934, 'RAKIBUZZAMAN', 'Sr. Officer Work Study', 'WSD', 'Desktop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (1935, 'Jakir Hossain', 'Sr. Officer Work Study', 'WSD', 'Desktop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (1936, 'Obaidur', 'WSD Officer', 'WSD', 'Desktop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (1937, 'Shahriar', 'Am - Work Study', 'WSD', 'Desktop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (1938, 'Saifullah Al Mahmud', 'Officer (Work-study)', 'WSD', 'Desktop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (1939, 'Sishir', 'Sr. Officer (Work-study)', 'WSD', 'Desktop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (1940, 'Wakil Alamgir', 'Manager', 'Yarn Store', 'Desktop', '****', '***', 'active', '5', NULL);
INSERT INTO `user` VALUES (1941, 'Mojammel Haque', 'AM of Yarn Store', 'Yarn Store', 'Desktop', '****', '***', 'active', '5', NULL);
INSERT INTO `user` VALUES (1942, 'Horipado', '', 'Yarn Store', 'Desktop', '****', '***', 'active', '5', NULL);
INSERT INTO `user` VALUES (1943, 'Monir', '', 'Yarn Store', 'Desktop', '****', '***', 'active', '5', NULL);
INSERT INTO `user` VALUES (1944, 'Khorshed', '', 'Yarn Store', 'Desktop', '****', '***', 'active', '5', NULL);
INSERT INTO `user` VALUES (1945, 'Proshanto', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1946, 'Mintu', 'AM Admin & Compliance', 'Admin', 'Laptop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1947, 'Rakib', 'CAD', 'CAD', 'Desktop', '****', '***', 'active', '10', NULL);
INSERT INTO `user` VALUES (1948, 'Razzak', 'Officer', 'CAD', 'Desktop', '****', '***', 'active', '10', NULL);
INSERT INTO `user` VALUES (1949, 'Shahidul', 'Executive', 'CAD', 'Desktop', '****', '***', 'active', '10', NULL);
INSERT INTO `user` VALUES (1950, 'Mehedi Hasan', 'Jr. Officer', 'CAD', 'Desktop', '****', '***', 'active', '10', NULL);
INSERT INTO `user` VALUES (1951, 'Aminul', 'Officer', 'CAD', 'Desktop', '****', '***', 'active', '10', NULL);
INSERT INTO `user` VALUES (1952, 'Mr. Rokonuzzaman (Rokon)', 'Asst. CAD officer', 'CAD', 'Desktop', '****', '***', 'active', '10', NULL);
INSERT INTO `user` VALUES (1953, 'Sarwar', 'Sr. Manager technical', 'CAD', 'Laptop', '****', '***', 'active', '10', NULL);
INSERT INTO `user` VALUES (1954, 'Hasan', 'Store Asst', 'Chemical store', 'Desktop', '****', '***', 'active', '9', NULL);
INSERT INTO `user` VALUES (1955, 'Atik', 'Store Asst', 'Chemical store', 'Desktop', '****', '***', 'active', '9', NULL);
INSERT INTO `user` VALUES (1956, 'Faraji', 'Sr. Executive', 'Chemical store', 'Desktop', '****', '***', 'active', '9', NULL);
INSERT INTO `user` VALUES (1957, 'Taslim', 'Cutting', 'Cutting', 'Desktop', '****', '***', 'active', '22', NULL);
INSERT INTO `user` VALUES (1958, 'Orci', '', 'Embroidery', 'Desktop', '****', '***', 'active', '19', NULL);
INSERT INTO `user` VALUES (1959, 'Manik', '', 'Embroidery', 'Desktop', '****', '***', 'active', '19', NULL);
INSERT INTO `user` VALUES (1960, 'Abdul Mozid', '', 'General store', 'Desktop', '****', '***', 'active', '4', NULL);
INSERT INTO `user` VALUES (1961, 'Hanif', '', 'General store', 'Desktop', '****', '***', 'active', '4', NULL);
INSERT INTO `user` VALUES (1962, 'Bisnu', '', 'General store', 'Desktop', '****', '***', 'active', '4', NULL);
INSERT INTO `user` VALUES (1963, 'Mr. Mizanur Rahman', 'Store.Asst', 'General store', 'Desktop', '****', '***', 'active', '4', NULL);
INSERT INTO `user` VALUES (1964, 'Ranjit Kumar', '', 'Knitting', 'Desktop', '****', '***', 'active', '20', NULL);
INSERT INTO `user` VALUES (1965, 'Ujjal', '', 'Knitting', 'Desktop', '****', '***', 'active', '20', NULL);
INSERT INTO `user` VALUES (1966, 'Faruk', '', 'Knitting', 'Desktop', '****', '***', 'active', '20', NULL);
INSERT INTO `user` VALUES (1967, 'Sajjad', 'Asst. Maneger', 'Knitting', 'Desktop', '****', '***', 'active', '20', NULL);
INSERT INTO `user` VALUES (1968, 'Alam', 'Incharge', 'Knitting', 'Desktop', '****', '***', 'active', '20', NULL);
INSERT INTO `user` VALUES (1969, 'Ataur', 'Floor Incharge', 'Knitting', 'Desktop', '****', '***', 'active', '20', NULL);
INSERT INTO `user` VALUES (1970, 'Mizanur Rahman', 'Production Officer', 'Knitting', 'Desktop', '****', '***', 'active', '20', NULL);
INSERT INTO `user` VALUES (1971, 'Sunil das', 'Manager', 'Production', 'Desktop', '****', '***', 'active', '17', NULL);
INSERT INTO `user` VALUES (1972, 'Golam Hossen', 'Asst. Manager', 'Utility', 'Desktop', '****', '***', 'active', '23', NULL);
INSERT INTO `user` VALUES (1973, 'Aminur', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1974, 'Sujat', '', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (1975, 'Emran-repoter', 'Reporter', 'Cutting', 'N-Com', '****', '***', 'active', '22', NULL);
INSERT INTO `user` VALUES (1976, 'Sunny', '', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (1977, 'Hassan', '', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (1978, 'kawsar', 'Executive', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (1979, 'Sorif- physical lab', 'Executive', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (1980, 'Emdadul Haque', 'Dyeing Batch', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (1981, 'Shajol', 'Dyeing Batch', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (1982, 'Nazrul Islam', '', 'Grey', 'Desktop', '****', '***', 'active', '6', NULL);
INSERT INTO `user` VALUES (1983, 'Munjur Alam', '', 'Grey', 'Desktop', '****', '***', 'active', '6', NULL);
INSERT INTO `user` VALUES (1984, 'Yusuf', '', 'Grey', 'Desktop', '****', '***', 'active', '6', NULL);
INSERT INTO `user` VALUES (1985, 'Saidur', 'Designer', 'Printing', 'Desktop', '****', '***', 'active', '16', NULL);
INSERT INTO `user` VALUES (1986, 'Aktar / Lipon', '', 'Printing', 'Desktop', '****', '***', 'active', '16', NULL);
INSERT INTO `user` VALUES (1987, 'Sakibul', '', 'Printing', 'Desktop', '****', '***', 'active', '16', NULL);
INSERT INTO `user` VALUES (1988, 'Sublimition-1', '', 'Printing', 'Desktop', '****', '***', 'active', '16', NULL);
INSERT INTO `user` VALUES (1989, 'Sublimition-2', '', 'Printing', 'Desktop', '****', '***', 'active', '16', NULL);
INSERT INTO `user` VALUES (1990, 'Mahmud-pm', 'Production', 'Production', 'Desktop', '****', '***', 'active', '17', NULL);
INSERT INTO `user` VALUES (1991, 'Helal-PM', 'Manager', 'Production', 'Desktop', '****', '***', 'active', '17', NULL);
INSERT INTO `user` VALUES (1992, 'Mr. Abul Bashar', 'GM Quality', 'Quality', 'Laptop', '****', '***', 'active', '25', NULL);
INSERT INTO `user` VALUES (1993, 'Amit-incharge', 'incharge', 'Accessories', 'Desktop', '****', '***', 'active', '8', NULL);
INSERT INTO `user` VALUES (1994, 'Ashraful Islam', 'Deputy Manager', 'Accessories', 'Desktop', '****', '***', 'active', '8', NULL);
INSERT INTO `user` VALUES (1995, 'Hardev', 'Exe - Officer', 'Accessories', 'Desktop', '****', '***', 'active', '8', NULL);
INSERT INTO `user` VALUES (1996, 'Mizanur rahman', 'incharge', 'Accessories', 'Desktop Vivo PC', '****', '***', 'active', '8', NULL);
INSERT INTO `user` VALUES (1997, 'Tapash', 'incharge', 'Accessories', 'Desktop Vivo PC', '****', '***', 'active', '8', NULL);
INSERT INTO `user` VALUES (1998, 'Ujjal', 'Manager', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (1999, 'Hakim', '******', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (2000, 'Soriful Islam', 'Incharge', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (2001, 'Samol', '******', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (2002, 'Ekramul Hoque', 'Deputy Manager', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (2003, 'Amdadul', '******', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (2004, 'Data Color', '******', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (2005, 'Piyal', 'Dye. Coordinator', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (2006, 'Al-emran', '******', 'Dyeing', 'Desktop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (2007, 'Fuad', '******', 'Dyeing', 'Laptop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (2008, 'Mr. Khalid', 'GM Dyeing', 'Dyeing', 'Laptop', '****', '***', 'active', '18', NULL);
INSERT INTO `user` VALUES (2009, 'Mr. Sultan-GM', 'GM Quality', 'Quality', 'Desktop', '****', '***', 'active', '25', NULL);
INSERT INTO `user` VALUES (2010, 'Mobarak', 'Manager', 'Civil', 'Desktop Vivo PC', '****', '***', 'active', '27', NULL);
INSERT INTO `user` VALUES (2011, 'Mofazzal Hossain', 'Mechanical WorkShop', 'Utility', 'Desktop', '****', '***', 'active', '23', NULL);
INSERT INTO `user` VALUES (2012, 'kamal Mrida', '******', 'Utility', 'Desktop', '****', '***', 'active', '23', NULL);
INSERT INTO `user` VALUES (2013, 'MK Roy', 'GM Utility', 'Utility', 'Desktop', '****', '***', 'active', '23', NULL);
INSERT INTO `user` VALUES (2014, 'BKMEA Server', 'Admin', 'IT', 'Desktop', '****', '***', 'active', '26', NULL);
INSERT INTO `user` VALUES (2015, 'Mr. Mohan', 'Jr.Merchandiser', 'MKT', 'Laptop', '****', '***', 'active', '1', NULL);
INSERT INTO `user` VALUES (2016, 'Aktaruzzaman', 'Environment Sr. Executive', 'Admin', 'Desktop Vivo PC', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (2017, 'Mr. Serajul Islam', 'AGM - HR', 'Admin', 'Laptop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (2018, 'Mr. Shamim Akhter Swapan', 'AGM (Work Study)', 'WSD', 'Laptop', '****', '***', 'active', '11', NULL);
INSERT INTO `user` VALUES (2019, 'Mr. Motin', 'Deputy Manager (Technical Coordination)', 'CAD', 'Laptop', '****', '***', 'active', '10', NULL);
INSERT INTO `user` VALUES (2020, 'Mr. Mazharul Islam', 'Deputy Manager (HR)', 'Admin', 'Laptop', '****', '***', 'active', '2', NULL);
INSERT INTO `user` VALUES (2021, 'Tawhidul Haque Manager', 'HR & Compliance', 'Admin', 'Desktop', '****', '***', 'active', '2', NULL);
