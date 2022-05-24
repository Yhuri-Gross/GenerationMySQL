CREATE DATABASE db_acougue;

USE db_acougue; 

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    catego INT,
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

INSERT INTO tb_categorias (tipo, catego) VALUES ("Carne vermelha ", 2), ("Carne branca ", 2),
("Carne vermelha ", 3), ("Carne vermelha ", 1), ("Carne branca ", 4);

INSERT INTO tb_produtos (nome, valor, quantidade, categoria_id) VALUES ("Filé Mignon", 100, 4, 1),
("Maminha", 55, 175, 3), ("Picanha", 55, 5, 4), ("Patinho", 22, 4, 3), ("Músculo", 553, 4, 1),
("Frango", 10, 55, 5);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE categoria_id = 3;