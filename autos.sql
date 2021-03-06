-- MySQL Script generated by MySQL Workbench
-- 11/06/18 19:59:42
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Autos
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Autos` ;

-- -----------------------------------------------------
-- Schema Autos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Autos` DEFAULT CHARACTER SET utf8 ;
USE `Autos` ;

-- -----------------------------------------------------
-- Table `Autos`.`Usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Autos`.`Usuarios` ;

CREATE TABLE IF NOT EXISTS `Autos`.`Usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nombre_usuario` VARCHAR(45) NOT NULL,
  `apellido_usuario` VARCHAR(45) NULL,
  `contraseña` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Autos`.`Clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Autos`.`Clientes` ;

CREATE TABLE IF NOT EXISTS `Autos`.`Clientes` (
  `idClientes` INT NOT NULL AUTO_INCREMENT,
  `rtn` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `edad` INT NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Autos`.`marcas_autos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Autos`.`marcas_autos` ;

CREATE TABLE IF NOT EXISTS `Autos`.`marcas_autos` (
  `idmarca` INT NOT NULL AUTO_INCREMENT,
  `cod_marca` VARCHAR(4) NOT NULL,
  `marca` VARCHAR(45) NULL,
  `pais` VARCHAR(45) NULL,
  PRIMARY KEY (`idmarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Autos`.`Proveedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Autos`.`Proveedores` ;

CREATE TABLE IF NOT EXISTS `Autos`.`Proveedores` (
  `idproveedores` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `telefono` VARCHAR(13) NULL,
  `email` VARCHAR(50) NULL,
  PRIMARY KEY (`idproveedores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Autos`.`Autos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Autos`.`Autos` ;

CREATE TABLE IF NOT EXISTS `Autos`.`Autos` (
  `idAuto` INT NOT NULL AUTO_INCREMENT,
  `idmarca` INT NULL,
  `modelo` VARCHAR(45) NULL,
  `precio` DECIMAL(10,2) NULL,
  `existencia` INT NULL,
  `idproveedores` INT NULL,
  PRIMARY KEY (`idAuto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Autos`.`table1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Autos`.`table1` ;

CREATE TABLE IF NOT EXISTS `Autos`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Autos`.`Facturas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Autos`.`Facturas` ;

CREATE TABLE IF NOT EXISTS `Autos`.`Facturas` (
  `idFactura` INT NOT NULL AUTO_INCREMENT,
  `vendedor` INT NULL,
  `cliente` INT NULL,
  `Fecha` DATE NULL,
  `Total` DECIMAL(10,2) NULL,
  PRIMARY KEY (`idFactura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Autos`.`venta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Autos`.`venta` ;

CREATE TABLE IF NOT EXISTS `Autos`.`venta` (
  `idarticulo` INT NOT NULL,
  `cantidad` INT NULL,
  `precio` DECIMAL(10,2) NULL,
  `subtotal` DECIMAL(10,2) NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
