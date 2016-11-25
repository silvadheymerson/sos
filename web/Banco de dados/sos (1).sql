-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25-Nov-2016 às 00:34
-- Versão do servidor: 5.7.16-log
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato_oferta`
--

DROP TABLE IF EXISTS `candidato_oferta`;
CREATE TABLE IF NOT EXISTS `candidato_oferta` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_status` int(11) NOT NULL,
  `co_data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) DEFAULT NULL,
  `texto` varchar(150) DEFAULT NULL,
  `resposta` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `email`
--

INSERT INTO `email` (`id`, `email`, `texto`, `resposta`) VALUES
(45, 'fabricio_rbfc@hotmail.com', 'não consigo cadastrar um serviço', 'Estamos em manutenção , tente novamente mais tarde'),
(46, 'dheymerson.silva@hotmail.com', 'faz urro', 'faço não'),
(48, 'jjonhy@hotmail.com', 'faz urro', 'haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
CREATE TABLE IF NOT EXISTS `ofertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `servico` int(11) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `prazo` varchar(80) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ofertas`
--

INSERT INTO `ofertas` (`id`, `servico`, `descricao`, `nome`, `status`, `prazo`, `cep`, `email`, `telefone`, `data`) VALUES
(1, 3, 'uma pessoa para formatar meu computador', 'fabricio andre de aquino brito', 0, 'O quanto antes possivel', '25225-858', 'fabricio_rbfc@hotmail.com', '6899935863', '2016-11-24 20:44:34'),
(2, 6, 'faz tudo', 'Dheymerson Siva', 0, 'Nos proximos 30 dias', '25486-865', 'dheymerson.silva@hotmail.com', '(68)99993-5863', '2016-11-24 21:40:49'),
(3, 3, 'meu computador não está passando imagem ', 'Francisco Antonio', 0, 'Não tenho certeza', '0211151565', 'chikinho@hotmail.com', '(68)99993-5863', '2016-11-25 00:18:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissao`
--

DROP TABLE IF EXISTS `profissao`;
CREATE TABLE IF NOT EXISTS `profissao` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_nome` varchar(45) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

DROP TABLE IF EXISTS `servicos`;
CREATE TABLE IF NOT EXISTS `servicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `servico` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `servico`, `email`, `nome`, `telefone`, `cep`) VALUES
(1, 1, 'fabricio_rbfc@hotmail.com', 'fabricio andre de aquino brito', '(68)99993-5863', '25225-858'),
(2, 6, 'dheymerson.silva@hotmail.com', 'Dheymerson Siva', '(68)999993-5863', '25486-865');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_servicos`
--

DROP TABLE IF EXISTS `tipos_servicos`;
CREATE TABLE IF NOT EXISTS `tipos_servicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipos_servicos`
--

INSERT INTO `tipos_servicos` (`id`, `nome`) VALUES
(1, 'Engenharia'),
(3, 'Informatica'),
(4, 'Carpinteiro'),
(5, 'Motorista'),
(6, 'Pedreiro'),
(7, 'Domestica'),
(8, 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `senha1` varchar(45) DEFAULT NULL,
  `senha2` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `data_nascimento`, `email`, `senha1`, `senha2`, `telefone`) VALUES
(1, 'Fabricio Andre', NULL, NULL, 'fabricio_rbfc@hotmail.com', '123', '123', NULL),
(2, 'Dheymerson Siva', NULL, NULL, 'dheymerson.silva@hotmail.com', '123', '123', NULL),
(4, 'Steven Gerrard', NULL, NULL, 'steven_gerrard@uol.com', NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
