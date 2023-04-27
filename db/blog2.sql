-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Nis 2023, 12:49:34
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aboutme`
--

CREATE TABLE `aboutme` (
  `id` int(11) NOT NULL,
  `baslik` varchar(100) NOT NULL,
  `metin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `aboutme`
--

INSERT INTO `aboutme` (`id`, `baslik`, `metin`) VALUES
(0, 'Hakkkımda Bir Şeyler', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam diam lectus, blandit quis tempus sit amet, bibendum quis odio. Integer pharetra, risus et tincidunt blandit, lacus metus aliquet ligula, in fermentum leo sem ut augue. Suspendisse venenatis ligula ac sodales fermentum. Nunc mattis tempus facilisis. Etiam scelerisque eleifend viverra. Sed sodales ante aliquet risus vulputate consequat. Donec varius ullamcorper arcu, in facilisis felis tristique at. Cras tempor diam nisi, eget scelerisque arcu euismod vel. Suspendisse potenti. Morbi accumsan gravida placerat. Aenean pharetra hendrerit sapien eget vehicula. Etiam tincidunt tincidunt elit at egestas. Duis sem turpis, ultricies ut risus id, sollicitudin sodales dui. Aliquam erat volutpat.\r\n\r\nNam vestibulum fringilla ex, id rutrum dui. Sed a venenatis urna. Donec nibh mauris, congue quis accumsan eleifend, porttitor ut nisi. Duis eget arcu nulla. Suspendisse potenti. Pellentesque consectetur metus nunc, et posuere purus gravida ut. Proin dignissim non leo id commodo. Phasellus auctor turpis eu ullamcorper consectetur. Maecenas sit amet neque in ante porttitor sodales id aliquam odio. Nulla semper nibh eu sem auctor ultricies. Mauris facilisis nulla et gravida aliquet. Ut maximus ullamcorper massa, sed cursus turpis fermentum id.\r\n\r\nQuisque nisi ligula, lobortis et lectus id, sodales pellentesque dui. Suspendisse quis libero venenatis, finibus felis in, pretium ante. Pellentesque in sagittis nisl. Mauris ac scelerisque libero. Donec purus leo, pulvinar non vulputate et, scelerisque in massa. Maecenas vitae felis ut leo pulvinar aliquet nec vitae massa. Sed ac sollicitudin diam, non euismod lorem. Nulla malesuada libero vitae tellus dapibus, in laoreet libero interdum. Fusce pulvinar efficitur nibh. Fusce porttitor imperdiet sodales. Etiam molestie, tellus eget tincidunt ultrices, eros orci tempor purus, eget egestas dui diam ac felis. Vestibulum non interdum turpis, sed tempus risus. Praesent fringilla, nisi sed venenatis congue, elit lacus molestie nulla, id convallis eros lectus a sapien. Donec vel dui lobortis, malesuada magna eu, rutrum augue. Proin venenatis iaculis nulla. Ut volutpat et nunc ut rhoncus.\r\n\r\nCras at fermentum neque, quis semper dui. Nulla facilisi. Ut at elit risus. Nam pellentesque mauris eu aliquet feugiat. Phasellus mi felis, efficitur sit amet rhoncus ut, blandit et velit. Praesent facilisis elementum risus nec consectetur. Morbi accumsan iaculis purus quis bibendum. Suspendisse pharetra, magna vitae tempus volutpat, metus eros commodo risus, et lobortis velit eros vitae nunc. Suspendisse volutpat ex quam, in mattis dui sollicitudin vel. In ut malesuada neque. Integer augue orci, vulputate at augue non, fringilla rhoncus libero. Fusce a massa maximus, bibendum magna a, sollicitudin metus. Quisque malesuada vel tortor in bibendum. Sed ornare ligula vitae ultrices commodo. Curabitur vitae dui sit amet neque aliquet auctor.\r\n\r\nQuisque congue accumsan mollis. Nulla efficitur massa est, vitae egestas ipsum rutrum vitae. Quisque nibh sapien, elementum nec congue vel, semper ut mi. Sed arcu tortor, imperdiet non venenatis a, consectetur at magna. Nam quis lacus diam. Vestibulum id tempus ipsum. Nunc venenatis mi quis leo venenatis bibendum. Mauris vulputate erat eu tortor pretium congue.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `id` int(11) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `baslik` varchar(100) NOT NULL,
  `aciklama` text NOT NULL,
  `anahtarkelime` varchar(200) NOT NULL,
  `yazar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`id`, `logo`, `url`, `baslik`, `aciklama`, `anahtarkelime`, `yazar`) VALUES
(0, '/logo.png', 'localhost', 'Hakan PAPUCCU', 'Kişisel blog denemem', 'blog, site', 'Hakan PAPUCCU');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `kategori_id` int(11) NOT NULL,
  `ad` varchar(30) NOT NULL,
  `detay` varchar(150) NOT NULL,
  `sira` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`kategori_id`, `ad`, `detay`, `sira`) VALUES
(1, 'Genel', 'Genel olarak her türlü yazının kaydedilebileceği kategoridir.', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `smtphost` varchar(30) NOT NULL,
  `smtpuser` varchar(250) NOT NULL,
  `smtppassword` varchar(200) NOT NULL,
  `smtpport` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mail`
--

INSERT INTO `mail` (`id`, `smtphost`, `smtpuser`, `smtppassword`, `smtpport`) VALUES
(0, 'localhost', 'iletisim@localhost', '25d55ad283aa400af464c76d713c07ad', 587);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `ad` varchar(20) NOT NULL,
  `link` varchar(250) NOT NULL,
  `sira` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`id`, `ad`, `link`, `sira`) VALUES
(1, 'Anasayfa', '#', 1),
(2, 'Yazılar', '#', 2),
(3, 'Hakkımda', '#', 3),
(4, 'İletişim', '#', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(50) NOT NULL,
  `icerik` text NOT NULL,
  `durum` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `baslik`, `icerik`, `durum`) VALUES
(1, 'Deneme', '<p>Deneme ama&ccedil;lı sayfa</p>\r\n', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sosyal`
--

CREATE TABLE `sosyal` (
  `id` int(11) NOT NULL,
  `ad` varchar(20) NOT NULL,
  `link` varchar(250) NOT NULL,
  `ikon` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sosyal`
--

INSERT INTO `sosyal` (`id`, `ad`, `link`, `ikon`) VALUES
(0, 'Facebook', '#', 'facebook.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `zaman` date NOT NULL DEFAULT current_timestamp(),
  `kulladi` varchar(30) NOT NULL,
  `kullpass` varchar(100) NOT NULL,
  `adsoyad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `zaman`, `kulladi`, `kullpass`, `adsoyad`) VALUES
(1, '2023-04-27', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Hakan');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazilar`
--

CREATE TABLE `yazilar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(150) NOT NULL,
  `icerik` text NOT NULL,
  `etiket` varchar(200) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `resim` varchar(250) NOT NULL,
  `tarih` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yazilar`
--

INSERT INTO `yazilar` (`id`, `baslik`, `icerik`, `etiket`, `kategori`, `resim`, `tarih`) VALUES
(1, 'İlk Yazı', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam diam lectus, blandit quis tempus sit amet, bibendum quis odio. Integer pharetra, risus et tincidunt blandit, lacus metus aliquet ligula, in fermentum leo sem ut augue. Suspendisse venenatis ligula ac sodales fermentum. Nunc mattis tempus facilisis. Etiam scelerisque eleifend viverra. Sed sodales ante aliquet risus vulputate consequat. Donec varius ullamcorper arcu, in facilisis felis tristique at. Cras tempor diam nisi, eget scelerisque arcu euismod vel. Suspendisse potenti. Morbi accumsan gravida placerat. Aenean pharetra hendrerit sapien eget vehicula. Etiam tincidunt tincidunt elit at egestas. Duis sem turpis, ultricies ut risus id, sollicitudin sodales dui. Aliquam erat volutpat.</p>\r\n\r\n<p>Nam vestibulum fringilla ex, id rutrum dui. Sed a venenatis urna. Donec nibh mauris, congue quis accumsan eleifend, porttitor ut nisi. Duis eget arcu nulla. Suspendisse potenti. Pellentesque consectetur metus nunc, et posuere purus gravida ut. Proin dignissim non leo id commodo. Phasellus auctor turpis eu ullamcorper consectetur. Maecenas sit amet neque in ante porttitor sodales id aliquam odio. Nulla semper nibh eu sem auctor ultricies. Mauris facilisis nulla et gravida aliquet. Ut maximus ullamcorper massa, sed cursus turpis fermentum id.</p>\r\n\r\n<p>Quisque nisi ligula, lobortis et lectus id, sodales pellentesque dui. Suspendisse quis libero venenatis, finibus felis in, pretium ante. Pellentesque in sagittis nisl. Mauris ac scelerisque libero. Donec purus leo, pulvinar non vulputate et, scelerisque in massa. Maecenas vitae felis ut leo pulvinar aliquet nec vitae massa. Sed ac sollicitudin diam, non euismod lorem. Nulla malesuada libero vitae tellus dapibus, in laoreet libero interdum. Fusce pulvinar efficitur nibh. Fusce porttitor imperdiet sodales. Etiam molestie, tellus eget tincidunt ultrices, eros orci tempor purus, eget egestas dui diam ac felis. Vestibulum non interdum turpis, sed tempus risus. Praesent fringilla, nisi sed venenatis congue, elit lacus molestie nulla, id convallis eros lectus a sapien. Donec vel dui lobortis, malesuada magna eu, rutrum augue. Proin venenatis iaculis nulla. Ut volutpat et nunc ut rhoncus.</p>\r\n\r\n<p>Cras at fermentum neque, quis semper dui. Nulla facilisi. Ut at elit risus. Nam pellentesque mauris eu aliquet feugiat. Phasellus mi felis, efficitur sit amet rhoncus ut, blandit et velit. Praesent facilisis elementum risus nec consectetur. Morbi accumsan iaculis purus quis bibendum. Suspendisse pharetra, magna vitae tempus volutpat, metus eros commodo risus, et lobortis velit eros vitae nunc. Suspendisse volutpat ex quam, in mattis dui sollicitudin vel. In ut malesuada neque. Integer augue orci, vulputate at augue non, fringilla rhoncus libero. Fusce a massa maximus, bibendum magna a, sollicitudin metus. Quisque malesuada vel tortor in bibendum. Sed ornare ligula vitae ultrices commodo. Curabitur vitae dui sit amet neque aliquet auctor.</p>\r\n\r\n<p>Quisque congue accumsan mollis. Nulla efficitur massa est, vitae egestas ipsum rutrum vitae. Quisque nibh sapien, elementum nec congue vel, semper ut mi. Sed arcu tortor, imperdiet non venenatis a, consectetur at magna. Nam quis lacus diam. Vestibulum id tempus ipsum. Nunc venenatis mi quis leo venenatis bibendum. Mauris vulputate erat eu tortor pretium congue.</p>\r\n', 'ilk, ilk yazı', '1', '23671311913031924066color.png', '2023-04-27'),
(2, 'İkinci Yazı', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam diam lectus, blandit quis tempus sit amet, bibendum quis odio. Integer pharetra, risus et tincidunt blandit, lacus metus aliquet ligula, in fermentum leo sem ut augue. Suspendisse venenatis ligula ac sodales fermentum. Nunc mattis tempus facilisis. Etiam scelerisque eleifend viverra. Sed sodales ante aliquet risus vulputate consequat. Donec varius ullamcorper arcu, in facilisis felis tristique at. Cras tempor diam nisi, eget scelerisque arcu euismod vel. Suspendisse potenti. Morbi accumsan gravida placerat. Aenean pharetra hendrerit sapien eget vehicula. Etiam tincidunt tincidunt elit at egestas. Duis sem turpis, ultricies ut risus id, sollicitudin sodales dui. Aliquam erat volutpat.</p>\r\n\r\n<p>Nam vestibulum fringilla ex, id rutrum dui. Sed a venenatis urna. Donec nibh mauris, congue quis accumsan eleifend, porttitor ut nisi. Duis eget arcu nulla. Suspendisse potenti. Pellentesque consectetur metus nunc, et posuere purus gravida ut. Proin dignissim non leo id commodo. Phasellus auctor turpis eu ullamcorper consectetur. Maecenas sit amet neque in ante porttitor sodales id aliquam odio. Nulla semper nibh eu sem auctor ultricies. Mauris facilisis nulla et gravida aliquet. Ut maximus ullamcorper massa, sed cursus turpis fermentum id.</p>\r\n\r\n<p>Quisque nisi ligula, lobortis et lectus id, sodales pellentesque dui. Suspendisse quis libero venenatis, finibus felis in, pretium ante. Pellentesque in sagittis nisl. Mauris ac scelerisque libero. Donec purus leo, pulvinar non vulputate et, scelerisque in massa. Maecenas vitae felis ut leo pulvinar aliquet nec vitae massa. Sed ac sollicitudin diam, non euismod lorem. Nulla malesuada libero vitae tellus dapibus, in laoreet libero interdum. Fusce pulvinar efficitur nibh. Fusce porttitor imperdiet sodales. Etiam molestie, tellus eget tincidunt ultrices, eros orci tempor purus, eget egestas dui diam ac felis. Vestibulum non interdum turpis, sed tempus risus. Praesent fringilla, nisi sed venenatis congue, elit lacus molestie nulla, id convallis eros lectus a sapien. Donec vel dui lobortis, malesuada magna eu, rutrum augue. Proin venenatis iaculis nulla. Ut volutpat et nunc ut rhoncus.</p>\r\n\r\n<p>Cras at fermentum neque, quis semper dui. Nulla facilisi. Ut at elit risus. Nam pellentesque mauris eu aliquet feugiat. Phasellus mi felis, efficitur sit amet rhoncus ut, blandit et velit. Praesent facilisis elementum risus nec consectetur. Morbi accumsan iaculis purus quis bibendum. Suspendisse pharetra, magna vitae tempus volutpat, metus eros commodo risus, et lobortis velit eros vitae nunc. Suspendisse volutpat ex quam, in mattis dui sollicitudin vel. In ut malesuada neque. Integer augue orci, vulputate at augue non, fringilla rhoncus libero. Fusce a massa maximus, bibendum magna a, sollicitudin metus. Quisque malesuada vel tortor in bibendum. Sed ornare ligula vitae ultrices commodo. Curabitur vitae dui sit amet neque aliquet auctor.</p>\r\n\r\n<p>Quisque congue accumsan mollis. Nulla efficitur massa est, vitae egestas ipsum rutrum vitae. Quisque nibh sapien, elementum nec congue vel, semper ut mi. Sed arcu tortor, imperdiet non venenatis a, consectetur at magna. Nam quis lacus diam. Vestibulum id tempus ipsum. Nunc venenatis mi quis leo venenatis bibendum. Mauris vulputate erat eu tortor pretium congue.</p>\r\n', 'yazı 2', '1', '2361827995312012034224285318002274923763mac.jpg', '2023-04-27'),
(3, 'Üçüncü Yazı', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam diam lectus, blandit quis tempus sit amet, bibendum quis odio. Integer pharetra, risus et tincidunt blandit, lacus metus aliquet ligula, in fermentum leo sem ut augue. Suspendisse venenatis ligula ac sodales fermentum. Nunc mattis tempus facilisis. Etiam scelerisque eleifend viverra. Sed sodales ante aliquet risus vulputate consequat. Donec varius ullamcorper arcu, in facilisis felis tristique at. Cras tempor diam nisi, eget scelerisque arcu euismod vel. Suspendisse potenti. Morbi accumsan gravida placerat. Aenean pharetra hendrerit sapien eget vehicula. Etiam tincidunt tincidunt elit at egestas. Duis sem turpis, ultricies ut risus id, sollicitudin sodales dui. Aliquam erat volutpat.</p>\r\n\r\n<p>Nam vestibulum fringilla ex, id rutrum dui. Sed a venenatis urna. Donec nibh mauris, congue quis accumsan eleifend, porttitor ut nisi. Duis eget arcu nulla. Suspendisse potenti. Pellentesque consectetur metus nunc, et posuere purus gravida ut. Proin dignissim non leo id commodo. Phasellus auctor turpis eu ullamcorper consectetur. Maecenas sit amet neque in ante porttitor sodales id aliquam odio. Nulla semper nibh eu sem auctor ultricies. Mauris facilisis nulla et gravida aliquet. Ut maximus ullamcorper massa, sed cursus turpis fermentum id.</p>\r\n\r\n<p>Quisque nisi ligula, lobortis et lectus id, sodales pellentesque dui. Suspendisse quis libero venenatis, finibus felis in, pretium ante. Pellentesque in sagittis nisl. Mauris ac scelerisque libero. Donec purus leo, pulvinar non vulputate et, scelerisque in massa. Maecenas vitae felis ut leo pulvinar aliquet nec vitae massa. Sed ac sollicitudin diam, non euismod lorem. Nulla malesuada libero vitae tellus dapibus, in laoreet libero interdum. Fusce pulvinar efficitur nibh. Fusce porttitor imperdiet sodales. Etiam molestie, tellus eget tincidunt ultrices, eros orci tempor purus, eget egestas dui diam ac felis. Vestibulum non interdum turpis, sed tempus risus. Praesent fringilla, nisi sed venenatis congue, elit lacus molestie nulla, id convallis eros lectus a sapien. Donec vel dui lobortis, malesuada magna eu, rutrum augue. Proin venenatis iaculis nulla. Ut volutpat et nunc ut rhoncus.</p>\r\n\r\n<p>Cras at fermentum neque, quis semper dui. Nulla facilisi. Ut at elit risus. Nam pellentesque mauris eu aliquet feugiat. Phasellus mi felis, efficitur sit amet rhoncus ut, blandit et velit. Praesent facilisis elementum risus nec consectetur. Morbi accumsan iaculis purus quis bibendum. Suspendisse pharetra, magna vitae tempus volutpat, metus eros commodo risus, et lobortis velit eros vitae nunc. Suspendisse volutpat ex quam, in mattis dui sollicitudin vel. In ut malesuada neque. Integer augue orci, vulputate at augue non, fringilla rhoncus libero. Fusce a massa maximus, bibendum magna a, sollicitudin metus. Quisque malesuada vel tortor in bibendum. Sed ornare ligula vitae ultrices commodo. Curabitur vitae dui sit amet neque aliquet auctor.</p>\r\n\r\n<p>Quisque congue accumsan mollis. Nulla efficitur massa est, vitae egestas ipsum rutrum vitae. Quisque nibh sapien, elementum nec congue vel, semper ut mi. Sed arcu tortor, imperdiet non venenatis a, consectetur at magna. Nam quis lacus diam. Vestibulum id tempus ipsum. Nunc venenatis mi quis leo venenatis bibendum. Mauris vulputate erat eu tortor pretium congue.</p>\r\n', 'ilk, ilk yazı', '1', '23671311913031924066color.png', '2023-04-27'),
(4, 'DördüncüYazı', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam diam lectus, blandit quis tempus sit amet, bibendum quis odio. Integer pharetra, risus et tincidunt blandit, lacus metus aliquet ligula, in fermentum leo sem ut augue. Suspendisse venenatis ligula ac sodales fermentum. Nunc mattis tempus facilisis. Etiam scelerisque eleifend viverra. Sed sodales ante aliquet risus vulputate consequat. Donec varius ullamcorper arcu, in facilisis felis tristique at. Cras tempor diam nisi, eget scelerisque arcu euismod vel. Suspendisse potenti. Morbi accumsan gravida placerat. Aenean pharetra hendrerit sapien eget vehicula. Etiam tincidunt tincidunt elit at egestas. Duis sem turpis, ultricies ut risus id, sollicitudin sodales dui. Aliquam erat volutpat.</p>\r\n\r\n<p>Nam vestibulum fringilla ex, id rutrum dui. Sed a venenatis urna. Donec nibh mauris, congue quis accumsan eleifend, porttitor ut nisi. Duis eget arcu nulla. Suspendisse potenti. Pellentesque consectetur metus nunc, et posuere purus gravida ut. Proin dignissim non leo id commodo. Phasellus auctor turpis eu ullamcorper consectetur. Maecenas sit amet neque in ante porttitor sodales id aliquam odio. Nulla semper nibh eu sem auctor ultricies. Mauris facilisis nulla et gravida aliquet. Ut maximus ullamcorper massa, sed cursus turpis fermentum id.</p>\r\n\r\n<p>Quisque nisi ligula, lobortis et lectus id, sodales pellentesque dui. Suspendisse quis libero venenatis, finibus felis in, pretium ante. Pellentesque in sagittis nisl. Mauris ac scelerisque libero. Donec purus leo, pulvinar non vulputate et, scelerisque in massa. Maecenas vitae felis ut leo pulvinar aliquet nec vitae massa. Sed ac sollicitudin diam, non euismod lorem. Nulla malesuada libero vitae tellus dapibus, in laoreet libero interdum. Fusce pulvinar efficitur nibh. Fusce porttitor imperdiet sodales. Etiam molestie, tellus eget tincidunt ultrices, eros orci tempor purus, eget egestas dui diam ac felis. Vestibulum non interdum turpis, sed tempus risus. Praesent fringilla, nisi sed venenatis congue, elit lacus molestie nulla, id convallis eros lectus a sapien. Donec vel dui lobortis, malesuada magna eu, rutrum augue. Proin venenatis iaculis nulla. Ut volutpat et nunc ut rhoncus.</p>\r\n\r\n<p>Cras at fermentum neque, quis semper dui. Nulla facilisi. Ut at elit risus. Nam pellentesque mauris eu aliquet feugiat. Phasellus mi felis, efficitur sit amet rhoncus ut, blandit et velit. Praesent facilisis elementum risus nec consectetur. Morbi accumsan iaculis purus quis bibendum. Suspendisse pharetra, magna vitae tempus volutpat, metus eros commodo risus, et lobortis velit eros vitae nunc. Suspendisse volutpat ex quam, in mattis dui sollicitudin vel. In ut malesuada neque. Integer augue orci, vulputate at augue non, fringilla rhoncus libero. Fusce a massa maximus, bibendum magna a, sollicitudin metus. Quisque malesuada vel tortor in bibendum. Sed ornare ligula vitae ultrices commodo. Curabitur vitae dui sit amet neque aliquet auctor.</p>\r\n\r\n<p>Quisque congue accumsan mollis. Nulla efficitur massa est, vitae egestas ipsum rutrum vitae. Quisque nibh sapien, elementum nec congue vel, semper ut mi. Sed arcu tortor, imperdiet non venenatis a, consectetur at magna. Nam quis lacus diam. Vestibulum id tempus ipsum. Nunc venenatis mi quis leo venenatis bibendum. Mauris vulputate erat eu tortor pretium congue.</p>\r\n', 'yazı 2', '1', '2361827995312012034224285318002274923763mac.jpg', '2023-04-27'),
(5, 'BeşinciYazı', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam diam lectus, blandit quis tempus sit amet, bibendum quis odio. Integer pharetra, risus et tincidunt blandit, lacus metus aliquet ligula, in fermentum leo sem ut augue. Suspendisse venenatis ligula ac sodales fermentum. Nunc mattis tempus facilisis. Etiam scelerisque eleifend viverra. Sed sodales ante aliquet risus vulputate consequat. Donec varius ullamcorper arcu, in facilisis felis tristique at. Cras tempor diam nisi, eget scelerisque arcu euismod vel. Suspendisse potenti. Morbi accumsan gravida placerat. Aenean pharetra hendrerit sapien eget vehicula. Etiam tincidunt tincidunt elit at egestas. Duis sem turpis, ultricies ut risus id, sollicitudin sodales dui. Aliquam erat volutpat.</p>\r\n\r\n<p>Nam vestibulum fringilla ex, id rutrum dui. Sed a venenatis urna. Donec nibh mauris, congue quis accumsan eleifend, porttitor ut nisi. Duis eget arcu nulla. Suspendisse potenti. Pellentesque consectetur metus nunc, et posuere purus gravida ut. Proin dignissim non leo id commodo. Phasellus auctor turpis eu ullamcorper consectetur. Maecenas sit amet neque in ante porttitor sodales id aliquam odio. Nulla semper nibh eu sem auctor ultricies. Mauris facilisis nulla et gravida aliquet. Ut maximus ullamcorper massa, sed cursus turpis fermentum id.</p>\r\n\r\n<p>Quisque nisi ligula, lobortis et lectus id, sodales pellentesque dui. Suspendisse quis libero venenatis, finibus felis in, pretium ante. Pellentesque in sagittis nisl. Mauris ac scelerisque libero. Donec purus leo, pulvinar non vulputate et, scelerisque in massa. Maecenas vitae felis ut leo pulvinar aliquet nec vitae massa. Sed ac sollicitudin diam, non euismod lorem. Nulla malesuada libero vitae tellus dapibus, in laoreet libero interdum. Fusce pulvinar efficitur nibh. Fusce porttitor imperdiet sodales. Etiam molestie, tellus eget tincidunt ultrices, eros orci tempor purus, eget egestas dui diam ac felis. Vestibulum non interdum turpis, sed tempus risus. Praesent fringilla, nisi sed venenatis congue, elit lacus molestie nulla, id convallis eros lectus a sapien. Donec vel dui lobortis, malesuada magna eu, rutrum augue. Proin venenatis iaculis nulla. Ut volutpat et nunc ut rhoncus.</p>\r\n\r\n<p>Cras at fermentum neque, quis semper dui. Nulla facilisi. Ut at elit risus. Nam pellentesque mauris eu aliquet feugiat. Phasellus mi felis, efficitur sit amet rhoncus ut, blandit et velit. Praesent facilisis elementum risus nec consectetur. Morbi accumsan iaculis purus quis bibendum. Suspendisse pharetra, magna vitae tempus volutpat, metus eros commodo risus, et lobortis velit eros vitae nunc. Suspendisse volutpat ex quam, in mattis dui sollicitudin vel. In ut malesuada neque. Integer augue orci, vulputate at augue non, fringilla rhoncus libero. Fusce a massa maximus, bibendum magna a, sollicitudin metus. Quisque malesuada vel tortor in bibendum. Sed ornare ligula vitae ultrices commodo. Curabitur vitae dui sit amet neque aliquet auctor.</p>\r\n\r\n<p>Quisque congue accumsan mollis. Nulla efficitur massa est, vitae egestas ipsum rutrum vitae. Quisque nibh sapien, elementum nec congue vel, semper ut mi. Sed arcu tortor, imperdiet non venenatis a, consectetur at magna. Nam quis lacus diam. Vestibulum id tempus ipsum. Nunc venenatis mi quis leo venenatis bibendum. Mauris vulputate erat eu tortor pretium congue.</p>\r\n', 'ilk, ilk yazı', '1', '23671311913031924066color.png', '2023-04-27'),
(6, 'AltıncıYazı', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam diam lectus, blandit quis tempus sit amet, bibendum quis odio. Integer pharetra, risus et tincidunt blandit, lacus metus aliquet ligula, in fermentum leo sem ut augue. Suspendisse venenatis ligula ac sodales fermentum. Nunc mattis tempus facilisis. Etiam scelerisque eleifend viverra. Sed sodales ante aliquet risus vulputate consequat. Donec varius ullamcorper arcu, in facilisis felis tristique at. Cras tempor diam nisi, eget scelerisque arcu euismod vel. Suspendisse potenti. Morbi accumsan gravida placerat. Aenean pharetra hendrerit sapien eget vehicula. Etiam tincidunt tincidunt elit at egestas. Duis sem turpis, ultricies ut risus id, sollicitudin sodales dui. Aliquam erat volutpat.</p>\r\n\r\n<p>Nam vestibulum fringilla ex, id rutrum dui. Sed a venenatis urna. Donec nibh mauris, congue quis accumsan eleifend, porttitor ut nisi. Duis eget arcu nulla. Suspendisse potenti. Pellentesque consectetur metus nunc, et posuere purus gravida ut. Proin dignissim non leo id commodo. Phasellus auctor turpis eu ullamcorper consectetur. Maecenas sit amet neque in ante porttitor sodales id aliquam odio. Nulla semper nibh eu sem auctor ultricies. Mauris facilisis nulla et gravida aliquet. Ut maximus ullamcorper massa, sed cursus turpis fermentum id.</p>\r\n\r\n<p>Quisque nisi ligula, lobortis et lectus id, sodales pellentesque dui. Suspendisse quis libero venenatis, finibus felis in, pretium ante. Pellentesque in sagittis nisl. Mauris ac scelerisque libero. Donec purus leo, pulvinar non vulputate et, scelerisque in massa. Maecenas vitae felis ut leo pulvinar aliquet nec vitae massa. Sed ac sollicitudin diam, non euismod lorem. Nulla malesuada libero vitae tellus dapibus, in laoreet libero interdum. Fusce pulvinar efficitur nibh. Fusce porttitor imperdiet sodales. Etiam molestie, tellus eget tincidunt ultrices, eros orci tempor purus, eget egestas dui diam ac felis. Vestibulum non interdum turpis, sed tempus risus. Praesent fringilla, nisi sed venenatis congue, elit lacus molestie nulla, id convallis eros lectus a sapien. Donec vel dui lobortis, malesuada magna eu, rutrum augue. Proin venenatis iaculis nulla. Ut volutpat et nunc ut rhoncus.</p>\r\n\r\n<p>Cras at fermentum neque, quis semper dui. Nulla facilisi. Ut at elit risus. Nam pellentesque mauris eu aliquet feugiat. Phasellus mi felis, efficitur sit amet rhoncus ut, blandit et velit. Praesent facilisis elementum risus nec consectetur. Morbi accumsan iaculis purus quis bibendum. Suspendisse pharetra, magna vitae tempus volutpat, metus eros commodo risus, et lobortis velit eros vitae nunc. Suspendisse volutpat ex quam, in mattis dui sollicitudin vel. In ut malesuada neque. Integer augue orci, vulputate at augue non, fringilla rhoncus libero. Fusce a massa maximus, bibendum magna a, sollicitudin metus. Quisque malesuada vel tortor in bibendum. Sed ornare ligula vitae ultrices commodo. Curabitur vitae dui sit amet neque aliquet auctor.</p>\r\n\r\n<p>Quisque congue accumsan mollis. Nulla efficitur massa est, vitae egestas ipsum rutrum vitae. Quisque nibh sapien, elementum nec congue vel, semper ut mi. Sed arcu tortor, imperdiet non venenatis a, consectetur at magna. Nam quis lacus diam. Vestibulum id tempus ipsum. Nunc venenatis mi quis leo venenatis bibendum. Mauris vulputate erat eu tortor pretium congue.</p>\r\n', 'yazı 2', '1', '2361827995312012034224285318002274923763mac.jpg', '2023-04-27'),
(7, 'YedinciYazı', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam diam lectus, blandit quis tempus sit amet, bibendum quis odio. Integer pharetra, risus et tincidunt blandit, lacus metus aliquet ligula, in fermentum leo sem ut augue. Suspendisse venenatis ligula ac sodales fermentum. Nunc mattis tempus facilisis. Etiam scelerisque eleifend viverra. Sed sodales ante aliquet risus vulputate consequat. Donec varius ullamcorper arcu, in facilisis felis tristique at. Cras tempor diam nisi, eget scelerisque arcu euismod vel. Suspendisse potenti. Morbi accumsan gravida placerat. Aenean pharetra hendrerit sapien eget vehicula. Etiam tincidunt tincidunt elit at egestas. Duis sem turpis, ultricies ut risus id, sollicitudin sodales dui. Aliquam erat volutpat.</p>\r\n\r\n<p>Nam vestibulum fringilla ex, id rutrum dui. Sed a venenatis urna. Donec nibh mauris, congue quis accumsan eleifend, porttitor ut nisi. Duis eget arcu nulla. Suspendisse potenti. Pellentesque consectetur metus nunc, et posuere purus gravida ut. Proin dignissim non leo id commodo. Phasellus auctor turpis eu ullamcorper consectetur. Maecenas sit amet neque in ante porttitor sodales id aliquam odio. Nulla semper nibh eu sem auctor ultricies. Mauris facilisis nulla et gravida aliquet. Ut maximus ullamcorper massa, sed cursus turpis fermentum id.</p>\r\n\r\n<p>Quisque nisi ligula, lobortis et lectus id, sodales pellentesque dui. Suspendisse quis libero venenatis, finibus felis in, pretium ante. Pellentesque in sagittis nisl. Mauris ac scelerisque libero. Donec purus leo, pulvinar non vulputate et, scelerisque in massa. Maecenas vitae felis ut leo pulvinar aliquet nec vitae massa. Sed ac sollicitudin diam, non euismod lorem. Nulla malesuada libero vitae tellus dapibus, in laoreet libero interdum. Fusce pulvinar efficitur nibh. Fusce porttitor imperdiet sodales. Etiam molestie, tellus eget tincidunt ultrices, eros orci tempor purus, eget egestas dui diam ac felis. Vestibulum non interdum turpis, sed tempus risus. Praesent fringilla, nisi sed venenatis congue, elit lacus molestie nulla, id convallis eros lectus a sapien. Donec vel dui lobortis, malesuada magna eu, rutrum augue. Proin venenatis iaculis nulla. Ut volutpat et nunc ut rhoncus.</p>\r\n\r\n<p>Cras at fermentum neque, quis semper dui. Nulla facilisi. Ut at elit risus. Nam pellentesque mauris eu aliquet feugiat. Phasellus mi felis, efficitur sit amet rhoncus ut, blandit et velit. Praesent facilisis elementum risus nec consectetur. Morbi accumsan iaculis purus quis bibendum. Suspendisse pharetra, magna vitae tempus volutpat, metus eros commodo risus, et lobortis velit eros vitae nunc. Suspendisse volutpat ex quam, in mattis dui sollicitudin vel. In ut malesuada neque. Integer augue orci, vulputate at augue non, fringilla rhoncus libero. Fusce a massa maximus, bibendum magna a, sollicitudin metus. Quisque malesuada vel tortor in bibendum. Sed ornare ligula vitae ultrices commodo. Curabitur vitae dui sit amet neque aliquet auctor.</p>\r\n\r\n<p>Quisque congue accumsan mollis. Nulla efficitur massa est, vitae egestas ipsum rutrum vitae. Quisque nibh sapien, elementum nec congue vel, semper ut mi. Sed arcu tortor, imperdiet non venenatis a, consectetur at magna. Nam quis lacus diam. Vestibulum id tempus ipsum. Nunc venenatis mi quis leo venenatis bibendum. Mauris vulputate erat eu tortor pretium congue.</p>\r\n', 'ilk, ilk yazı', '1', '23671311913031924066color.png', '2023-04-27'),
(8, 'Sekizinci Yazı', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam diam lectus, blandit quis tempus sit amet, bibendum quis odio. Integer pharetra, risus et tincidunt blandit, lacus metus aliquet ligula, in fermentum leo sem ut augue. Suspendisse venenatis ligula ac sodales fermentum. Nunc mattis tempus facilisis. Etiam scelerisque eleifend viverra. Sed sodales ante aliquet risus vulputate consequat. Donec varius ullamcorper arcu, in facilisis felis tristique at. Cras tempor diam nisi, eget scelerisque arcu euismod vel. Suspendisse potenti. Morbi accumsan gravida placerat. Aenean pharetra hendrerit sapien eget vehicula. Etiam tincidunt tincidunt elit at egestas. Duis sem turpis, ultricies ut risus id, sollicitudin sodales dui. Aliquam erat volutpat.</p>\r\n\r\n<p>Nam vestibulum fringilla ex, id rutrum dui. Sed a venenatis urna. Donec nibh mauris, congue quis accumsan eleifend, porttitor ut nisi. Duis eget arcu nulla. Suspendisse potenti. Pellentesque consectetur metus nunc, et posuere purus gravida ut. Proin dignissim non leo id commodo. Phasellus auctor turpis eu ullamcorper consectetur. Maecenas sit amet neque in ante porttitor sodales id aliquam odio. Nulla semper nibh eu sem auctor ultricies. Mauris facilisis nulla et gravida aliquet. Ut maximus ullamcorper massa, sed cursus turpis fermentum id.</p>\r\n\r\n<p>Quisque nisi ligula, lobortis et lectus id, sodales pellentesque dui. Suspendisse quis libero venenatis, finibus felis in, pretium ante. Pellentesque in sagittis nisl. Mauris ac scelerisque libero. Donec purus leo, pulvinar non vulputate et, scelerisque in massa. Maecenas vitae felis ut leo pulvinar aliquet nec vitae massa. Sed ac sollicitudin diam, non euismod lorem. Nulla malesuada libero vitae tellus dapibus, in laoreet libero interdum. Fusce pulvinar efficitur nibh. Fusce porttitor imperdiet sodales. Etiam molestie, tellus eget tincidunt ultrices, eros orci tempor purus, eget egestas dui diam ac felis. Vestibulum non interdum turpis, sed tempus risus. Praesent fringilla, nisi sed venenatis congue, elit lacus molestie nulla, id convallis eros lectus a sapien. Donec vel dui lobortis, malesuada magna eu, rutrum augue. Proin venenatis iaculis nulla. Ut volutpat et nunc ut rhoncus.</p>\r\n\r\n<p>Cras at fermentum neque, quis semper dui. Nulla facilisi. Ut at elit risus. Nam pellentesque mauris eu aliquet feugiat. Phasellus mi felis, efficitur sit amet rhoncus ut, blandit et velit. Praesent facilisis elementum risus nec consectetur. Morbi accumsan iaculis purus quis bibendum. Suspendisse pharetra, magna vitae tempus volutpat, metus eros commodo risus, et lobortis velit eros vitae nunc. Suspendisse volutpat ex quam, in mattis dui sollicitudin vel. In ut malesuada neque. Integer augue orci, vulputate at augue non, fringilla rhoncus libero. Fusce a massa maximus, bibendum magna a, sollicitudin metus. Quisque malesuada vel tortor in bibendum. Sed ornare ligula vitae ultrices commodo. Curabitur vitae dui sit amet neque aliquet auctor.</p>\r\n\r\n<p>Quisque congue accumsan mollis. Nulla efficitur massa est, vitae egestas ipsum rutrum vitae. Quisque nibh sapien, elementum nec congue vel, semper ut mi. Sed arcu tortor, imperdiet non venenatis a, consectetur at magna. Nam quis lacus diam. Vestibulum id tempus ipsum. Nunc venenatis mi quis leo venenatis bibendum. Mauris vulputate erat eu tortor pretium congue.</p>\r\n', 'yazı 2', '1', '2361827995312012034224285318002274923763mac.jpg', '2023-04-27');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `aboutme`
--
ALTER TABLE `aboutme`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yazilar`
--
ALTER TABLE `yazilar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yazilar`
--
ALTER TABLE `yazilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
