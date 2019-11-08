CREATE TABLE `contact` (
  `idcontact` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(100) NOT NULL,
  `lastname` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(20) NULL,
  `email` VARCHAR(250) NULL,
  `preferred` TINYINT NOT NULL,
  PRIMARY KEY (`idcontact`));
