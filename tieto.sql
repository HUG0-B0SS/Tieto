-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 11:18 PM
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
-- Database: `tieto`
--

-- --------------------------------------------------------

--
-- Table structure for table `hinnangud`
--

CREATE TABLE `hinnangud` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kommentaar` varchar(255) NOT NULL,
  `hinnang` int(2) NOT NULL,
  `toidukohad_id` int(6) NOT NULL,
  `liik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hinnangud`
--

INSERT INTO `hinnangud` (`id`, `nimi`, `kommentaar`, `hinnang`, `toidukohad_id`, `liik`) VALUES
(1, 'Batz Group', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 4, 6, ''),
(2, 'Heathcote, Schamberger and Mohr', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 8, 11, ''),
(3, 'Haley-Parisian', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 10, 12, ''),
(4, 'DuBuque, Mann and Doyle', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam portt', 7, 69, ''),
(5, 'Marquardt Group', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 3, 62, ''),
(6, 'Tremblay LLC', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 8, 66, ''),
(7, 'Klein, Thiel and Turner', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Viv', 5, 19, ''),
(8, 'Zulauf-Bode', 'Pellentesque eget nunc.', 5, 86, ''),
(9, 'Dach, Weimann and Rodriguez', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 9, 12, ''),
(10, 'Mraz-Bogisich', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 10, 66, ''),
(11, 'Goyette LLC', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam portt', 6, 38, ''),
(12, 'Bergstrom LLC', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhonc', 4, 73, ''),
(13, 'Mayert, Strosin and Schumm', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 5, 25, ''),
(14, 'Lowe, Breitenberg and Langworth', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 4, 56, ''),
(15, 'Schiller-Cremin', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices ve', 5, 65, ''),
(16, 'O\'Conner LLC', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.', 10, 51, ''),
(17, 'Miller Inc', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 5, 61, ''),
(18, 'Wilderman-Nitzsche', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculi', 8, 60, ''),
(19, 'Stamm Inc', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ', 4, 94, ''),
(20, 'Hintz-Waelchi', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula ve', 6, 59, ''),
(21, 'Reichel, Runte and Hodkiewicz', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 3, 19, ''),
(22, 'Cremin, Spencer and Mann', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 9, 76, ''),
(23, 'Marvin-Powlowski', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 9, 37, ''),
(24, 'Stracke-Feest', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac ', 5, 18, ''),
(25, 'Grimes and Sons', 'Nam dui.', 10, 42, ''),
(26, 'Kassulke, Maggio and Herzog', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 3, 58, ''),
(27, 'Ortiz-Grant', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 1, 86, ''),
(28, 'Batz Inc', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 6, 90, ''),
(29, 'Howell-Wiegand', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.', 2, 98, ''),
(30, 'Schiller, Bartoletti and Hodkiewicz', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 10, 21, ''),
(31, 'Davis, Boehm and Hilpert', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui n', 7, 8, ''),
(32, 'Altenwerth LLC', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 1, 62, ''),
(33, 'Weber-Rath', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac conse', 8, 68, ''),
(34, 'Medhurst, Ledner and Mante', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 3, 28, ''),
(35, 'Littel, Klein and Conroy', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id', 6, 32, ''),
(36, 'McClure-Jenkins', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 9, 1, ''),
(37, 'Ferry Group', 'Integer a nibh.', 5, 82, ''),
(38, 'Lebsack LLC', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', 1, 24, ''),
(39, 'Metz Inc', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 8, 86, ''),
(40, 'Tillman and Sons', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 6, 80, ''),
(41, 'Koss-Ward', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 7, 16, ''),
(42, 'Ward LLC', 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. N', 1, 96, ''),
(43, 'Lowe LLC', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 9, 84, ''),
(44, 'Steuber-Corwin', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit ', 6, 8, ''),
(45, 'Hauck-Murray', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 9, 24, ''),
(46, 'Dickinson LLC', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 5, 63, ''),
(47, 'Lesch-Feest', 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. N', 4, 61, ''),
(48, 'Macejkovic-Block', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam', 10, 35, ''),
(49, 'Hoeger and Sons', 'Duis consequat dui nec nisi volutpat eleifend.', 7, 34, ''),
(50, 'Dickinson-Kunde', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 2, 70, ''),
(51, 'Robel LLC', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integ', 6, 38, ''),
(52, 'Bartoletti, Von and Mayer', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 3, 68, ''),
(53, 'Glover, Gibson and Botsford', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risu', 9, 52, ''),
(55, 'Herman, Feil and Larson', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', 10, 5, ''),
(56, 'Greenholt-Kuphal', 'Donec vitae nisi.', 8, 86, ''),
(57, 'Bahringer-Gutkowski', 'Morbi a ipsum. Integer a nibh.', 10, 11, ''),
(58, 'Kertzmann, Casper and Kub', 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 5, 95, ''),
(59, 'Monahan, Connelly and Gorczany', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 1, 75, ''),
(60, 'Sauer-Krajcik', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 2, 83, ''),
(61, 'Bednar-Considine', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 9, 30, ''),
(62, 'Walter-Mitchell', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mau', 10, 45, ''),
(63, 'Fisher-Green', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 5, 26, ''),
(64, 'Pollich LLC', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 7, 95, ''),
(65, 'Corwin Group', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 7, 17, ''),
(66, 'Skiles, Sauer and Kuhn', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero', 6, 22, ''),
(67, 'Gerlach-Torp', 'Nullam molestie nibh in lectus.', 6, 70, ''),
(68, 'Tremblay, Kuhic and Hauck', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 6, 70, ''),
(69, 'Williamson, Kerluke and Donnelly', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 9, 74, ''),
(70, 'Klocko-Wyman', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ', 9, 100, ''),
(71, 'Fisher-Pfeffer', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero', 5, 29, ''),
(72, 'Schowalter, Considine and Hansen', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 6, 21, ''),
(73, 'Hilll LLC', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 7, 76, ''),
(74, 'Price, Koss and Murazik', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 4, 92, ''),
(75, 'Reilly, Schiller and Hoeger', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor p', 6, 11, ''),
(76, 'Stamm Inc', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 1, 16, ''),
(77, 'VonRueden, Thompson and O\'Hara', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.', 9, 25, ''),
(78, 'McClure-Moen', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 5, 91, ''),
(79, 'Stracke Inc', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio', 6, 24, ''),
(80, 'Schaden, Lemke and Osinski', 'Duis mattis egestas metus. Aenean fermentum.', 10, 79, ''),
(81, 'Harber, Grant and Quigley', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 3, 55, ''),
(82, 'Parisian LLC', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Int', 7, 46, ''),
(83, 'Langosh Inc', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in fel', 1, 23, ''),
(84, 'Emard, Kulas and Mante', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sa', 2, 65, ''),
(85, 'Purdy, Mayer and Schamberger', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pell', 9, 44, ''),
(86, 'Mertz LLC', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 8, 96, ''),
(87, 'D\'Amore Group', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 7, 34, ''),
(88, 'Macejkovic Group', 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 1, 29, ''),
(89, 'Grant-Leannon', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 2, 91, ''),
(90, 'Swaniawski, Price and Buckridge', 'Suspendisse accumsan tortor quis turpis. Sed ante.', 8, 62, ''),
(91, 'Bosco, Koss and Beatty', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse o', 2, 22, ''),
(92, 'Dickens-Thompson', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan', 3, 14, ''),
(93, 'Huel-Zieme', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing', 2, 33, ''),
(94, 'Parker, Armstrong and Reichel', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat', 3, 46, ''),
(95, 'Olson-Bashirian', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 10, 30, ''),
(96, 'Upton-Steuber', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 6, 36, ''),
(97, 'Bruen-Spinka', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum ege', 6, 30, ''),
(99, 'Hackett, Erdman and Bradtke', 'Fusce consequat. Nulla nisl. Nunc nisl.', 7, 12, ''),
(100, 'Bruen-Beatty', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.', 4, 24, '');

-- --------------------------------------------------------

--
-- Table structure for table `kasutajad`
--

CREATE TABLE `kasutajad` (
  `kasutaja` varchar(255) NOT NULL,
  `parool` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasutajad`
--

INSERT INTO `kasutajad` (`kasutaja`, `parool`) VALUES
('admin', '$2y$10$1uXe4nMTmojC0LKpUsp6h.aatYkiEfC.euH7/ne.inn2.vjuh5nm.');

-- --------------------------------------------------------

--
-- Table structure for table `liigid`
--

CREATE TABLE `liigid` (
  `id` int(6) NOT NULL,
  `liigid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `liigid`
--

INSERT INTO `liigid` (`id`, `liigid`) VALUES
(1, 'resto'),
(2, 'kohvik'),
(3, 'baar'),
(4, 'kiosk'),
(5, 'tankla');

-- --------------------------------------------------------

--
-- Table structure for table `soogikohad`
--

CREATE TABLE `soogikohad` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `keskmine_hinne` double NOT NULL,
  `hinnatud` int(6) NOT NULL,
  `liigid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soogikohad`
--

INSERT INTO `soogikohad` (`id`, `nimi`, `asukoht`, `keskmine_hinne`, `hinnatud`, `liigid`) VALUES
(1, 'Stevy Doonican', 'Zavolzh’ye', 9, 1, 'resto'),
(2, 'Bayard Simak', 'Siikainen', 0, 0, 'kiosk'),
(3, 'Butch Waulker', 'Shymkent', 0, 0, 'tankla'),
(4, 'Alisa Tschirschky', 'Tankhoy', 0, 0, 'baar'),
(5, 'Gerrie Swedeland', 'Gaocheng', 10, 1, 'kohvik\r\n'),
(6, 'Mattheus Syplus', 'Vilar do Pinheiro', 4, 1, ''),
(7, 'Andeee Gillis', 'Turmus‘ayyā', 0, 0, ''),
(8, 'Marys Dislee', 'Haikou', 6.5, 2, ''),
(9, 'Nady Florence', 'Qian’an', 0, 0, ''),
(10, 'Warden McCrillis', 'Partikan', 0, 0, ''),
(11, 'Mildred Ellingham', 'Vyshchetarasivka', 8, 3, ''),
(12, 'Ulises Boissier', 'Oesena', 8.7, 3, ''),
(13, 'Rowen Klaussen', 'Annecy', 0, 0, ''),
(14, 'Julienne Bordone', 'Kuantan', 3, 1, ''),
(15, 'Tim Lygo', 'Strömstad', 0, 0, ''),
(17, 'Madlin Mosdall', 'Darma', 7, 1, ''),
(18, 'Tessa Costerd', 'Santa Cruz do Sul', 5, 1, ''),
(19, 'Florie Miroy', 'Dabola', 4, 2, ''),
(20, 'Ashleigh Kalinovich', 'Guifões', 0, 0, ''),
(21, 'Shawnee Babington', 'Thị Trấn Ngải Giao', 8, 2, ''),
(22, 'Ettore Scrowton', 'Trąbki Wielkie', 4, 2, ''),
(23, 'Averil Marriott', 'San José de La Montaña', 1, 1, ''),
(24, 'Elli Gainfort', 'Palopo', 5, 4, ''),
(25, 'Karna Tring', 'Xin’an', 7, 2, ''),
(26, 'Onfroi Oxenham', 'Placer', 5, 1, ''),
(27, 'Michele Ebben', 'Breia', 0, 0, ''),
(28, 'Winny Canter', 'Bukedea', 3, 1, ''),
(29, 'Ramsay Smeaton', 'Jasienica', 3, 2, ''),
(30, 'Elana Basilotta', 'Ituzaingó', 8.3, 3, ''),
(31, 'Joannes MacGillivrie', 'Kuching', 0, 0, ''),
(32, 'Jacquelynn Casier', 'Macia', 6, 1, ''),
(33, 'Fawne Buche', 'Fiorentino', 2, 1, ''),
(34, 'Bent Carrington', 'La Rochelle', 7, 2, ''),
(35, 'Patsy Pes', 'Huikou', 10, 1, ''),
(36, 'Sanderson Retter', 'Labinot-Mal', 6, 1, ''),
(37, 'Sarine Wehden', 'Jiedu', 9, 1, ''),
(38, 'Catriona Cowle', 'Guifões', 6, 2, ''),
(39, 'Silva Wisdish', 'Pozo Hondo', 0, 0, ''),
(40, 'Aldin Thayre', 'Villaba', 0, 0, ''),
(41, 'Edy Eilhermann', 'Panggungasri', 0, 0, ''),
(42, 'Brian Spurgin', 'Guangchen', 10, 1, ''),
(43, 'Mariska Critch', 'Severnyy', 0, 0, ''),
(44, 'Marlo Kmiec', 'Shireet', 9, 1, ''),
(45, 'Anneliese Langforth', 'Cunliji', 10, 1, ''),
(46, 'Wayland Zanneli', 'Malikisi', 5, 2, ''),
(47, 'Louie Nekrews', 'Kissimmee', 0, 0, ''),
(48, 'Misha Hiom', 'Drakino', 0, 0, ''),
(49, 'Hieronymus Krammer', 'Cukanguncal', 0, 0, ''),
(50, 'Abby Chaplyn', 'Żabieniec', 0, 0, ''),
(51, 'Juanita Spear', 'Marelesu', 10, 1, ''),
(52, 'Fulton Marmyon', 'Ábidos', 9, 1, ''),
(53, 'Stanton Guitte', 'Černá Hora', 0, 0, ''),
(54, 'Sax Spurden', 'Makarov', 0, 0, ''),
(55, 'Julie Ackery', 'Uvarovka', 3, 1, ''),
(56, 'Alfy Pancoust', 'Cẩm Phả Mines', 4, 1, ''),
(57, 'Larina Hallbird', 'Ouro Preto do Oeste', 0, 0, ''),
(58, 'Melamie Janicki', 'San Pedro', 3, 1, ''),
(59, 'Shirl Beauchamp', 'Sandy Bay', 6, 1, ''),
(60, 'Tommy Rolph', 'Nagbukel', 8, 1, ''),
(61, 'Adlai Older', 'Aix-en-Provence', 4.5, 2, ''),
(62, 'Alisa Mouth', 'Mabusag', 4, 3, ''),
(63, 'Greer Kohnemann', 'Casalinho', 5, 1, ''),
(64, 'Laurie Itzakovitz', 'Petrovice u Karviné', 0, 0, ''),
(65, 'Lothario Dundendale', 'Miaoyu', 3.5, 2, ''),
(66, 'Birdie Dallon', 'Krasnogorskoye', 9, 2, ''),
(67, 'Anya Scad', 'Xiatang', 0, 0, 'baar'),
(68, 'Xymenes Artindale', 'Okhansk', 5.5, 2, ''),
(69, 'Ches Kollaschek', 'Jiannan', 7, 1, ''),
(70, 'Elsy Gorhardt', 'Pho Thale', 4.7, 3, ''),
(71, 'Tadio Harbor', 'North Little Rock', 0, 0, ''),
(72, 'Patty Whenman', 'Karagach', 0, 0, ''),
(73, 'Nikolos Done', 'Osiek nad Notecią', 4, 1, ''),
(74, 'Elliot Reichhardt', 'Pangpang', 9, 1, ''),
(75, 'Putnam Gadney', 'Anambongan', 1, 1, ''),
(76, 'Raffarty Murty', 'Brzeg Dolny', 8, 2, ''),
(77, 'Cammy Tunno', 'Uppsala', 0, 0, ''),
(78, 'Madelaine Prinett', 'Villeneuve-d\'Ascq', 0, 0, ''),
(79, 'Berk Froude', 'Dalai', 10, 1, ''),
(80, 'Haslett Cases', 'Balsas', 6, 1, ''),
(81, 'Audra Criag', 'Indaial', 0, 0, ''),
(82, 'Ellery Ranyell', 'Rennes', 5, 1, ''),
(83, 'Mignonne Fieldhouse', 'Baitu', 2, 1, ''),
(84, 'Gloriane Eckly', 'Nocaima', 9, 1, ''),
(85, 'Mick Jickles', 'Kynopiástes', 0, 0, ''),
(86, 'Even Peach', 'Bryansk', 5.5, 4, ''),
(87, 'Blythe Thackeray', 'Danville', 0, 0, ''),
(88, 'Peyter Jenking', 'Daşoguz', 0, 0, ''),
(89, 'Fidelia Keenlyside', 'Xiangshui', 0, 0, ''),
(90, 'Ermin Dobbison', 'Tsagaanchuluut', 6, 1, ''),
(91, 'Arlene Garthside', 'Terpsithéa', 3.5, 2, ''),
(92, 'Smitty Grahl', 'Duraznopampa', 4, 1, ''),
(93, 'Mady Braddock', 'Redondos', 0, 0, ''),
(94, 'Patsy Ambrogelli', 'Qiganjidie', 4, 1, ''),
(95, 'Trstram Laxson', 'Shāhzādpur', 6, 2, ''),
(96, 'Tobit Krysiak', 'Tarica', 4.5, 2, ''),
(97, 'Burlie Beri', 'Nemby', 0, 0, ''),
(98, 'Rosanna Delhay', 'Mangai', 2, 1, ''),
(99, 'Bax Champerlen', 'Akkol’', 0, 0, ''),
(100, 'Sholom Dunster', 'Banaybanay', 9, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liigid`
--
ALTER TABLE `liigid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soogikohad`
--
ALTER TABLE `soogikohad`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
