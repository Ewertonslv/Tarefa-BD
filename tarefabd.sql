DROP TABLE IF EXISTS empregado CASCADE;
DROP TABLE IF EXISTS departamento CASCADE;
DROP TABLE IF EXISTS projeto CASCADE;
DROP TABLE IF EXISTS alocacao CASCADE;
DROP TABLE IF EXISTS dependente CASCADE;

CREATE DATABASE dml_db;
USE dml_db;

CREATE TABLE empregado(
	matricula int(11) NOT NULL,
    nome varchar(15) NOT NULL, 
    endereco varchar(30) DEFAULT NULL,
    salario decimal(10,2) DEFAULT NULL,
    supervisor INT(11) DEFAULT NULL, 
    depto INT(11) DEFAULT NULL,
    PRIMARY KEY (matricula)
);

CREATE TABLE departamento(
  coddep int NOT NULL,
  nome varchar(15) NOT NULL,
  gerente int(11) DEFAULT NULL,
  dataini DATE DEFAULT NULL,	
  PRIMARY KEY (coddep)
);

CREATE TABLE projeto(
	codproj INT(11) NOT NULL AUTO_INCREMENT,
    nome VARCHAR (45) NOT NULL,
    local VARCHAR (15) DEFAULT NULL,
    depart INT(11) DEFAULT NULL,
	PRIMARY KEY (codproj)	
);

CREATE TABLE alocacao( 
    matric INT(11) NOT NULL AUTO_INCREMENT,
    codigop INT NOT NULL,
    horas INT NOT NULL,
    PRIMARY KEY (matric, codigop)
);

CREATE TABLE dependente(
	coddepend INT(11) NOT NULL AUTO_INCREMENT,
    matricula INT(11) NOT NULL,
    nome VARCHAR (45) DEFAULT NULL,
    sexo VARCHAR (10) DEFAULT NULL,
	PRIMARY KEY (coddepend)
);


ALTER TABLE empregado ADD CONSTRAINT depto FOREIGN KEY (depto) REFERENCES departamento(coddep);

ALTER TABLE empregado ADD CONSTRAINT empregado FOREIGN KEY (supervisor) REFERENCES empregado(matricula);

ALTER TABLE departamento ADD CONSTRAINT gerente FOREIGN KEY (gerente) REFERENCES empregado(matricula);

ALTER TABLE projeto ADD CONSTRAINT depart FOREIGN KEY (depart) REFERENCES departamento(coddep);


ALTER TABLE dependente DROP FOREIGN KEY matricula;
ALTER TABLE projeto DROP FOREIGN KEY depart;
ALTER TABLE departamento DROP FOREIGN KEY gerente;
ALTER TABLE empregado DROP FOREIGN KEY depto;