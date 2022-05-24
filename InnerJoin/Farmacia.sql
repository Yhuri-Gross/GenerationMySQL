CREATE DATABASE db_farmacia;

USE db_farmacia;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    receita BOOLEAN,
    tipo VARCHAR (255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    valor DOUBLE,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (receita, tipo) VALUES (TRUE, "Homeopático"), (TRUE, "Alopático"),
(TRUE, "Manipulado"), (TRUE, "Genérico"), (TRUE, "Fitoterápico");

INSERT INTO tb_produtos (nome, quantidade, valor, categoria_id)
 VALUES ("Ginko Biloba", 4, 54, 5), ("Buchinha paulista", 6, 554, 1), ("Ems", 4, 4, 4),
 ("Amoxicilina", 2, 12, 4), ("Bupropiona ", 89, 104, 3), ("Orlistate", 4, 154, 3),
 ("Agiolax ", 4, 54, 5), ("Dorflex ", 4, 10, 2);
 
 SELECT * FROM tb_produtos WHERE valor > 50;
 
 SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;
 
 SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
 
 SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
 
  SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE categoria_id = 3;