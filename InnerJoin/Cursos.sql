CREATE DATABASE db_curso;

USE db_curso;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    quantidade INT,
    valor DOUBLE,
    categorias_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo) VALUES ("EAD"), ("Semipresencial"), ("Presencial");

INSERT INTO tb_cursos (nome, quantidade, valor, categorias_id) VALUES ("Java", 3, 45, 1), 
("HTML", 2, 53, 3), ("SQL", 3, 150, 2), ("PHP", 1, 0, 2), ("Javascript", 2, 100, 3);

SELECT * FROM tb_cursos WHERE valor > 50;

SELECT * FROM tb_cursos WHERE valor BETWEEN 0 AND 100;

SELECT * FROM tb_cursos WHERE nome LIKE "%c%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categorias_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categorias_id = tb_categorias.id WHERE categorias_id = 2;