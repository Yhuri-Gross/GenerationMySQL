CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    marca VARCHAR (255),
    valor DECIMAL (6, 2),
    quantidade INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, marca, valor, quantidade) VALUES ("Camisa", "Nike", 200, 3);
INSERT INTO tb_produtos (nome, marca, valor, quantidade) VALUES ("Camisa", "Nike", 200, 3);
INSERT INTO tb_produtos (nome, marca, valor, quantidade) VALUES ("Camisa", "Nike", 200, 3);
INSERT INTO tb_produtos (nome, marca, valor, quantidade) VALUES ("Camisa", "Nike", 200, 3);
INSERT INTO tb_produtos (nome, marca, valor, quantidade) VALUES ("Camisa", "Nike", 200, 3);
INSERT INTO tb_produtos (nome, marca, valor, quantidade) VALUES ("Bermuda", "Adidas", 2000, 9);
INSERT INTO tb_produtos (nome, marca, valor, quantidade) VALUES ("Calça", "Umbro", 3400, 5);
INSERT INTO tb_produtos (nome, marca, valor, quantidade) VALUES ("Blusa", "Lacoste", 5000, 1);

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET nome = "Blusa", marca = "Hollister", valor = 645  WHERE id = 3;
UPDATE tb_produtos SET nome = "Calça", marca = "Hollister", valor = 43  WHERE id = 4;
UPDATE tb_produtos SET nome = "Bermuda", marca = "Calvin Klein", valor = 98  WHERE id = 2;
UPDATE tb_produtos SET nome = "Bolsa", marca = "Calvin Klein", valor = 10  WHERE id = 5;