CREATE DATABASE db_games;

USE db_games;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    habilidade VARCHAR(300),
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
	forca INT,
    inteligencia INT,
    carisma INT,
    sabedoria INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, habilidade) VALUES ("Mago","Combate a distância com magias");
INSERT INTO tb_classes (nome, habilidade) VALUES ("Caçador","Alto dano");
INSERT INTO tb_classes (nome, habilidade) VALUES ("Guerreiro","Alta resistência");
INSERT INTO tb_classes (nome, habilidade) VALUES ("Ladino","Baixa resistência mas com muitos meios de não ser atingido");
INSERT INTO tb_classes (nome, habilidade) VALUES ("Clérigo","oco principal em dar suporte aos membros do grupo");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome, forca, inteligencia, carisma, sabedoria, classe_id) 
VALUES ("Yhuri", 442, 2000, 3000, 7332, 1), 
("Marjory", 2000, 2000, 4000, 532, 2), ("Carlos", 987, 532, 7453, 233, 3), 
("Gustavo", 3000, 220, 654, 323, 1), ("Pedro", 5323, 986, 434, 3, 4),
("Maria", 42, 5645, 656, 87, 1), ("Vinicius", 4432, 20, 43, 2333, 5),
("Henrique", 4, 2, 5, 4, 3);

SELECT * FROM tb_personagens WHERE forca > 2000;

SELECT * FROM tb_personagens WHERE inteligencia BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE classe_id = 2;