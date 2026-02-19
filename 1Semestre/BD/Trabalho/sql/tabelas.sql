-- Implementação do sistema de bases de dados para o caso de estudo tricornio 
-- Maio 2024
-- Goncalo Freitas a104350
-- Leonor Cunha a103997
-- João Ferreira a104539
-- Eduarda Vieira a104098
-- Tiago Barros a104530

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
-- -----------------------------------------------------
-- DATABASE TRICORNIO 
-- -----------------------------------------------------
Drop Database if exists Tricornio;
CREATE DATABASE Tricornio;
USE Tricornio ;

-- -----------------------------------------------------
-- Tabela dos Detetives
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Detetive (
  idDetetive INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  Especialidade VARCHAR(45) NOT NULL,
  Estado VARCHAR(45) NOT NULL,
  Data_nascimento DATETIME NOT NULL,
  Morada VARCHAR(45) NOT NULL,
  Telefone VARCHAR(45) NOT NULL,
  Email VARCHAR(45) NOT NULL,
  NIF INT NOT NULL,
  PRIMARY KEY (idDetetive),
  UNIQUE INDEX NIF_UNIQUE (NIF ASC) VISIBLE) -- faz com que não haja nifs repetidos na tabela
ENGINE = InnoDB;

-- Select * From Detetive
-- Drop Table Detetive  

-- -----------------------------------------------------
-- Tabela Cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente (
  NIF INT NOT NULL,
  Nome VARCHAR(45) NOT NULL,
  Morada VARCHAR(45) NOT NULL,
  Telefone INT NOT NULL,
  Email VARCHAR(45) NOT NULL,
  PRIMARY KEY (NIF))
ENGINE = InnoDB;
-- Select * From Cliente
-- Drop Table Cliente  

-- -----------------------------------------------------
-- Tabela Caso
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Caso (
  idCaso INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  Data_inicio_investigação DATETIME NOT NULL,
  Data_fim_investigação DATETIME NULL,
  Estado_processo binary(1) NOT NULL,
  Categoria VARCHAR(45) NOT NULL,
  Montante_de_Pagamento INT NOT NULL,
  Forma_de_Pagamento VARCHAR(45) NULL,
  Estado_do_Pagamento BINARY(1) NOT NULL,
  Id_Detetive INT NOT NULL,
  NIF_Cliente INT NOT NULL,
  PRIMARY KEY (idCaso, NIF_Cliente),
    FOREIGN KEY (Id_Detetive)
    REFERENCES Detetive (idDetetive),
    FOREIGN KEY (NIF_Cliente)
    REFERENCES Cliente (NIF))
ENGINE = InnoDB;
-- Select * From Caso
-- Drop Table Caso  

-- -----------------------------------------------------
-- Tabela Arma
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Arma (
  idArma INT NOT NULL AUTO_INCREMENT,
  N_Licença INT NOT NULL,
  Data_Fabrico DATETIME NOT NULL,
  Modelo VARCHAR(45) NOT NULL,
  N_de_Munições INT NOT NULL,
  Id_Detetive INT NOT NULL,
  PRIMARY KEY (idArma),
    FOREIGN KEY (Id_Detetive)
    REFERENCES Detetive (idDetetive))
ENGINE = InnoDB;
-- Select * From Arma
-- Drop Table Arma  

-- -----------------------------------------------------
-- Tabela Veículo
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Veículo (
  idVeículo INT NOT NULL AUTO_INCREMENT,
  Data_requisito DATETIME NOT NULL,
  Data_devolução DATETIME NULL,
  Capacidade_do_veículo INT NOT NULL,
  Quantidade_de_gasolina INT NOT NULL,
  Estado_do_veículo VARCHAR(45) NOT NULL,
  Id_Detetive INT NOT NULL,
  PRIMARY KEY (idVeículo),
    FOREIGN KEY (Id_Detetive)
    REFERENCES Detetive (idDetetive))
ENGINE = InnoDB;
-- Select * From Veículo
-- Drop Table Veículo  

-- -----------------------------------------------------
-- Tabela Prova
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Prova (
  idProva INT NOT NULL AUTO_INCREMENT,
  Descrição_da_Prova VARCHAR(45) NOT NULL,
  Data_obtenção DATETIME NOT NULL,
  Id_Caso INT NOT NULL,
  PRIMARY KEY (idProva),
    FOREIGN KEY (Id_Caso)
    REFERENCES Caso (idCaso))
ENGINE = InnoDB;
-- Select * From Prova
-- Drop Table Prova  

-- -----------------------------------------------------
-- Tabela Análise
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Análise (
  idAnálise INT NOT NULL AUTO_INCREMENT,
  Resultados VARCHAR(45) NOT NULL,
  Data_de_Análise DATETIME NOT NULL,
  Data_de_Resultados DATETIME NOT NULL,
  Id_Prova INT NOT NULL,
  PRIMARY KEY (idAnálise),
    FOREIGN KEY (Id_Prova)
    REFERENCES Prova (idProva))
ENGINE = InnoDB;
-- Select * From Análise
-- Drop Table Análise  

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
