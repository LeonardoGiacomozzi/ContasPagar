CREATE DATABASE financeiro;
USE financeiro;

CREATE TABLE `contaspagar` (
	`CODIGO` INT(11) NOT NULL AUTO_INCREMENT,
	`NOMECREDOR` VARCHAR(45) NULL DEFAULT NULL,
	`VALORBRUTO` DOUBLE NULL DEFAULT NULL,
	`VALORDESCONTO` DOUBLE NULL DEFAULT NULL,
	`LIMITECREDITO` DOUBLE NULL DEFAULT NULL,
	`JUROS` DOUBLE NULL DEFAULT NULL,
	`ENDERECO` VARCHAR(100) NULL DEFAULT NULL,
	`VALORPAGO` DOUBLE NULL DEFAULT NULL,
	PRIMARY KEY (`CODIGO`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `login` (
	`codigo` INT(11) NOT NULL AUTO_INCREMENT,
	`usuario` VARCHAR(40) NOT NULL,
	`senha` VARCHAR(40) NOT NULL,
	PRIMARY KEY (`codigo`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=3
;

insert into login (usuario, senha) values ("Danton","123");
insert into login (usuario, senha) values ("Hericles","123");
insert into login (usuario, senha) values ("Leonardo","123");
insert into login (usuario, senha) values ("Eduardo","123");