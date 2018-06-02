-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Jun-2018 às 14:59
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batepapo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'Geral'),
(2, 'Testes'),
(3, 'Desenvolvimento'),
(4, 'Criada pelo sistema');

-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `date_msg` datetime NOT NULL,
  `msg` text NOT NULL,
  `msg_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `messages`
--

INSERT INTO `messages` (`id`, `id_user`, `id_group`, `date_msg`, `msg`, `msg_type`) VALUES
(1, 2, 3, '2018-05-24 11:49:34', 'Meu deus', 'text'),
(2, 2, 3, '2018-05-24 11:54:49', 'Um', 'text'),
(3, 2, 2, '2018-05-25 09:01:47', 'LÃ¡ vem ', 'text'),
(4, 2, 3, '2018-05-25 09:02:33', 'Mensagem de teste', 'text'),
(5, 2, 3, '2018-05-25 09:04:39', 'Testando 1,2,3...', 'text'),
(6, 2, 1, '2018-05-25 09:05:32', 'Nossa', 'text'),
(7, 2, 1, '2018-05-25 09:06:23', 'Nuuuu', 'text'),
(8, 2, 2, '2018-05-25 09:12:26', 'Alguma coisa', 'text'),
(9, 2, 3, '2018-05-25 09:22:07', 'Teste', 'text'),
(10, 2, 1, '2018-05-25 09:25:04', 'Opa', 'text'),
(11, 2, 4, '2018-05-25 09:26:42', 'Agora vai', 'text'),
(12, 2, 1, '2018-05-25 09:34:38', 'Teste de horario', 'text'),
(13, 3, 4, '2018-05-25 09:37:33', 'Oi', 'text'),
(14, 3, 1, '2018-05-25 09:38:03', 'Oi', 'text'),
(15, 2, 1, '2018-05-25 09:38:22', 'OlÃ¡, beleza?', 'text'),
(16, 2, 3, '2018-05-25 09:53:16', 'Tela de dev', 'text'),
(17, 2, 1, '2018-05-25 09:53:38', 'Tela de geral', 'text'),
(18, 3, 3, '2018-05-25 11:19:10', 'Oi, pai?', 'text'),
(19, 2, 3, '2018-05-25 11:19:28', 'OlÃ¡ meu amor', 'text'),
(20, 2, 1, '2018-06-01 10:03:12', 'Opa tudo bem?', 'text'),
(21, 2, 1, '2018-06-01 10:03:27', 'Tudo certo, e ai?', 'text'),
(22, 2, 4, '2018-06-01 10:17:02', '4f4be484f0edc18612ea5e94c094d32ejpg', 'img'),
(23, 2, 1, '2018-06-01 10:27:43', 'c1109db584343ee5315b39e95f027dbcjpg', 'img'),
(24, 2, 1, '2018-06-01 10:28:03', 'Meu Deus que susto...', 'text');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `loginhash` varchar(32) NOT NULL,
  `last_update` datetime NOT NULL,
  `groups` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `pass`, `loginhash`, `last_update`, `groups`) VALUES
(2, 'marcelo', '$2y$10$sxxxOKI0IsVRre3sQ5nrhe71pjsuoSKZDoV/Z.uCBEjmJYN4Mue0q', '6947c16e714db8aa4d265e1db67310cb', '2018-06-02 09:44:52', '!1!'),
(3, 'cecilia', '$2y$10$UnocLNtEvvkF6ZJVNWzbyuCkAh8EFAoHxZWOgM6UkeSXNzB8eoT62', '4b20c625d8a466a8d9274addc40b9ef4', '0000-00-00 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
