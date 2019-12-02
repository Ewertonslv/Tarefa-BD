DROP TABLE IF EXISTS empregado CASCADE;
DROP TABLE IF EXISTS departamento CASCADE;
DROP TABLE IF EXISTS projeto CASCADE;
DROP TABLE IF EXISTS alocacao CASCADE;
DROP TABLE IF EXISTS dependente CASCADE;

CREATE DATABASE dml_db;
USE dml_db;

CREATE TABLE empregado(
	matricula int(11) NOT NULL,
    nome varchar(45) NOT NULL, 
    endereco varchar(100) NOT NULL,
    salario INT NOT NULL,
    supervisor INT NOT NULL, 
    depto INT NOT NULL,
    PRIMARY KEY (matricula)
);

CREATE TABLE departamento(
  coddep int NOT NULL,
  nome varchar(45) NOT NULL,
  gerente int NOT NULL,
  dataini DATE,	
  PRIMARY KEY (coddep)
);

CREATE TABLE projeto(
	codproj INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR (45) NOT NULL,
    local VARCHAR (45) NOT NULL,
    depart INT NOT NULL,
	PRIMARY KEY (codproj)
);

CREATE TABLE alocacao( 
    matric INT NOT NULL AUTO_INCREMENT,
    codigop INT NOT NULL,
    horas INT NOT NULL,
    PRIMARY KEY (matric, codigop)
);

CREATE TABLE dependente(
	coddepend INT NOT NULL AUTO_INCREMENT,
    matricula INT NOT NULL,
    nome VARCHAR (45) NOT NULL,
    sexo VARCHAR (10) NOT NULL,
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