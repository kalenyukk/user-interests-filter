-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.1.22-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных kalenyuk-mysql-task-db
CREATE DATABASE IF NOT EXISTS `kalenyuk-mysql-task-db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kalenyuk-mysql-task-db`;

-- Дамп структуры для таблица kalenyuk-mysql-task-db.interests
CREATE TABLE IF NOT EXISTS `interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kalenyuk-mysql-task-db.interests: ~7 rows (приблизительно)
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'programming', NULL, NULL),
	(2, 'sports', NULL, NULL),
	(3, 'computers', NULL, NULL),
	(4, 'gaming', NULL, NULL),
	(5, 'music', NULL, NULL),
	(6, 'driving', NULL, NULL),
	(7, 'alcohol', NULL, NULL);
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;

-- Дамп структуры для таблица kalenyuk-mysql-task-db.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__users` (`user_id`),
  CONSTRAINT `FK__users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kalenyuk-mysql-task-db.posts: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `body`, `user_id`) VALUES
	(1, 'post 11', 1),
	(2, 'post 12', 1),
	(3, 'post 21', 2),
	(4, 'post 22', 2);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Дамп структуры для таблица kalenyuk-mysql-task-db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `birth_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kalenyuk-mysql-task-db.users: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `birth_date`, `created_at`, `updated_at`) VALUES
	(1, 'boroda', 'korobko', 'boroda@example.com', '1999-12-24 19:23:59', '2015-12-20 12:00:00', NULL),
	(2, 'kate', 'ivasishina', 'kate@example.com', '2000-12-24 19:24:07', '2016-12-20 12:00:00', NULL),
	(3, 'vladislav', 'sidorov', 'sidorov@example.com', '2001-12-24 19:24:12', '2017-12-20 12:00:00', NULL),
	(4, 'vasya', 'pupkin', 'pupkin@example.com', '2002-12-24 19:24:16', '2015-12-20 12:00:00', NULL),
	(5, 'vlad', 'chernysh', 'chernysh@example.com', '1999-12-24 19:23:59', '2016-12-20 12:00:00', NULL),
	(6, 'picachu', 'pokemon', 'pikapika@example.com', '2000-12-24 19:24:07', '2017-12-20 12:00:00', NULL),
	(7, 'darth', 'vader', 'vader@empire.com', '2001-12-24 19:24:12', '2015-12-20 12:00:00', NULL),
	(8, 'vladik', 'ololoev', 'ololo@example.com', '2002-12-24 19:24:16', '2016-12-20 12:00:00', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Дамп структуры для таблица kalenyuk-mysql-task-db.user_interests
CREATE TABLE IF NOT EXISTS `user_interests` (
  `user_id` int(11) NOT NULL,
  `interest_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `interests_id` (`interest_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kalenyuk-mysql-task-db.user_interests: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `user_interests` DISABLE KEYS */;
INSERT INTO `user_interests` (`user_id`, `interest_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL),
	(1, 3, NULL, NULL),
	(2, 2, NULL, NULL),
	(2, 3, NULL, NULL),
	(1, 5, NULL, NULL),
	(8, 2, NULL, NULL),
	(9, 2, NULL, NULL),
	(10, 2, NULL, NULL),
	(1, 4, NULL, NULL),
	(1, 6, NULL, NULL);
/*!40000 ALTER TABLE `user_interests` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
