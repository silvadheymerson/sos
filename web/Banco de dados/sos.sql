-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12-Nov-2016 às 16:22
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
-- Estrutura da tabela `bairros`
--

DROP TABLE IF EXISTS `bairros`;
CREATE TABLE IF NOT EXISTS `bairros` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_nome` varchar(45) NOT NULL,
  `b_cidade` int(11) NOT NULL,
  PRIMARY KEY (`b_id`),
  KEY `fk_bairros_cidades_idx` (`b_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Estrutura da tabela `cidades`
--

DROP TABLE IF EXISTS `cidades`;
CREATE TABLE IF NOT EXISTS `cidades` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_nome` varchar(45) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
CREATE TABLE IF NOT EXISTS `enderecos` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_rua` varchar(20) NOT NULL,
  `e_numero` int(11) NOT NULL,
  `e_complemento` varchar(100) NOT NULL,
  `e_bairro` int(11) NOT NULL,
  `e_cidade` int(11) NOT NULL,
  `e_cep` varchar(15) NOT NULL,
  PRIMARY KEY (`e_id`),
  KEY `fk_enderecos_bairros1_idx` (`e_bairro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `l_id` int(11) NOT NULL,
  `l_user` varchar(60) NOT NULL,
  `l_pass` varchar(60) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis`
--

DROP TABLE IF EXISTS `niveis`;
CREATE TABLE IF NOT EXISTS `niveis` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `n_nivel` int(11) NOT NULL,
  `n_user` int(11) NOT NULL,
  PRIMARY KEY (`n_id`),
  KEY `fk_niveis_login1_idx` (`n_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
CREATE TABLE IF NOT EXISTS `ofertas` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_tipo_servico` int(11) NOT NULL,
  `o_descricao` varchar(120) NOT NULL,
  `o_ofertante` int(11) NOT NULL,
  `o_status` int(11) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `servico`, `email`, `nome`, `telefone`, `cep`) VALUES
(1, 1, 'fabricio_rbfc@hotmail.com', 'fabricio andre de aquino brito', '(68)99993-5863', '25225-858');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_servicos`
--

DROP TABLE IF EXISTS `tipos_servicos`;
CREATE TABLE IF NOT EXISTS `tipos_servicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipos_servicos`
--

INSERT INTO `tipos_servicos` (`id`, `nome`) VALUES
(1, 'Engenharia'),
(3, 'Informatica'),
(4, 'Carpinteiro'),
(5, 'Motorista'),
(6, 'Pedreiro'),
(7, 'Domestica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `u_cpf` varchar(15) DEFAULT NULL,
  `u_data_nascimento` date DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `senha1` varchar(45) DEFAULT NULL,
  `senha2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `u_cpf`, `u_data_nascimento`, `email`, `senha1`, `senha2`) VALUES
(1, 'Fabricio Andre', NULL, NULL, 'fabricio_rbfc@hotmail.com', '123', '123'),
(2, 'Dheymerson Siva', NULL, NULL, 'dheymerson.silva@hotmail.com', '123', '123'),
(3, 'Rogerio Ceni', NULL, NULL, 'rogerio.ceni01@hotmail.com', NULL, NULL),
(4, 'Steven Gerrard', NULL, NULL, 'steven_gerrard@uol.com', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `bairros`
--
ALTER TABLE `bairros`
  ADD CONSTRAINT `fk_bairros_cidades` FOREIGN KEY (`b_cidade`) REFERENCES `cidades` (`c_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD CONSTRAINT `fk_enderecos_bairros1` FOREIGN KEY (`e_bairro`) REFERENCES `bairros` (`b_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `niveis`
--
ALTER TABLE `niveis`
  ADD CONSTRAINT `fk_niveis_login1` FOREIGN KEY (`n_user`) REFERENCES `login` (`l_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
