-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Oca 2021, 20:44:49
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `girift`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about`
--

CREATE TABLE `about` (
  `about_id` int(11) NOT NULL,
  `about_text` text COLLATE utf8_turkish_ci NOT NULL,
  `about_image` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `about`
--

INSERT INTO `about` (`about_id`, `about_text`, `about_image`) VALUES
(1, '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', 'about.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `post_author` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text COLLATE utf8_turkish_ci NOT NULL,
  `post_text` text COLLATE utf8_turkish_ci NOT NULL,
  `post_hits` int(11) NOT NULL,
  `post_subtitle` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_text`, `post_hits`, `post_subtitle`) VALUES
(1, 'C# Dili Nedir ?', 'Kemal', '2020-11-29', 'about.jpg', 'Python Programlama Dili Uzun Yıllardan beri Aramızda Bulunmaktadır Python Gerek Öğrenme Kolayligi... Açısından Gerekte Syntax Açısından Diğer Dillere Göre Biraz daha kolay ve daha çok işlevi bulunmakta.Popüler Diller Arasında Son zamanlarda Üst Seviyede Bulunan Bu dil Çoğu Yazılımcı Tarafından %80 Sevilerek Karşılanıyor. Şuan Sitesinde Güncel Sürüm Olarak 3.9 Bulunan Python İndirdiğiniz Zaman CMD komut satırınıza python -v Yazarak Hem Kurulumun başarılı mı başarısız mı olduğunu öğreniriz hemde İndirdiğimiz Sürümü Öğrenmiş Olabiliriz.', 88, 'C# Dili Birçok Alanda Kullanılan Bir Dİldir.'),
(24, 'Deneme', 'Kemal', '2020-11-30', 'üye.jpg', 'BU POST METNİDİR', 4, ' BU SUBTİTLEDİR'),
(29, 'C++', 'Ahmet', '2020-11-30', 'üye2.jpg', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"', 1, 'Bu bir subtitledır'),
(30, 'C# Dili Nedir ?', 'Kemal', '2020-11-29', 'about.jpg', 'Python Programlama Dili Uzun Yıllardan beri Aramızda Bulunmaktadır Python Gerek Öğrenme Kolayligi... Açısından Gerekte Syntax Açısından Diğer Dillere Göre Biraz daha kolay ve daha çok işlevi bulunmakta.Popüler Diller Arasında Son zamanlarda Üst Seviyede Bulunan Bu dil Çoğu Yazılımcı Tarafından %80 Sevilerek Karşılanıyor. Şuan Sitesinde Güncel Sürüm Olarak 3.9 Bulunan Python İndirdiğiniz Zaman CMD komut satırınıza python -v Yazarak Hem Kurulumun başarılı mı başarısız mı olduğunu öğreniriz hemde İndirdiğimiz Sürümü Öğrenmiş Olabiliriz.', 89, 'C# Dili Birçok Alanda Kullanılan Bir Dİldir.');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`about_id`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about`
--
ALTER TABLE `about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
