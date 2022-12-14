-- MySQL Script generated by MySQL Workbench
-- Tue Sep 27 14:13:54 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_blog_pessoal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_blog_pessoal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_blog_pessoal` DEFAULT CHARACTER SET utf8 ;
USE `db_blog_pessoal` ;

-- -----------------------------------------------------
-- Table `db_blog_pessoal`.`TB_TEMAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog_pessoal`.`TB_TEMAS` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `DESCRICAO` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog_pessoal`.`TB_USUARIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog_pessoal`.`TB_USUARIOS` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `NOME` VARCHAR(255) NOT NULL,
  `USUARIO` VARCHAR(255) NOT NULL,
  `SENHA` VARCHAR(255) NOT NULL,
  `FOTO` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog_pessoal`.`TB_POSTAGENS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog_pessoal`.`TB_POSTAGENS` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `TITULO` VARCHAR(100) NOT NULL,
  `TEXTO` VARCHAR(1000) NOT NULL,
  `DATA` DATE NULL,
  `TB_TEMAS_id` BIGINT NOT NULL,
  `TB_USUARIOS_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_TB_POSTAGENS_TB_TEMAS_idx` (`TB_TEMAS_id` ASC) VISIBLE,
  INDEX `fk_TB_POSTAGENS_TB_USUARIOS1_idx` (`TB_USUARIOS_id` ASC) VISIBLE,
  CONSTRAINT `fk_TB_POSTAGENS_TB_TEMAS`
    FOREIGN KEY (`TB_TEMAS_id`)
    REFERENCES `db_blog_pessoal`.`TB_TEMAS` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_POSTAGENS_TB_USUARIOS1`
    FOREIGN KEY (`TB_USUARIOS_id`)
    REFERENCES `db_blog_pessoal`.`TB_USUARIOS` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
