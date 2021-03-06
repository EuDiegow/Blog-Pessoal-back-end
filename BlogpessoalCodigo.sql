-- MySQL Script generated by MySQL Workbench
-- Wed Feb 16 21:59:30 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tb_tema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tb_tema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tb_tema` DEFAULT CHARACTER SET utf8 ;
USE `tb_tema` ;

-- -----------------------------------------------------
-- Table `tb_tema`.`tb_tema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_tema`.`tb_tema` (
  `id BIGINT` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `categoria` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id BIGINT`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tb_tema`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_tema`.`tb_usuario` (
  `id BIGINT` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `e-mail` VARCHAR(25) NOT NULL,
  `senha` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id BIGINT`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tb_tema`.`tb_postagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_tema`.`tb_postagem` (
  `id BIGINT` BIGINT NOT NULL AUTO_INCREMENT,
  `texto` VARCHAR(1000) NOT NULL,
  `data` DATE NOT NULL,
  `foto` VARCHAR(255) NOT NULL,
  `curtidas` INT NOT NULL,
  `tb_tema_id BIGINT` BIGINT NOT NULL,
  `tb_usuario_id BIGINT` BIGINT NOT NULL,
  PRIMARY KEY (`id BIGINT`),
  INDEX `fk_tb_postagem_tb_tema_idx` (`tb_tema_id BIGINT` ASC) VISIBLE,
  INDEX `fk_tb_postagem_tb_usuario1_idx` (`tb_usuario_id BIGINT` ASC) VISIBLE,
  CONSTRAINT `fk_tb_postagem_tb_tema`
    FOREIGN KEY (`tb_tema_id BIGINT`)
    REFERENCES `tb_tema`.`tb_tema` (`id BIGINT`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_postagem_tb_usuario1`
    FOREIGN KEY (`tb_usuario_id BIGINT`)
    REFERENCES `tb_tema`.`tb_usuario` (`id BIGINT`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
