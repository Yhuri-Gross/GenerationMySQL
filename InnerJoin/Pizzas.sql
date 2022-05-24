CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(255),
    tamanho VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(255),
    valor DOUBLE,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (sabor, tamanho) VALUES ("Doce","Grande"), ("Doce","Pequena"), ("Doce","Media"), 
("Salgada","Grande"), ("Salgada","media"), ("Salgada","Pequena");

INSERT INTO tb_pizzas (nome, ingredientes, valor, categoria_id) 
VALUES ("Calabresa", "molho de tomate e calabresa em rodelas", 32.45, 4),
("Portuguesa", "ovo cozido, presunto, cebola, ervilha, molho de tomate e azeite", 102, 4),
("Muçarela", "queijo muçarela ", 10, 5),
("Marguerita", "manjericão, rodelas de tomate fresco, azeitona, queijo muçarela e orégano salpicado", 54, 6),
("Carne seca com banana", "carne seca, cebolinha, banana e requeijão", 293, 1),
("Francesa", "cogumelos com queijo cremoso", 133, 2),
("Brigadeiro", "chocolate", 20, 3);

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_pizzas.categoria_id = tb_categoria.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_pizzas.categoria_id = tb_categoria.id WHERE categoria_id = 3;