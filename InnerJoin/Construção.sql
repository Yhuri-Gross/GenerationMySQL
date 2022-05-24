CREATE DATABASE db_construcao;

USE db_construcao;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR (255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DOUBLE,
    quantidade INT,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo) VALUES("Concreto"), ("Aço"), ("Cal"),
("Tijolo cerâmico"), ("Bloco de concreto");

INSERT INTO tb_produtos (nome, valor, quantidade, categoria_id) VALUES ("Parede", 50, 5, 1),
("Janela", 76, 5, 3), ("Piso", 33, 4, 2),("Porta", 345, 2, 1),("Rampa", 100, 4, 5);

SELECT * FROM tb_produtos WHERE valor > 100;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id; 

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE categoria_id = 2; 