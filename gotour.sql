-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 07 Mar 2022 pada 14.41
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gotour`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_destinations`
--

CREATE TABLE `tbl_destinations` (
  `id_destination` int(3) NOT NULL,
  `name` text NOT NULL,
  `price` text NOT NULL,
  `images` text NOT NULL,
  `about` text NOT NULL,
  `id_location` int(3) NOT NULL,
  `latitude` double(14,10) NOT NULL,
  `longitude` double(14,10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_destinations`
--

INSERT INTO `tbl_destinations` (`id_destination`, `name`, `price`, `images`, `about`, `id_location`, `latitude`, `longitude`) VALUES
(1, 'Pinisi', '20000', 'Pinisi_1.jpg,Pinisi_2.jpg,Pinisi_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 1, -5.5224201000, 120.3555982000),
(2, 'Pantai Bara', '15000', 'Pantai_Bara_1.jpg,Pantai_Bara_2.jpg,Pantai_Bara_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 1, -5.6116348000, 120.4389153000),
(3, 'Ammatoa', '40000', 'Ammatoa_1.jpg,Ammatoa_2.jpg,Ammatoa_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 1, -5.6178402000, 120.4590742000),
(4, 'Kawasan Karst', '30000', 'Karst_1.jpg,Karst_2.jpg,Karst_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 2, -4.9153434000, 119.6123724000),
(5, 'Rammang-rammang', '40000', 'Rammang-rammang_1.jpg,Rammang-rammang_2.jpg,Rammang-rammang_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 2, -4.9196672000, 119.6025984000),
(6, 'Bulu Tombolo', '10000', 'Bulu_Tombolo_1.jpg,Bulu_Tombolo_2.jpg,Bulu_Tombolo_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 2, -4.9989294000, 119.7397438000),
(7, 'PLTB Tolo', '0', 'PLTB_Tolo_1.jpg,PLTB_Tolo_2.jpg,PLTB_Tolo_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 3, -5.6586372000, 119.7722907000),
(8, 'Batu Siping', '5000', 'Batu_Siping_1.jpg,Batu_Siping_2.jpg,Batu_Siping_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 3, -5.5612270000, 119.5090201000),
(9, 'Bukit Bossolo', '10000', 'Bukit_Bossolo_1.jpg,Bukit_Bossolo_2.jpg,Bukit_Bossolo_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 3, -5.5011565000, 119.8415470000),
(10, 'Hutan Pinus', '30000', 'Hutan_Pinus_1.jpg,Hutan_Pinus_2.jpg,Hutan_Pinus_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 4, -5.2442752000, 119.8683279000),
(11, 'Parang Bugisi', '15000', 'Parang_Bugisi_1.jpg,Parang_Bugisi_2.jpg,Parang_Bugisi_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 4, -5.2612083000, 119.8602196000),
(12, 'Danau Tanralili', '10000', 'Danau_Tanralili_1.jpg,Danau_Tanralili_2.jpg,Danau_Tanralili_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 4, -5.3119859000, 119.9098371000),
(13, 'Celebes Canyon', '20000', 'Celebes_Canyon_1.jpg,Celebes_Canyon_2.jpg,Celebes_Canyon_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 5, -4.5008423000, 119.7141166000),
(14, 'Puncak Lappa Laona', '15000', 'Lappa_Laona_1.jpg,Lappa_Laona_2.jpg,Lappa_Laona_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 5, -4.5626775000, 119.7591950000),
(15, 'Bukit Lakeppo', '5000', 'Bukit_Lakeppo_1.jpg,Bukit_Lakeppo_2.jpg,Bukit_Lakeppo_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 5, -4.5078837000, 119.6957502000),
(16, 'Kalibbong Alloa', '25000', 'Kalibbong_Alloa_1.jpg,Kalibbong_Alloa_2.jpg,Kalibbong_Alloa_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 6, -4.7422386000, 119.0440887000),
(17, 'Sungai Palattae', '10000', 'Sungai_Palattae_1.jpg,Sungai_Palattae_2.jpg,Sungai_Palattae_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 6, -4.7422386000, 119.0440887000),
(18, 'Pulau Samatellu', '30000', 'Pulau_Samatellu_1.jpg,Pulau_Samatellu_2.jpg,Pulau_Samatellu_3.jpg', 'Laboris et cillum aliquip commodo minim officia non. Sit irure labore eu aliquip aute veniam ad tempor non ipsum nostrud dolore magna culpa. Laborum excepteur consequat Lorem nulla excepteur minim minim culpa. Reprehenderit minim elit enim et duis.', 6, -4.7047770000, 119.3267570000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_locations`
--

CREATE TABLE `tbl_locations` (
  `id_location` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_locations`
--

INSERT INTO `tbl_locations` (`id_location`, `name`, `image`) VALUES
(1, 'Bulukumba', 'location_bulukumba.jpg'),
(2, 'Maros', 'location_maros.jpg'),
(3, 'Jeneponto', 'location_jeneponto.jpg'),
(4, 'Malino', 'location_malino.jpg'),
(5, 'Barru', 'location_barru.jpg'),
(6, 'Pangkep', 'location_pangkep.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tickets`
--

CREATE TABLE `tbl_tickets` (
  `booking_code` varchar(30) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `id_destination` int(3) NOT NULL,
  `time` text NOT NULL,
  `total_ticket` int(3) NOT NULL,
  `total_price` int(30) NOT NULL,
  `comment` text NOT NULL,
  `rating` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tickets`
--

INSERT INTO `tbl_tickets` (`booking_code`, `id_user`, `id_destination`, `time`, `total_ticket`, `total_price`, `comment`, `rating`) VALUES
('027N514285', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 5, '1645977600000', 1, 40500, 'rammang2 oke', '5.0'),
('6A59005767', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 6, '1646323200000', 2, 21000, '', '0'),
('9257159068', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 10, '1645113600000', 1, 30500, 'hutan pinus comment', '3.0'),
('BI7TRY9XH5', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 12, '1646150400000', 1, 10500, '', '0'),
('FNODRPNQKU', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 2, '1645977600000', 1, 15500, '', '0'),
('G6B24IV96D', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 1, '1646064000000', 1, 20500, '', '0'),
('GDJS68DJS', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 1, '356787453423', 2, 40000, '', '5.0'),
('JNI1MOXNNM', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 8, '1645372800000', 2, 11000, '', '0'),
('LBH90Y1UWX', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 14, '1646064000000', 1, 15500, '', '0'),
('MQUIEC3807', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 7, '1646064000000', 1, 500, '', '0'),
('MRRLCQXGOF', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 2, '1646409600000', 1, 15500, '', '0'),
('OBCCLFKUZ1', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 11, '1646150400000', 1, 15500, '', '0'),
('VUUSFNFMAD', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 3, '1646064000000', 1, 40500, '', '4'),
('VUUSFNFMADas', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 3, '1646064000000', 1, 40500, '', '5'),
('X12195L0MU', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 16, '1644940800000', 1, 25500, '', '4.0'),
('XZL7TI5D7V', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 13, '1645286400000', 1, 20500, 'comment for celebes canyon', '5.0'),
('XZL7TI5D7Vsa', 'mVYQijySQqZFeLkPvouCL47daiW2', 13, '1645286400000', 1, 20500, 'celebes canyon mantap parah gengs', '5.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tourguide`
--

CREATE TABLE `tbl_tourguide` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `image` text NOT NULL,
  `hp` text NOT NULL,
  `id_location` text NOT NULL,
  `balance` text NOT NULL,
  `jk` text NOT NULL,
  `cost` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tourguide`
--

INSERT INTO `tbl_tourguide` (`id`, `name`, `email`, `image`, `hp`, `id_location`, `balance`, `jk`, `cost`) VALUES
(1, 'Ayo Ogunseinde', 'ayo-ogunseinde@gmail.com', 'ayo-ogunseinde.jpg', '083479464999', '1', '0', 'Perempuan', '50000'),
(2, 'Ben Parker', 'ben-parker@gmail.com', 'ben-parker.jpg', '086342016888', '1', '0', 'Laki-laki', '60000'),
(3, 'Jake Nackos', 'jake-nackos@gmail.com', 'jake-nackos.jpg', '086342367998', '2', '0', 'Perempuan', '50000'),
(4, 'Jeffery Erhunse', 'jeffery-erhunse@gmail.com', 'jeffery-erhunse.jpg', '087654321234', '2', '0', 'Perempuan', '35000'),
(5, 'Joseph Gonzalez', 'joseph-gonzalez@gmail.com', 'joseph-gonzalez.jpg', '083129865700', '3', '0', 'Laki-laki', '60000'),
(6, 'Jurica Koletic', 'jurica-koletice@gmail.com', 'jurica-koletic.jpg', '087654321433', '3', '0', 'Laki-laki', '100000'),
(7, 'Matheus Ferrero', 'matheus-ferrero@gmail.com', 'matheus-ferrero.jpg', '083129125711', '4', '0', 'Perempuan', '50000'),
(8, 'Stefan Stefancik', 'stefan-stefancik@gmail.com', 'stefan-stefancik.jpg', '083129125111', '4', '0', 'Perempuan', '100000'),
(9, 'Stephanie Liverani', 'stephanie-liverani@gmail.com', 'stephanie-liverani.jpg', '083528166453', '5', '0', 'Perempuan', '45000'),
(10, 'Vicky Hladynets', 'vicky-hladynets@gmail.com', 'vicky-hladynets.jpg', '083528195555', '5', '0', 'Perempuan', '80000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tourguide_tickets`
--

CREATE TABLE `tbl_tourguide_tickets` (
  `id` varchar(30) NOT NULL,
  `id_user` text NOT NULL,
  `id_tourguide` int(3) NOT NULL,
  `date_time` text NOT NULL,
  `destinations` text NOT NULL,
  `total_price` text NOT NULL,
  `comment` text NOT NULL,
  `rating` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tourguide_tickets`
--

INSERT INTO `tbl_tourguide_tickets` (`id`, `id_user`, `id_tourguide`, `date_time`, `destinations`, `total_price`, `comment`, `rating`) VALUES
('54199T1SQ8', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 9, '1646150400000', 'Puncak Lappa Laona', '60000', 'komen for Stephanie liverani', '5.0'),
('5C55757374', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 8, '1646323200000', 'Hutan Pinus, Parang Bugisi, Danau Tanralili', '155000', '', '0'),
('5M00G55964', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 7, '1645113600000', 'Parang Bugisi, Danau Tanralili', '75000', 'tour guide keren', '5'),
('6', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 1, '1644940800000', 'Pinisi', '70000', '', '5'),
('7', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 3, '1645027200000', 'Kawasan Karst, Rammang-rammang', '120000', 'comment for Jack nachos', '5.0'),
('8772811729', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 10, '1646236800000', 'Celebes Canyon', '100000', '', '0'),
('dsdsdds', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 1, '1645113600000', 'sddsds', '10000', '4 aja ya, Ayo Ogun', '4.0'),
('SU05O78QR6', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 5, '1645200000000', 'PLTB Tolo', '60000', '', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `id_transaction` varchar(30) NOT NULL,
  `id_user` varchar(30) NOT NULL,
  `title` text NOT NULL,
  `picture_path` text NOT NULL,
  `amount` text NOT NULL,
  `time` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`id_transaction`, `id_user`, `title`, `picture_path`, `amount`, `time`, `description`) VALUES
('A1563796287', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Top Up', '', '200000', '1644995091949', ''),
('A1614687448', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Top Up', '', '100000', '1644925936716', ''),
('A3988106926', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Top Up', '', '200000', '1644924915335', ''),
('A5417974300', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Top Up', '', '200000', '1645174573192', ''),
('B0113173086', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Parang Bugisi', 'Parang_Bugisi_1.jpg', '-15500', '1646131670888', 'Malino'),
('B0559543180', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Bulu Tombolo', 'Bulu_Tombolo_1.jpg', '-21000', '1646017595128', 'Maros'),
('B0842095269', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Ammatoa', 'Ammatoa_1.jpg', '-40500', '1645975762631', 'Bulukumba'),
('B0917979075', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Bulu Tombolo', 'Bulu_Tombolo_1.jpg', '-10500', '1644927863165', 'Maros'),
('B1269916998', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Pantai Bara', 'Pantai_Bara_1.jpg', '-15500', '1646403375632', 'Bulukumba'),
('B2254310648', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Pinisi', 'Pinisi_1.jpg', '-20500', '1646015789531', 'Bulukumba'),
('B3562215553', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Puncak Lappa Laona', 'Lappa_Laona_1.jpg', '-31000', '1644924973745', 'Barru'),
('B3757225612', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Rammang-rammang', 'Rammang-rammang_1.jpg', '-40500', '1644925116670', 'Maros'),
('B5235689301', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'PLTB Tolo', 'PLTB_Tolo_1.jpg', '-500', '1646017921059', 'Jeneponto'),
('B5535535096', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Danau Tanralili', 'Danau_Tanralili_1.jpg', '-10500', '1644925954803', 'Malino'),
('B6725468001', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Celebes Canyon', 'Celebes_Canyon_1.jpg', '-20500', '1645174461704', 'Barru'),
('B7296448527', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Batu Siping', 'Batu_Siping_1.jpg', '-11000', '1645174526323', 'Jeneponto'),
('B7861799882', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Kalibbong Alloa', 'Kalibbong_Alloa_1.jpg', '-25500', '1644928419153', 'Pangkep'),
('B8498926790', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Danau Tanralili', 'Danau_Tanralili_1.jpg', '-10500', '1645976100432', 'Malino'),
('B8923717992', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Puncak Lappa Laona', 'Lappa_Laona_1.jpg', '-15500', '1646018062379', 'Barru'),
('B9120440034', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Rammang-rammang', 'Rammang-rammang_1.jpg', '-40500', '1645883473252', 'Maros'),
('B9212626543', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Pantai Bara', 'Pantai_Bara_1.jpg', '-15500', '1645965087318', 'Bulukumba'),
('B9436835124', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Kawasan Karst', 'Karst_1.jpg', '-30500', '1646130970230', 'Maros'),
('B9955311240', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Hutan Pinus', 'Hutan_Pinus_1.jpg', '-30500', '1645086564509', 'Malino'),
('C1483399285', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Vicky Hladynets', 'vicky-hladynets.jpg', '-85000', '1646023917032', 'Bukit Lakeppo'),
('C1860358245', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Matheus Ferrero', 'matheus-ferrero.jpg', '-75000', '1644995141218', 'Parang Bugisi, Danau Tanralili'),
('C2642141707', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Jurica Koletic', 'jurica-koletic.jpg', '-115000', '1646133776156', 'Batu Siping, PLTB Tolo, Bukit Bossolo'),
('C3356971849', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Jake Nackos', 'jake-nackos.jpg', '-120000', '1644925045489', 'Kawasan Karst, Rammang-rammang'),
('C5738379262', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Stefan Stefancik', 'stefan-stefancik.jpg', '-125000', '1646135168657', 'Parang Bugisi, Danau Tanralili'),
('C6992733196', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Vicky Hladynets', 'vicky-hladynets.jpg', '-100000', '1646136452827', 'Celebes Canyon'),
('C7207431273', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Stephanie Liverani', 'stephanie-liverani.jpg', '-65000', '1646023786051', 'Celebes Canyon'),
('C7228324803', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Joseph Gonzalez', 'joseph-gonzalez.jpg', '-60000', '1644994631014', 'PLTB Tolo'),
('C7229264137', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Stephanie Liverani', 'stephanie-liverani.jpg', '-60000', '1646135855601', 'Puncak Lappa Laona'),
('C7344509454', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Joseph Gonzalez', 'joseph-gonzalez.jpg', '-60000', '1645173174407', 'PLTB Tolo'),
('C7931923280', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Stefan Stefancik', 'stefan-stefancik.jpg', '-155000', '1646212270931', 'Hutan Pinus, Parang Bugisi, Danau Tanralili'),
('C9487226956', 'V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'Stephanie Liverani', 'stephanie-liverani.jpg', '-65000', '1646023858405', 'Celebes Canyon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `name` text NOT NULL,
  `hp` text NOT NULL,
  `register_date` datetime NOT NULL,
  `image` text NOT NULL,
  `balance` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `email`, `name`, `hp`, `register_date`, `image`, `balance`) VALUES
('mVYQijySQqZFeLkPvouCL47daiW2', 'scarlet@gmail.com', 'Scrlet', '', '2022-03-02 17:48:22', 'scaled_IMG_20220206_204619.jpg', '0'),
('nqaSL6uvIvdyx0zIZXQhCh2l6YC3', 'scarlet.indonesia27@gmail.com', 'User Pro', '', '2022-03-02 22:11:56', '', '0'),
('V7sf6pkHiEduQ6jaKyXtHHxkfr73', 'hery@gmail.com', 'Hery Hz', '', '2022-01-27 19:02:15', '', '139500');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_destinations`
--
ALTER TABLE `tbl_destinations`
  ADD PRIMARY KEY (`id_destination`);

--
-- Indeks untuk tabel `tbl_locations`
--
ALTER TABLE `tbl_locations`
  ADD PRIMARY KEY (`id_location`);

--
-- Indeks untuk tabel `tbl_tickets`
--
ALTER TABLE `tbl_tickets`
  ADD PRIMARY KEY (`booking_code`);

--
-- Indeks untuk tabel `tbl_tourguide`
--
ALTER TABLE `tbl_tourguide`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_tourguide_tickets`
--
ALTER TABLE `tbl_tourguide_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_destinations`
--
ALTER TABLE `tbl_destinations`
  MODIFY `id_destination` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_locations`
--
ALTER TABLE `tbl_locations`
  MODIFY `id_location` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_tourguide`
--
ALTER TABLE `tbl_tourguide`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
