CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    nota DECIMAL (2, 1),
    idade INT,
    turma VARCHAR(10),
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome, nota, idade, turma) VALUES ("Yhuri", 8.0, 24, "5º A");
INSERT INTO tb_estudantes(nome, nota, idade, turma) VALUES ("Marjory", 9.0, 12, "5º A");
INSERT INTO tb_estudantes(nome, nota, idade, turma) VALUES ("Douglas", 6.0, 33, "5º A");
INSERT INTO tb_estudantes(nome, nota, idade, turma) VALUES ("Felipe", 3.0, 42, "5º A");
INSERT INTO tb_estudantes(nome, nota, idade, turma) VALUES ("Leonardo", 2.0, 100, "5º A");
INSERT INTO tb_estudantes(nome, nota, idade, turma) VALUES ("Maria", 3.0, 29, "5º A");
INSERT INTO tb_estudantes(nome, nota, idade, turma) VALUES ("Daniel", 4.5, 27, "5º A");
INSERT INTO tb_estudantes(nome, nota, idade, turma) VALUES ("Alice", 8.0, 20, "5º A");

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET idade = 55 WHERE id = 5;