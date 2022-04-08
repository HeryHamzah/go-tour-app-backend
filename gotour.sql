-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 08 Apr 2022 pada 01.22
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tourguide`
--

CREATE TABLE `tbl_tourguide` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `image` text NOT NULL,
  `hp` text NOT NULL,
  `id_location` text NOT NULL,
  `balance` text NOT NULL,
  `jk` text NOT NULL,
  `cost` text NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tourguide`
--

INSERT INTO `tbl_tourguide` (`id`, `name`, `email`, `password`, `image`, `hp`, `id_location`, `balance`, `jk`, `cost`, `status`) VALUES
(1, 'Ayo Ogunseinde', 'ayo-ogunseinde@gmail.com', '123456', 'ayo-ogunseinde.jpg', '085340362050', '1', '0', 'Perempuan', '50000', 'on'),
(2, 'Ben Parker', 'ben-parker@gmail.com', '123456', 'ben-parker.jpg', '086342016888', '1', '0', 'Laki-laki', '60000', 'on'),
(3, 'Jake Nackos', 'jake-nackos@gmail.com', '123456', 'jake-nackos.jpg', '086342367998', '2', '0', 'Perempuan', '50000', 'on'),
(4, 'Jeffery Erhunse', 'jeffery-erhunse@gmail.com', '123456', 'jeffery-erhunse.jpg', '087654321234', '2', '0', 'Perempuan', '35000', 'on'),
(5, 'Joseph Gonzalez', 'joseph-gonzalez@gmail.com', '123456', 'joseph-gonzalez.jpg', '083129865700', '3', '0', 'Laki-laki', '60000', 'on'),
(6, 'Jurica Koletic', 'jurica-koletice@gmail.com', '123456', 'jurica-koletic.jpg', '087654321433', '3', '0', 'Laki-laki', '100000', 'on'),
(7, 'Matheus Ferrero', 'matheus-ferrero@gmail.com', '123456', 'matheus-ferrero.jpg', '083129125711', '4', '0', 'Perempuan', '50000', 'on'),
(8, 'Stefan Stefancik', 'stefan-stefancik@gmail.com', '123456', 'stefan-stefancik.jpg', '083129125111', '4', '0', 'Perempuan', '100000', 'on'),
(9, 'Stephanie Liverani', 'stephanie-liverani@gmail.com', '123456', 'stephanie-liverani.jpg', '083528166453', '5', '0', 'Perempuan', '45000', 'on'),
(10, 'Vicky Hladynets', 'vicky-hladynets@gmail.com', '123456', 'vicky-hladynets.jpg', '083528195555', '5', '0', 'Laki-laki', '80000', 'on'),
(11, 'Leon Tan', 'leon-tan@gmail.com', '123456', 'leon-tan.jpg', '083528195431', '6', '0', 'Perempuan', '50000', 'on'),
(12, 'Cristina', 'christina@gmail.com', '123456', 'christina.jpg', '081234538882', '6', '0', 'Perempuan', '55000', 'on');

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
