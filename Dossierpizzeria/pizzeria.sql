-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 27 Octobre 2017 à 13:49
-- Version du serveur :  5.7.20-0ubuntu0.17.10.1
-- Version de PHP :  7.1.8-1ubuntu1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pizzeria`
--

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `phone`, `updated_at`, `created_at`) VALUES
(1, 'MAXIME', 'ROMA', 684421050, '2017-10-26 11:05:32', '2017-10-26 11:05:32'),
(2, 'Maxime', 'Roma', 684421050, '2017-10-26 11:07:54', '2017-10-26 11:07:54'),
(3, 'Maxime', 'Roma', 684421050, '2017-10-26 11:09:08', '2017-10-26 11:09:08'),
(4, 'Raphael', 'De sede', 684421050, '2017-10-26 11:10:37', '2017-10-26 11:10:37'),
(5, 'Romain', 'Lafargue', 684421050, '2017-10-26 11:13:43', '2017-10-26 11:13:43'),
(6, 'Raphael', 'De sede', 684421050, '2017-10-26 11:24:34', '2017-10-26 11:24:34'),
(7, 'lafargue', 'romain', 684421050, '2017-10-26 11:28:38', '2017-10-26 11:28:38'),
(8, 'Romain', 'Lafargue', 684421050, '2017-10-26 11:57:00', '2017-10-26 11:57:00'),
(9, 'Romain', 'Lafargue', 684421050, '2017-10-26 12:03:32', '2017-10-26 12:03:32'),
(10, 'Romain', 'Lafargue', 684421050, '2017-10-26 12:03:46', '2017-10-26 12:03:46'),
(11, 'Romain', 'Lafargue', 684421050, '2017-10-26 12:08:01', '2017-10-26 12:08:01'),
(12, 'Maxime', 'Roma', 684421050, '2017-10-26 12:11:15', '2017-10-26 12:11:15'),
(13, 'Romain', 'Lafargue', 684421050, '2017-10-26 12:40:17', '2017-10-26 12:40:17'),
(14, 'yoyo', 'popo', 684421050, '2017-10-26 13:03:59', '2017-10-26 13:03:59'),
(15, 'Romain', 'Lafargue', 684421050, '2017-10-26 13:10:41', '2017-10-26 13:10:41'),
(16, 'Romain', 'Lafargue', 684421050, '2017-10-26 13:16:58', '2017-10-26 13:16:58'),
(17, 'Romain', 'Lafargue', 684421050, '2017-10-26 13:17:03', '2017-10-26 13:17:03'),
(18, 'propre', 'net', 674567898, '2017-10-26 13:17:48', '2017-10-26 13:17:48');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `delivery_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_price` float DEFAULT NULL,
  `customer_id_customers` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `delivery_at`, `total_price`, `customer_id_customers`, `updated_at`, `created_at`) VALUES
(1, 2, '2017-10-26 11:08:54', NULL, NULL, '2017-10-26 11:07:54', '2017-10-26 11:07:54'),
(2, 3, '2017-10-26 13:09:09', 1500, NULL, '2017-10-26 11:09:09', '2017-10-26 11:09:08'),
(3, 4, '2017-10-26 13:10:37', 1500, NULL, '2017-10-26 11:10:37', '2017-10-26 11:10:37'),
(4, 5, '2017-10-26 13:13:44', 4500, NULL, '2017-10-26 11:13:44', '2017-10-26 11:13:43'),
(5, 6, '2017-10-26 13:24:34', 1500, NULL, '2017-10-26 11:24:34', '2017-10-26 11:24:34'),
(6, 7, '2017-10-26 13:28:39', 4500, NULL, '2017-10-26 11:28:39', '2017-10-26 11:28:38'),
(7, 8, '2017-10-26 13:57:01', 3500, NULL, '2017-10-26 11:57:01', '2017-10-26 11:57:01'),
(8, 9, '2017-10-26 12:53:32', NULL, NULL, '2017-10-26 12:03:32', '2017-10-26 12:03:32'),
(9, 10, '2017-10-26 14:03:46', 3500, NULL, '2017-10-26 12:03:46', '2017-10-26 12:03:46'),
(10, 11, '2017-10-26 14:08:02', 6500, NULL, '2017-10-26 12:08:02', '2017-10-26 12:08:01'),
(11, 12, '2017-10-26 14:11:16', 11500, NULL, '2017-10-26 12:11:16', '2017-10-26 12:11:15'),
(12, 13, '2017-10-26 14:40:18', 9200, NULL, '2017-10-26 12:40:18', '2017-10-26 12:40:17'),
(13, 14, '2017-10-26 15:04:00', 500, NULL, '2017-10-26 13:04:00', '2017-10-26 13:03:59'),
(14, 15, '2017-10-26 14:00:41', NULL, NULL, '2017-10-26 13:10:41', '2017-10-26 13:10:41'),
(15, 16, '2017-10-26 14:06:58', NULL, NULL, '2017-10-26 13:16:58', '2017-10-26 13:16:58'),
(16, 17, '2017-10-26 15:17:03', 1500, NULL, '2017-10-26 13:17:03', '2017-10-26 13:17:03'),
(17, 18, '2017-10-26 15:17:49', 10500, NULL, '2017-10-26 13:17:49', '2017-10-26 13:17:49');

-- --------------------------------------------------------

--
-- Structure de la table `pizzas`
--

CREATE TABLE `pizzas` (
  `pizza_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `price_little` float DEFAULT NULL,
  `price_big` float DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `pizzas`
--

INSERT INTO `pizzas` (`pizza_id`, `name`, `price_little`, `price_big`, `status`, `updated_at`, `created_at`) VALUES
(1, 'max', 500, 1500, 1, '2017-10-26 13:07:25', '2017-10-26 13:07:25'),
(2, 'la vegetarienne', 2000, 3000, 0, '2017-10-27 08:30:49', '2017-10-26 13:13:22'),
(3, 'La Romain', 700, 2000, 1, '2017-10-26 14:06:44', '2017-10-26 14:06:44'),
(4, 'La dimitri', 2500, 5000, 1, '2017-10-26 13:24:26', '2017-10-26 14:09:42');

-- --------------------------------------------------------

--
-- Structure de la table `pizza_order`
--

CREATE TABLE `pizza_order` (
  `size` tinyint(1) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `pizza_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `pizza_order`
--

INSERT INTO `pizza_order` (`size`, `order_id`, `pizza_id`, `updated_at`, `created_at`) VALUES
(1, 2, 1, '2017-10-26 11:09:09', '2017-10-26 11:09:09'),
(1, 3, 1, '2017-10-26 11:10:37', '2017-10-26 11:10:37'),
(1, 4, 1, '2017-10-26 11:13:43', '2017-10-26 11:13:43'),
(1, 4, 2, '2017-10-26 11:13:43', '2017-10-26 11:13:43'),
(1, 5, 1, '2017-10-26 11:24:34', '2017-10-26 11:24:34'),
(1, 6, 1, '2017-10-26 11:28:38', '2017-10-26 11:28:38'),
(1, 6, 2, '2017-10-26 11:28:39', '2017-10-26 11:28:39'),
(1, 7, 1, '2017-10-26 11:57:01', '2017-10-26 11:57:01'),
(0, 7, 2, '2017-10-26 11:57:01', '2017-10-26 11:57:01'),
(0, 8, 1, '2017-10-26 12:03:32', '2017-10-26 12:03:32'),
(1, 9, 1, '2017-10-26 12:03:46', '2017-10-26 12:03:46'),
(0, 9, 2, '2017-10-26 12:03:46', '2017-10-26 12:03:46'),
(1, 10, 1, '2017-10-26 12:08:01', '2017-10-26 12:08:01'),
(1, 10, 2, '2017-10-26 12:08:02', '2017-10-26 12:08:02'),
(1, 10, 3, '2017-10-26 12:08:02', '2017-10-26 12:08:02'),
(1, 11, 1, '2017-10-26 12:11:15', '2017-10-26 12:11:15'),
(1, 11, 2, '2017-10-26 12:11:16', '2017-10-26 12:11:16'),
(1, 11, 3, '2017-10-26 12:11:16', '2017-10-26 12:11:16'),
(1, 11, 4, '2017-10-26 12:11:16', '2017-10-26 12:11:16'),
(0, 12, 1, '2017-10-26 12:40:18', '2017-10-26 12:40:18'),
(1, 12, 2, '2017-10-26 12:40:18', '2017-10-26 12:40:18'),
(0, 12, 3, '2017-10-26 12:40:18', '2017-10-26 12:40:18'),
(1, 12, 4, '2017-10-26 12:40:18', '2017-10-26 12:40:18'),
(0, 13, 1, '2017-10-26 13:04:00', '2017-10-26 13:04:00'),
(0, 14, 1, '2017-10-26 13:10:41', '2017-10-26 13:10:41'),
(0, 15, 1, '2017-10-26 13:16:58', '2017-10-26 13:16:58'),
(1, 16, 1, '2017-10-26 13:17:03', '2017-10-26 13:17:03'),
(1, 17, 1, '2017-10-26 13:17:49', '2017-10-26 13:17:49'),
(0, 17, 2, '2017-10-26 13:17:49', '2017-10-26 13:17:49'),
(1, 17, 3, '2017-10-26 13:17:49', '2017-10-26 13:17:49'),
(1, 17, 4, '2017-10-26 13:17:49', '2017-10-26 13:17:49');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`product_id`, `name`, `product_price`, `updated_at`, `created_at`) VALUES
(1, 'champigon', 20, '2017-10-26 13:26:26', '2017-10-26 13:26:26'),
(2, 'jambon', 50, '2017-10-26 13:32:20', '2017-10-26 13:32:20'),
(3, 'oeuf', 20, '2017-10-26 14:05:27', '2017-10-26 14:05:27'),
(4, 'dim', 250, '2017-10-26 14:10:07', '2017-10-26 14:10:07');

-- --------------------------------------------------------

--
-- Structure de la table `product_pizza`
--

CREATE TABLE `product_pizza` (
  `product_id` int(11) NOT NULL,
  `pizza_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `product_pizza`
--

INSERT INTO `product_pizza` (`product_id`, `pizza_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(3, 3),
(4, 4);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_orders_customer_id_customers` (`customer_id_customers`);

--
-- Index pour la table `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`pizza_id`);

--
-- Index pour la table `pizza_order`
--
ALTER TABLE `pizza_order`
  ADD PRIMARY KEY (`order_id`,`pizza_id`),
  ADD KEY `FK_pizza_order_pizza_id` (`pizza_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `product_pizza`
--
ALTER TABLE `product_pizza`
  ADD PRIMARY KEY (`product_id`,`pizza_id`),
  ADD KEY `FK_product_pizza_pizza_id` (`pizza_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `pizza_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_customer_id_customers` FOREIGN KEY (`customer_id_customers`) REFERENCES `customers` (`customer_id`);

--
-- Contraintes pour la table `pizza_order`
--
ALTER TABLE `pizza_order`
  ADD CONSTRAINT `FK_pizza_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FK_pizza_order_pizza_id` FOREIGN KEY (`pizza_id`) REFERENCES `pizzas` (`pizza_id`);

--
-- Contraintes pour la table `product_pizza`
--
ALTER TABLE `product_pizza`
  ADD CONSTRAINT `FK_product_pizza_pizza_id` FOREIGN KEY (`pizza_id`) REFERENCES `pizzas` (`pizza_id`),
  ADD CONSTRAINT `FK_product_pizza_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
