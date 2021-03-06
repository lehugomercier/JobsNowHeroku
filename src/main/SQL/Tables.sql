DROP TABLE IF EXISTS `faire`;
DROP TABLE IF EXISTS `annonce`;
DROP TABLE IF EXISTS `utilisateur`;

CREATE TABLE `annonce` (

  `idAnnonce` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `dateDebut` date NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `formation` tinyint NOT NULL,
  `tenue` varchar(100) NOT NULL,
  `remuneration` double(7,2) NOT NULL,
  
  PRIMARY KEY (`idAnnonce`),
  UNIQUE KEY `idAnnonce_UNIQUE` (`idAnnonce`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `utilisateur` (

  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `dateNaissance` date NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `tel` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `admin` tinyint NOT NULL,
  
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `idUser_UNIQUE` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


CREATE TABLE `faire` (

  `idAnnonce` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  
  PRIMARY KEY (`idAnnonce`,`idUser`),
  UNIQUE KEY `idAction_UNIQUE` (`idAnnonce`,`idUser`),
  KEY `fk_idAnnonce` (`idAnnonce`),
  KEY `fk_idUser` (`idUser`),
  CONSTRAINT `fk_idAnnonce` FOREIGN KEY (`idAnnonce`) REFERENCES `annonce` (`idAnnonce`),
  CONSTRAINT `fk_idUser` FOREIGN KEY (`idUser`) REFERENCES `utilisateur` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;