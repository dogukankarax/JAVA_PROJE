-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Nis 2020, 00:59:15
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `reservation`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Adi` varchar(25) DEFAULT NULL,
  `Soyadi` varchar(25) DEFAULT NULL,
  `Telefon` int(25) DEFAULT NULL,
  `RezTarih` varchar(25) DEFAULT NULL,
  `RezZamani` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `Adi`, `Soyadi`, `Telefon`, `RezTarih`, `RezZamani`, `Email`) VALUES
(1, 'asd', 'asd', 123, '123', '123', 'asd'),
(2, 'isim', 'Soy isim', 21034, '10.10.2019', '10.10.2995', 'mail@gmail.com'),
(3, 'isim', 'Soy isim', 21034, '10.10.2019', '10.10.2995', 'mail@gmail.com'),
(4, 'isim', 'Soy isim', 21034, '10.10.2019', '10.10.2995', 'mail@gmail.com'),
(5, 'isim', 'Soy isim', 21034, '10.10.2019', '10.10.2995', 'mail@gmail.com'),
(6, 'isim', 'Soy isim', 21034, '10.10.2019', '10.10.2995', 'mail@gmail.com'),
(7, 'aa', 'aa', 234, 'aeuia', 'uiea', 'uieaui'),
(8, 'aa', 'aa', 1234, 'auie', 'aiueaui', 'a'),
(9, 'Merhaba', 'aaa', 1234142, '10.10.1000', '10.10.3000', 'mail@gmail.com'),
(10, 'aa', 'aa', 1241234, 'aeiua', 'uiauia', 'uieaauei'),
(11, '12', '1', 12, '21', '131', '31213');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
