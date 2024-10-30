-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/10/2024 às 00:26
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `medic`
--
CREATE DATABASE IF NOT EXISTS `medic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `medic`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbadministracao`
--

CREATE TABLE `tbadministracao` (
  `id` int(11) NOT NULL,
  `nomePaciente` varchar(100) NOT NULL,
  `nomeMedicamento` varchar(100) NOT NULL,
  `dataAdmin` datetime NOT NULL,
  `dose` varchar(100) NOT NULL,
  `dataRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbenfermeiro`
--

CREATE TABLE `tbenfermeiro` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `COREN` varchar(50) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbmedico`
--

CREATE TABLE `tbmedico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(25) NOT NULL,
  `CRM` varchar(50) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbpaciente`
--

CREATE TABLE `tbpaciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `leito` varchar(25) NOT NULL,
  `dataNascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbreceita`
--

CREATE TABLE `tbreceita` (
  `id` int(11) NOT NULL,
  `nomePaciente` varchar(100) NOT NULL,
  `nomeMedicamento` varchar(60) NOT NULL,
  `dataAdmin` datetime NOT NULL,
  `dose` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbadministracao`
--
ALTER TABLE `tbadministracao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tbenfermeiro`
--
ALTER TABLE `tbenfermeiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tbmedico`
--
ALTER TABLE `tbmedico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tbpaciente`
--
ALTER TABLE `tbpaciente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tbreceita`
--
ALTER TABLE `tbreceita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbadministracao`
--
ALTER TABLE `tbadministracao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbenfermeiro`
--
ALTER TABLE `tbenfermeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbmedico`
--
ALTER TABLE `tbmedico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbpaciente`
--
ALTER TABLE `tbpaciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbreceita`
--
ALTER TABLE `tbreceita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
