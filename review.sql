-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Mar-2022 às 23:17
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `review`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `status` enum('ativo','inativo','apagado') NOT NULL DEFAULT 'ativo',
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `status`, `data`) VALUES
(1, 'Setembrino Trocatapas', 'set@brino.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ativo', '2022-03-22 21:56:51'),
(2, 'Marineuza Siriliano', 'mari@neuza.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ativo', '2022-03-22 22:00:25'),
(3, 'Edinalson Marquisano', 'edimarq@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ativo', '2022-03-22 22:00:25'),
(4, 'Edileuza Clarineuza', 'ediclara@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ativo', '2022-03-22 22:04:32'),
(5, 'Marcolino Saudoso', 'macosaudo@outlook.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ativo', '2022-03-22 22:04:32');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;










CREATE TABLE `produtos` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(127) NOT NULL,
  `preco` float NOT NULL,
  `embalagem` enum('saco', 'caixa') NOT NULL,
  `status` enum('ativo','inativo','apagado') NOT NULL DEFAULT 'ativo',
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `produtos` ( `nome`, `preco`, `embalagem`) VALUES
('bolo', '10,30', 'saco'),
('agua', '2,10', 'caixa'),
('biscoito', '5,10', 'saco'),
('refrigerante', '9,10', 'caixa'),
('ovos', '11,10', 'caixa');
