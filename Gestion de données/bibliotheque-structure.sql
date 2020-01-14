DROP TABLE participation;
DROP TABLE artiste;
DROP TABLE livre_genre;
DROP TABLE emprunt;
DROP TABLE livre;
DROP TABLE genre;
DROP TABLE usager;

CREATE TABLE IF NOT EXISTS `artiste` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nom` varchar(100) NOT NULL,
    `prenom` varchar(100) DEFAULT NULL,
    `nationalite` varchar(3) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `genre` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nom` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `livre` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `titre` varchar(200) NOT NULL,
    `editeur` varchar(100) NOT NULL,
    `etat` varchar(10) NOT NULL,
    `enfant` tinyint(4) NOT NULL,
    `rayonnage` varchar(100) DEFAULT NULL,
    `serie` varchar(100) DEFAULT NULL,
    `num_serie` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `livre_genre` (
    `id_livre` int(11) NOT NULL,
    `id_genre` int(11) NOT NULL,
    PRIMARY KEY (`id_livre`,`id_genre`),
    KEY `fk_livre_genre_genre_idx` (`id_genre`),
    CONSTRAINT `fk_livre_genre_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`),
    CONSTRAINT `fk_livre_genre_livre` FOREIGN KEY (`id_livre`) REFERENCES `livre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `participation` (
    `id_livre` int(11) NOT NULL,
    `id_artiste` int(11) NOT NULL,
    `role` varchar(50) NOT NULL,
    PRIMARY KEY (`id_livre`,`id_artiste`,`role`),
    KEY `fk_participation_artiste_idx` (`id_artiste`),
    CONSTRAINT `fk_participation_artiste` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id`),
    CONSTRAINT `fk_participation_livre` FOREIGN KEY (`id_livre`) REFERENCES `livre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `usager` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(100) NOT NULL,
    `prenom` VARCHAR(100) NOT NULL,
    `date_abonnement` DATE NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `emprunt` (
    `id_usager` INT NOT NULL,
    `id_livre` INT NOT NULL,
    `date_emprunt` DATE NOT NULL,
    `date_rendu_attendu` DATE NOT NULL,
    `date_rendu_reel` DATE NULL,
    PRIMARY KEY (`id_usager`, `id_livre`, `date_emprunt`),
    INDEX `fk_emprunt_livre_idx` (`id_livre` ASC),
    CONSTRAINT `fk_emprunt_usager` FOREIGN KEY (`id_usager`) REFERENCES `usager` (`id`),
    CONSTRAINT `fk_emprunt_livre` FOREIGN KEY (`id_livre`) REFERENCES `livre` (`id`)
);

