-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.4.32-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных practice
CREATE DATABASE IF NOT EXISTS `practice` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `practice`;

-- Дамп структуры для таблица practice.authors
CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` int(10) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(50) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы practice.authors: ~9 rows (приблизительно)
INSERT INTO `authors` (`author_id`, `author_name`) VALUES
	(1, 'Достоевский Фёдор Михайлович'),
	(2, 'Ремарк Эрих Мария'),
	(3, 'Фицджеральд Фрэнсис Скотт'),
	(4, 'Толстой Лев Николаевич'),
	(5, 'Пастернак Борис Леонидович'),
	(6, 'Джордж Оруэлл'),
	(7, 'Стругацкие Аркадий и Борис'),
	(8, 'Бронте Эмили'),
	(9, 'Олкотт Луиза Мэй'),
	(10, 'Моэм Сомерсет'),
	(11, 'Хейли Артур');

-- Дамп структуры для таблица practice.books
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int(10) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(50) NOT NULL DEFAULT '',
  `author_id` int(10) NOT NULL,
  `genre_id` int(10) NOT NULL,
  `book_year` varchar(4) NOT NULL DEFAULT '',
  `book_condition` int(1) NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `FK_authors` (`author_id`),
  KEY `FK_genres` (`genre_id`),
  CONSTRAINT `FK_authors` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_genres` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы practice.books: ~13 rows (приблизительно)
INSERT INTO `books` (`book_id`, `book_name`, `author_id`, `genre_id`, `book_year`, `book_condition`) VALUES
	(1, 'Преступление и наказание', 1, 1, '2019', 4),
	(2, 'Ночь в Лиссабоне', 2, 1, '2024', 5),
	(3, 'Прекрасные и обречённые', 3, 1, '2022', 5),
	(4, 'Театр', 10, 1, '2022', 5),
	(5, '1984', 6, 3, '2022', 5),
	(6, 'Жизнь взаймы', 2, 1, '2024', 5),
	(7, 'Война и мир', 4, 1, '2021', 4),
	(8, 'Маленькие женщины', 9, 1, '2023', 5),
	(9, 'Бесы', 1, 1, '2024', 5),
	(11, 'Понедельник начинается в субботу', 7, 2, '2023', 5),
	(12, 'Триумфальная арка', 2, 1, '2023', 4),
	(13, 'Ночь нежна', 3, 1, '2022', 5),
	(14, 'Грозовой перевал', 8, 1, '2023', 5),
	(15, 'Доктор Живаго', 5, 1, '2022', 3);

-- Дамп структуры для таблица practice.genres
CREATE TABLE IF NOT EXISTS `genres` (
  `genre_id` int(10) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(50) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы practice.genres: ~3 rows (приблизительно)
INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
	(1, 'Роман'),
	(2, 'Научная фантастика'),
	(3, 'Антиутопия');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
