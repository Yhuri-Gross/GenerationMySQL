CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL (10, 2) NOT NULL,
    ativo BOOLEAN,
    idade int,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, salario, ativo, idade) VALUES ("Yhuri", 60000, true, 25);

INSERT INTO tb_colaboradores (nome, salario, ativo, idade) VALUES ("Marjory", 70000, true, 27);

INSERT INTO tb_colaboradores (nome, salario, ativo, idade) VALUES ("Carlos", 2000, true, 18);

INSERT INTO tb_colaboradores (nome, salario, ativo, idade) VALUES ("Maicon", 5000, true, 33);

INSERT INTO tb_colaboradores (nome, salario, ativo, idade) VALUES ("Vinicius", 3300, true, 50);

INSERT INTO tb_colaboradores (nome, salario, ativo, idade) VALUES ("Felipe", 30, true, 60);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 100 WHERE id = 6;
