CREATE DATABASE DB_GENERATION_ONLINE;
USE DB_GENERATION_ONLINE;

CREATE TABLE TB_PERSONAGENS(
ID BIGINT(5) AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
NIVEL INT(3) NOT NULL,
DINHEIRO BIGINT(5),
VIVO BOOLEAN,
ATK BIGINT(4) NOT NULL,
DEF BIGINT(4) NOT NULL,
HP BIGINT(4) NOT NULL,
MP BIGINT(4) NOT NULL,

CLASSE_ID BIGINT(5) NOT NULL,
PRIMARY KEY(ID),
FOREIGN KEY (CLASSE_ID) REFERENCES TB_CLASSES(ID)
);

CREATE TABLE TB_CLASSES(
ID BIGINT(5) AUTO_INCREMENT,
NOME VARCHAR(20) NOT NULL,
HABILIDADES VARCHAR(50),
AMBIDESTRO BOOLEAN,
PRIMARY KEY (ID)
);
INSERT INTO TB_CLASSES (NOME,HABILIDADES,AMBIDESTRO) VALUES ("LADINO","+ ESQUIVA",TRUE);
INSERT INTO TB_CLASSES (NOME,HABILIDADES,AMBIDESTRO) VALUES ("BÁRBARO","FÚRIA",TRUE);
INSERT INTO TB_CLASSES (NOME,HABILIDADES,AMBIDESTRO) VALUES ("CLÉRIGO","CURA", FALSE);
INSERT INTO TB_CLASSES (NOME,HABILIDADES,AMBIDESTRO) VALUES ("ARQUEIRO","+ PRECISÃO", FALSE);
INSERT INTO TB_CLASSES (NOME,HABILIDADES,AMBIDESTRO) VALUES ("MAGO","+ INTELIGÊNCIA", FALSE);
INSERT INTO TB_CLASSES (NOME,HABILIDADES,AMBIDESTRO) VALUES ("PALADINO","RESISTÊNCIA CONTRA MORTOS-VIVOS",FALSE);

INSERT INTO TB_PERSONAGENS (NOME,NIVEL,DINHEIRO,VIVO,ATK,DEF,HP,MP,CLASSE_ID) 
VALUES ("Thorir",3,50,true,1100,1700,5000,1000,6);
INSERT INTO TB_PERSONAGENS (NOME,NIVEL,DINHEIRO,VIVO,ATK,DEF,HP,MP,CLASSE_ID) 
VALUES ("Luthien",15,800,true,4000,2000,7500,10000,5);
INSERT INTO TB_PERSONAGENS (NOME,NIVEL,DINHEIRO,VIVO,ATK,DEF,HP,MP,CLASSE_ID) 
VALUES ("Legolas",5,100,true,2000,1000,3000,1000,4);
INSERT INTO TB_PERSONAGENS (NOME,NIVEL,DINHEIRO,VIVO,ATK,DEF,HP,MP,CLASSE_ID) 
VALUES ("Kenny",1,0,false,100,100,50,50,4);
INSERT INTO TB_PERSONAGENS (NOME,NIVEL,DINHEIRO,VIVO,ATK,DEF,HP,MP,CLASSE_ID) 
VALUES ("Pe. Quevedo",10,300,true,2000,1000,2000,3000,3);
INSERT INTO TB_PERSONAGENS (NOME,NIVEL,DINHEIRO,VIVO,ATK,DEF,HP,MP,CLASSE_ID) 
VALUES ("Conan",5,50,true,3000,2000,2000,100,2);
INSERT INTO TB_PERSONAGENS (NOME,NIVEL,DINHEIRO,VIVO,ATK,DEF,HP,MP,CLASSE_ID) 
VALUES ("Lupin",7,4000,true,3000,1000,2000,100,1);
INSERT INTO TB_PERSONAGENS (NOME,NIVEL,DINHEIRO,VIVO,ATK,DEF,HP,MP,CLASSE_ID) 
VALUES ("Bojji",1,5000,true,3000,100,300,100,1);

SELECT * FROM TB_PERSONAGENS WHERE ATK>2000;
SELECT * FROM TB_PESONAGENS WHERE DEF BETWEEN 1000 AND 2000;
SELECT * FROM TB_PERSONAGENS WHERE NOME LIKE "%C%";

SELECT * FROM TB_PERSONAGENS 
INNER JOIN TB_CLASSES ON TB_CLASSES.ID = TB_PERSONAGENS.CLASSE_ID WHERE TB_CLASSES.NOME = "ARQUEIRO";

SELECT * FROM TB_PERSONAGENS;
SELECT * FROM TB_CLASSES

