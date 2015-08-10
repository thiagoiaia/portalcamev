SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema portalcamev
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `portalcamev` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `portalcamev` ;

-- -----------------------------------------------------
-- Table `portalcamev`.`Slides`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portalcamev`.`Slides` (
  `idSlide` INT NOT NULL AUTO_INCREMENT COMMENT 'Chave primária de identificação de cada slide.',
  `linkWebsiteSlide` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL,
  `caminhoImagemSlide` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  PRIMARY KEY (`idSlide`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `portalcamev`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portalcamev`.`Usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `loginUsuario` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `senhaUsuario` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `portalcamev`.`QuemSomos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portalcamev`.`QuemSomos` (
  `descricaoQuemSomos` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `portalcamev`.`Parceiros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portalcamev`.`Parceiros` (
  `idParceiro` INT NOT NULL AUTO_INCREMENT COMMENT 'Chave primária de identificação de cada parceiro.',
  `linkWebsiteParceiro` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL,
  `caminhoImagemParceiro` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  PRIMARY KEY (`idParceiro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `portalcamev`.`Noticias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portalcamev`.`Noticias` (
  `idNoticia` INT NOT NULL AUTO_INCREMENT COMMENT 'Chave primária de identificação de cada notícia.',
  `tituloNoticia` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `resumoNoticia` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `conteudoNoticia` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `caminhoImagemNoticia` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  PRIMARY KEY (`idNoticia`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
