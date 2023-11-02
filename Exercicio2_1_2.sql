-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema exercicio_af_02
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema exercicio_af_02
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `exercicio_af_02` DEFAULT CHARACTER SET utf8 ;
USE `exercicio_af_02` ;

-- -----------------------------------------------------
-- Table `exercicio_af_02`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exercicio_af_02`.`clientes` (
  `cli_id` INT NOT NULL AUTO_INCREMENT,
  `cli_nome` VARCHAR(300) NOT NULL,
  `cli_email` VARCHAR(100) NULL,
  `cli_total_pedidos` DECIMAL(8,2) NULL,
  PRIMARY KEY (`cli_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exercicio_af_02`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `exercicio_af_02`.`pedidos` (
  `pdd_id` INT NOT NULL AUTO_INCREMENT,
  `pdd_data` DATE NOT NULL,
  `pdd_valor` DECIMAL(5,2) NOT NULL,
  `pdd_cli_id` INT NOT NULL,
  PRIMARY KEY (`pdd_id`),
  INDEX `fk_pedidos_clientes_idx` (`pdd_cli_id` ASC) VISIBLE,
  CONSTRAINT `fk_pedidos_clientes`
    FOREIGN KEY (`pdd_cli_id`)
    REFERENCES `exercicio_af_02`.`clientes` (`cli_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
