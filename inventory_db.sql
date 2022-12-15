-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para  inventory_db
CREATE DATABASE IF NOT EXISTS ` inventory_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE ` inventory_db`;

-- Copiando estrutura para tabela  inventory_db.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `available` int(11) NOT NULL DEFAULT 0,
  `min_available` int(11) NOT NULL DEFAULT 0,
  `id_vendor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela  inventory_db.products: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `price`, `available`, `min_available`, `id_vendor`) VALUES
	(1, 'Teclado Gamer XYZ', 200, 10, 5, 1),
	(2, 'Mouse 9200dpi', 125.66, 36, 15, 2),
	(3, 'Monitor 99\' Ultrawide', 999.99, 14, 10, 3),
	(4, 'Notebook 50GB ram', 9546.54, 7, 10, 4),
	(5, 'Teclado numérico X', 37.5, 5, 5, 1),
	(6, 'Cadeira Gamer BLA', 854.1, 12, 10, 3),
	(7, 'Monitor 5\' Curvo', 140, 33, 35, 5),
	(8, 'PC da NASA', 54564, 2, 1, 6),
	(9, 'PC Ruim', 50.99, 75, 50, 6),
	(10, 'Cubo Mágico de 13 faces', 3.5, 324, 350, 6);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Copiando estrutura para tabela  inventory_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `register_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela  inventory_db.users: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `register_date`) VALUES
	(1, 'Bonieky', '2007-12-10'),
	(2, 'Pedro', '2009-04-15'),
	(3, 'João', '2011-03-18'),
	(4, 'Jéssica', '2019-07-22'),
	(5, 'Beatriz', '2021-01-11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Copiando estrutura para tabela  inventory_db.vendors
CREATE TABLE IF NOT EXISTS `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela  inventory_db.vendors: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` (`id`, `name`, `phone`) VALUES
	(1, 'XYZ', '(11) 9999-9999'),
	(2, 'Bigsoft', '(12) 8888-8888'),
	(3, 'Bla', '(13) 7777-7777'),
	(4, 'Positivo', '(14) 6666-6666'),
	(5, 'LG', '(15) 5555-5555'),
	(6, 'NASA', '(16) 4444-4444');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
