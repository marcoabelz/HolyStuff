-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2020 at 09:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `holystuff`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(3, 'Sepatu 2', 'air-jordan-1-banner.jpg', 'index.php?page=detail&barang_id=15', 'on'),
(4, 'Raygun', 'banner.jpg', 'index.php?page=detail&barang_id=20', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`) VALUES
(15, 6, 'Black Amarillo', '<p><img alt=\"\" src=\"/HolyStuff/js/ckeditor/fileman/Uploads/Images/IMG_5378.jpg\" style=\"height:225px; width:300px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"/HolyStuff/js/ckeditor/fileman/Uploads/Images/IMG_5376.jpg\" style=\"height:225px; width:300px\" /></p><p>&nbsp;</p><p>Jordan Brand is set to release a brand new&nbsp;<a href=\"https://sneakerbardetroit.com/tag/air-jordan-1-mid/\">Air Jordan 1 Mid</a>&nbsp;that resembles the popular &ldquo;Raygun&rdquo; Nike SB Dunk Low, which is set to release in two new&nbsp;<a href=\"https://sneakerbardetroit.com/nike-sb-dunk-low-raygun-tie-dye-release-date/\">tie-dye</a>&nbsp;colorways.</p><p>&nbsp;</p><p>Dressed in a <em>Black, Amarillo</em>, White, and Team Orange color scheme. This mid-top&nbsp;<a href=\"https://sneakerbardetroit.com/tag/air-jordan-1/\">Air Jordan 1</a>&nbsp;features a Black nubuck base with Orange leather on the toe and heel, while Yellow leather covers the ankle area and eyestay. A White leather Swoosh logo on the sides atop a White midsole and Black rubber outsole completes the design.</p><p>&nbsp;</p><p>Grab a detailed look below, and you can expect this Air Jordan 1 Mid SE to release in the coming weeks at select retailers and&nbsp;<a target=\"_blank\" href=\"http://nike.com/\">Nike.com</a>. The retail price tag is set at <strong>$110 USD.</strong></p>', 'raygun.png', 2950000, 1, 'on'),
(16, 17, 'Off White Shirt', '<p>BNIB</p>', 'baju_off_white.jfif', 3000000, 10, 'on'),
(17, 5, 'Nike VaporMax Off White', '<p>VNDS (9.8 / 10)</p>', 'nike_off_white.jfif', 4000000, 1, 'off'),
(18, 5, 'Air Max OffWhite', '<p>BNIB</p>', 'Nike Off White.jpg', 4500000, 10, 'off'),
(19, 6, 'Off White Nike', '<p>BNIB</p>', 'Off White Nike.jfif', 500000, 10, 'off'),
(20, 6, 'Air Jordan 1 Off White', '<p>BNIB</p>', 'Air Jordan 1 Off White.jpg', 25000000, 4, 'on'),
(21, 17, 'Stussy Shirt', '<p>BNIP</p>', 'Stussy Baju.jpg', 800000, 9, 'on'),
(22, 5, 'Nike Off White Hyper Dunk', '<p>BNIB</p>', 'Off White HyperDunk.png', 5000000, 10, 'on'),
(23, 5, 'Balenciaga', '<p>BNIB</p>', 'Balenciaga.jpg', 10000000, 5, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(5, 'Sepatu', 'on'),
(6, 'AirJordan', 'on'),
(17, 'Baju', 'on'),
(19, 'Waist Bag', 'on'),
(21, 'Jam Tangan', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `konfirmasi_id` int(10) NOT NULL,
  `pesanan_id` int(10) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_account` varchar(150) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`konfirmasi_id`, `pesanan_id`, `nomor_rekening`, `nama_account`, `tanggal_transfer`, `status`) VALUES
(7, 7, '1234511', 'Test', '2020-03-05', 0),
(8, 7, '', '', '0000-00-00', 0),
(9, 7, '', '', '0000-00-00', 0),
(10, 7, '', '', '0000-00-00', 0),
(11, 8, '12345', 'Test Konfirmasi Pembayaran 2', '2020-03-05', 0),
(12, 9, '12345', 'Test Konfirmasi Pembayaran 2', '2020-03-05', 0),
(13, 10, '12345', 'Test Konfirmasi Pembayaran 3', '2020-03-16', 0),
(14, 11, '1234511', 'Test Konfirmasi Pembayaran 4', '0000-00-00', 0),
(15, 12, '131', 'Test Pembayaran 5', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kota_id` int(10) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int(10) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kota_id`, `kota`, `tarif`, `status`) VALUES
(1, 'Jakarta Selatan', 9000, 'on'),
(2, 'Jakarta Utara', 9000, 'on'),
(3, 'Yogyakarta', 30000, 'on'),
(4, 'Jakarta Timur', 9000, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int(10) NOT NULL,
  `kota_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `kota_id`, `user_id`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`) VALUES
(7, 1, 42, 'Marco Abel', '081294150023', 'RPTRA', '2020-03-07 14:42:34', 2),
(8, 1, 45, 'Zefanya', '12345', '1', '2020-03-08 12:30:19', 2),
(9, 1, 45, 'Abel', '12345', 'RAR', '2020-03-08 12:58:13', 2),
(10, 3, 42, 'MAZ', '081294150022', 'Omah Ucok', '2020-03-16 17:56:18', 1),
(11, 1, 42, 'Marco Abel', '081294150023', 'Test', '2020-03-20 11:20:03', 1),
(12, 3, 42, 'Bayu', '081239123', 'Test 1', '2020-03-20 13:28:43', 2),
(13, 1, 42, '', '', '', '2020-03-21 07:54:48', 0),
(14, 1, 42, '', '', '', '2020-03-21 08:09:47', 0),
(15, 2, 42, 'StyleFull', '5151', 'Style', '2020-03-21 11:06:24', 0),
(16, 1, 32, '', '', '', '2020-03-21 11:15:28', 0),
(17, 1, 42, '', '', '', '2020-03-29 08:23:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `pesanan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `quantity` tinyint(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`pesanan_id`, `barang_id`, `quantity`, `harga`) VALUES
(7, 23, 1, 10000000),
(7, 15, 2, 2950000),
(7, 20, 1, 25000000),
(7, 21, 1, 800000),
(8, 15, 2, 2950000),
(8, 23, 2, 10000000),
(8, 20, 2, 25000000),
(9, 15, 4, 2950000),
(9, 20, 3, 25000000),
(10, 15, 1, 2950000),
(10, 16, 2, 3000000),
(10, 20, 1, 25000000),
(11, 23, 1, 10000000),
(12, 15, 1, 2950000),
(12, 23, 2, 10000000),
(13, 23, 1, 10000000),
(14, 23, 1, 10000000),
(15, 23, 1, 10000000),
(17, 23, 1, 10000000),
(17, 20, 1, 25000000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `email`, `alamat`, `phone`, `password`, `status`) VALUES
(32, 'superadmin', 'Marco Abel Zefanya', 'marcoabel25@gmail.com', 'Jalan Bahari Raya No.39', '081294150023', 'b5eaf2b448a9208cd67cf13a6d53bf1d', 'on'),
(34, 'customer', 'Marco Abel Zefanya MD5', 'marcoabel208@gmail.com', '09', '081294150023', '0a8005f5594bd67041f88c6196192646', 'on'),
(42, 'customer', 'Abel', 'marcoabel255@gmail.com', 'RPTRA Bahari', '081294150023', 'b5eaf2b448a9208cd67cf13a6d53bf1d', 'on'),
(43, 'customer', '1234', '1234', '0808', '0808', '81dc9bdb52d04dc20036dbd8313ed055', 'on'),
(44, 'customer', 'Virgi Maulana', 'virgishak@gmail.com', 'Jalan Pondok Indah', '081513084475', '5f4dcc3b5aa765d61d8327deb882cf99', 'on'),
(45, 'customer', 'Zefanya', 'marcoabel2555@gmail.com', 'Bahar', '081294150023', 'b5eaf2b448a9208cd67cf13a6d53bf1d', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `pesanan_id` (`pesanan_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `konfirmasi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
