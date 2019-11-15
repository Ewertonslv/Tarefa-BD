
INSERT INTO empregado(nome , endereco, salario, supervisor, depto)VALUES('João da silva',"Caico", 300, 5, 1);
INSERT INTO empregado(nome , endereco, salario, supervisor, depto)VALUES('Maria Firmina',"Caico", 400, 1, 2);
INSERT INTO empregado(nome , endereco, salario, supervisor, depto)VALUES('Francisco pedro',"Caico", 350, 2, 3);
INSERT INTO empregado(nome , endereco, salario, supervisor, depto)VALUES('Manoel Azevedo',"Caico", 360, 3, 4);
INSERT INTO empregado(nome , endereco, salario, supervisor, depto)VALUES('Adalberto pereira',"Caico", 600, 4, 5);


INSERT INTO departamento(coddep, nome, gerente, dataini)VALUES(1,'DCT', 1, '2019-12-10');
INSERT INTO departamento(coddep, nome, gerente, dataini)VALUES(2, 'DCEA', 2, '2019-11-10');
INSERT INTO departamento(coddep, nome, gerente, dataini)VALUES(3, 'DIR', 3, '2019-10-10');
INSERT INTO departamento(coddep, nome, gerente, dataini)VALUES(4, 'DEDUC', 4, '2019-9-10');
INSERT INTO departamento(coddep, nome, gerente, dataini)VALUES(5, 'DEGEO', 5, '2019-8-10');

INSERT INTO projeto(nome, local, depart)VALUES('PWED', 'Lab I', 1);
INSERT INTO projeto(nome, local, depart)VALUES('PWED', 'Lab III', 2);
INSERT INTO projeto(nome, local, depart)VALUES('PWED', 'Lab II', 3);
INSERT INTO projeto(nome, local, depart)VALUES('PWED', 'Biblioteca', 4);
INSERT INTO projeto(nome, local, depart)VALUES('PWED', 'Lab IV', 5);
select * from projeto;

INSERT INTO alocacao(codigop, horas)VALUES(1, 60);
INSERT INTO alocacao(codigop, horas)VALUES(2, 90);
INSERT INTO alocacao(codigop, horas)VALUES(3, 60);
INSERT INTO alocacao(codigop, horas)VALUES(4, 120);
INSERT INTO alocacao(codigop, horas)VALUES(5, 30);

INSERT INTO dependente(matricula, nome, sexo)VALUES(1, 'Maria josé', 'Feminino');
INSERT INTO dependente(matricula, nome, sexo)VALUES(2, 'Francisco da silva', 'Masculino');
INSERT INTO dependente(matricula, nome, sexo)VALUES(3, 'Maria do ó', 'Feminino');
INSERT INTO dependente(matricula, nome, sexo)VALUES(4, 'Alberto de Medeiros', 'Masculino');
INSERT INTO dependente(matricula, nome, sexo)VALUES(5, 'Mariana da Rocha', 'Feminino');

