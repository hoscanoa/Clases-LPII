CREATE DATABASE BD_SESION;

USE BD_SESION;

CREATE TABLE TB_CATEGORIA(
COD_CAT      SMALLINT NOT NULL AUTO_INCREMENT,
DES_CAT      VARCHAR(30),
EST_CAT      CHAR(1),
 PRIMARY KEY (COD_CAT)
);


CREATE TABLE TB_PRODUCTO(
COD_PRO      SMALLINT NOT NULL AUTO_INCREMENT,
NOM_PRO      VARCHAR(50),
DES_PRO      TEXT,
PRE_PRO      REAL,
STK_PRO      INT,
COD_CAT      SMALLINT,
EST_PRO      CHAR(1),
IMG_PRO   VARCHAR(100),
PRIMARY KEY (COD_PRO),
FOREIGN KEY (COD_CAT) REFERENCES TB_CATEGORIA(COD_CAT)
);

CREATE TABLE TB_COMENTARIO(
COD_COM      SMALLINT NOT NULL AUTO_INCREMENT,
COD_PRO      SMALLINT,
DIR_COM      VARCHAR(30),
PUN_COM      VARCHAR(30),
DES_COM      TEXT,
PRIMARY KEY (COD_COM),
FOREIGN KEY (COD_PRO) REFERENCES TB_PRODUCTO(COD_PRO)
);


CREATE TABLE TB_USUARIO(
COD_USU  SMALLINT NOT NULL AUTO_INCREMENT,
LOG_USU  VARCHAR(15),
PAS_USU  VARCHAR(15),
NOM_USU  VARCHAR(30),
APE_USU  VARCHAR(50),
EDA_USU  SMALLINT,
EST_USU  CHAR(1),
PRIMARY KEY(COD_USU)
);



CREATE TABLE TB_CLIENTE(
COD_CLI  SMALLINT NOT NULL AUTO_INCREMENT,
NOM_CLI  VARCHAR(30),
APE_CLI  VARCHAR(50),
SEX_CLI  VARCHAR(1),
LOG_CLI  VARCHAR(15),
PAS_CLI  VARCHAR(15),
PRIMARY KEY(COD_CLI)
);


CREATE TABLE TB_PEDIDO(
COD_PED      SMALLINT NOT NULL AUTO_INCREMENT,
FEC_PED      DATE,
COD_CLI   SMALLINT,
EST_PED      CHAR(1),
PRIMARY KEY (COD_PED),
FOREIGN KEY (COD_CLI) REFERENCES TB_CLIENTE(COD_CLI)
);

CREATE TABLE TB_DETALLE_PEDIDO(
COD_PED    SMALLINT,
COD_PRO    SMALLINT,
PRE_PRO    REAL,
CAN_PRO    SMALLINT,
PRIMARY KEY (COD_PED,COD_PRO),
FOREIGN KEY (COD_PED) REFERENCES TB_PEDIDO(COD_PED),
FOREIGN KEY (COD_PRO) REFERENCES TB_PRODUCTO(COD_PRO) 
);


INSERT INTO TB_CATEGORIA VALUES (NULL,'Pulsera','1');
INSERT INTO TB_CATEGORIA VALUES (NULL,'Aretes','1');
INSERT INTO TB_CATEGORIA VALUES (NULL,'Anillos','1');


INSERT INTO TB_PRODUCTO VALUES (
NULL,
'Pulsera del lazuli de Lapis, Enigma',
'Showcased en un punto ancho, pulido, tres piedras preciosas irradian misterio azul profundo.  Neeru Goel combina el encanto natural del lazuli de los lapis con plata esterlina.  Las colmenas argent afilan la pulsera en negrilla, trayendo estilo indio tradicional a un diseo encantador.',
320,
20,
1,
'1',
'images/items/b01_1.jpg'
);


INSERT INTO TB_PRODUCTO VALUES (
NULL,
'Pulsera de Amethyst,Dewdrops lilac',
'Los dewdrops de la piedra preciosa confieren una elegancia cristalina a las flores en esta pulsera hermosa.  Diseos y mano-artes de Beenu el pedazo en plata esterlina con los amethysts chispeantes.  El puno de encaje hace un accesorio mesmerizing para la preparacin con estilo.',
150,
50,
1,
'1',
'images/items/b02_1.jpg'
);


INSERT INTO TB_PRODUCTO VALUES (
NULL,
'Aretes de la malaquita,fuerza de la vida',
'La malaquita verde implica vida, mientras que la gema seala hacia arriba en un gesto del crecimiento.  Wararat Supasirisuk crea los pendientes del atontamiento de la plata esterlina brillante (0,925).  La malaquita se piensa extensamente para promover la purificacin y sueos curativos as como el dibujo hacia fuera de energa negativa.',
470,
15,
2,
'1',
'images/items/e08_1.jpg'
);


INSERT INTO TB_PRODUCTO VALUES (
NULL,
'Anillo,libelula de plata ',
'Altsimo en gossamer se va volando, las liblulas anuncian la llegada del verano en los jardines de Balinese.  Rusdiarta forma un par como pendientes.  Suspendido en los alambres esterlinas, las criaturas de plata se parecen bailar.',
640,
35,
2,
'1',
'images/items/e09_1.jpg'
);


INSERT INTO TB_COMENTARIO VALUES (
NULL,
1,
'usuario@hotmail.com',
'images/puntuacion/4.gif',
'Esta joya es excelente, la verdad conbina con todo:sonrisa: :sonrisa: '
);

INSERT INTO TB_COMENTARIO VALUES (
NULL,
2,
'usuario@hotmail.com',
'images/puntuacion/5.gif',
'Realmente el diseo es grandioso :sonrisa: :sonrisa: :beso: '
);


INSERT INTO TB_COMENTARIO VALUES (
NULL,
3,
'usuario@hotmail.com',
'images/puntuacion/1.gif',
'No sirve :confuso: :enfadado: '
);


INSERT INTO TB_COMENTARIO VALUES (
NULL,
4,
'usuario@hotmail.com',
'images/puntuacion/5.gif',
'Es excelente :risa: :risa: :risa: '
);

INSERT INTO TB_COMENTARIO VALUES (
NULL,
1,
'usuario@hotmail.com',
'images/puntuacion/5.gif',
'Me ayudo Mucho'
);


INSERT INTO TB_COMENTARIO VALUES (
NULL,
1,
'usuario@hotmail.com',
'images/puntuacion/2.gif',
'No sirve :enfadado: :enfadado: '
);


INSERT INTO TB_COMENTARIO VALUES (
NULL,
2,
'usuario@hotmail.com',
'images/puntuacion/2.gif',
'No sirve :enfadado: :enfadado: '
);


INSERT INTO TB_COMENTARIO VALUES (
NULL,
2,
'usuario@hotmail.com',
'images/puntuacion/5.gif',
'Excelente :beso: :beso: :beso: '
);

INSERT INTO TB_CLIENTE VALUES (NULL,'Luis','Alayo Salazar','M','luis1','luis1');
INSERT INTO TB_CLIENTE VALUES (NULL,'Charo','Camargo Salazar','M','aaaa1','bbbb1');
INSERT INTO TB_CLIENTE VALUES (NULL,'Esther','Villar Dezza','M','cccc1','cccc1');
INSERT INTO TB_CLIENTE VALUES (NULL,'Ruby','Canturin Sandoval','F','bbbb1','bbbb1');
INSERT INTO TB_CLIENTE VALUES (NULL,'Alejandro','Turin Urquizo','M','mmmm','mmmm');

INSERT INTO TB_PEDIDO VALUES (NULL,'2006-01-03',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-01-04',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-01-10',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-01-20',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-02-01',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-02-10',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-02-10',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-02-18',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-03-01',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-03-07',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-03-10',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-03-15',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-04-01',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-04-07',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-04-10',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-04-15',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-05-01',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-05-07',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-05-10',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-05-15',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-06-01',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-06-07',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-06-10',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-06-15',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-07-01',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-07-07',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-07-10',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-07-15',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-08-01',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-08-07',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-08-10',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-08-15',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-09-01',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-09-07',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-09-10',3,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-09-15',3,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-10-01',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-10-07',3,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-10-10',3,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-10-15',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-11-01',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-11-07',3,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-11-10',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-11-15',3,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-12-01',1,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-12-07',3,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-12-10',2,'P');
INSERT INTO TB_PEDIDO VALUES (NULL,'2006-12-15',2,'P');


INSERT INTO TB_DETALLE_PEDIDO VALUES (1,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (1,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (1,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (1,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (2,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (2,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (2,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (2,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (3,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (3,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (3,3,470,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (3,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (4,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (4,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (4,3,470,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (4,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (5,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (5,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (5,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (5,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (6,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (6,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (6,3,470,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (6,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (7,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (7,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (7,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (7,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (8,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (8,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (8,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (8,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (9,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (9,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (9,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (9,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (10,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (10,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (10,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (10,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (11,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (11,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (11,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (11,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (12,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (12,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (12,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (12,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (13,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (13,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (13,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (13,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (14,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (14,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (14,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (14,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (15,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (15,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (15,3,470,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (15,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (16,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (16,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (16,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (16,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (17,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (17,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (17,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (17,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (18,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (18,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (18,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (18,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (19,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (19,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (19,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (19,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (20,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (20,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (20,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (20,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (21,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (21,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (21,3,470,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (21,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (22,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (22,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (22,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (22,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (23,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (23,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (23,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (23,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (24,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (24,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (24,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (24,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (25,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (25,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (25,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (25,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (26,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (26,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (26,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (26,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (27,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (27,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (27,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (27,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (28,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (28,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (28,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (28,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (29,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (29,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (29,3,470,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (29,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (30,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (30,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (30,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (30,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (31,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (31,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (31,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (31,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (32,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (32,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (32,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (32,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (33,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (33,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (33,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (33,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (34,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (34,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (34,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (34,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (35,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (35,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (35,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (35,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (36,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (36,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (36,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (36,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (37,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (37,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (37,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (37,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (38,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (38,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (38,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (38,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (39,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (39,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (39,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (39,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (40,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (40,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (40,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (40,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (41,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (41,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (41,3,470,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (41,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (42,1,320,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (42,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (42,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (42,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (43,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (43,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (43,3,470,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (43,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (44,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (44,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (44,3,470,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (44,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (45,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (45,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (45,3,470,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (45,4,640,3);

INSERT INTO TB_DETALLE_PEDIDO VALUES (46,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (46,2,150,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (46,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (46,4,640,1);

INSERT INTO TB_DETALLE_PEDIDO VALUES (47,1,320,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (47,2,150,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (47,3,470,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (47,4,640,2);

INSERT INTO TB_DETALLE_PEDIDO VALUES (48,1,320,1);
INSERT INTO TB_DETALLE_PEDIDO VALUES (48,2,150,3);
INSERT INTO TB_DETALLE_PEDIDO VALUES (48,3,470,2);
INSERT INTO TB_DETALLE_PEDIDO VALUES (48,4,640,3);

INSERT INTO TB_USUARIO VALUES (NULL,'pepe','pepe','Juan','Perez',30,1);
INSERT INTO TB_USUARIO VALUES (NULL,'maria','maria','Maria','Fernandez',28,1);
INSERT INTO TB_USUARIO VALUES (NULL,'sonia','sonia','Sonia','Fabiola',35,1);
INSERT INTO TB_USUARIO VALUES (NULL,'pedro','pedro','Pedro','Ayala',40,1);

CREATE TABLE TB_MENU(
COD_MEN  SMALLINT NOT NULL AUTO_INCREMENT,
DES_MEN  VARCHAR(30),
PRIMARY KEY(COD_MEN)
);


CREATE TABLE TB_ACCESO(
COD_MEN      SMALLINT,
COD_USU      SMALLINT,
PRIMARY KEY (COD_MEN,COD_USU),
FOREIGN KEY (COD_MEN) REFERENCES TB_MENU(COD_MEN),
FOREIGN KEY (COD_USU) REFERENCES TB_USUARIO(COD_USU)
);


INSERT INTO TB_MENU VALUES (NULL,'Producto');
INSERT INTO TB_MENU VALUES (NULL,'Categoria');
INSERT INTO TB_MENU VALUES (NULL,'Usuario');
INSERT INTO TB_MENU VALUES (NULL,'Pedido');



INSERT INTO TB_ACCESO VALUES (1,1);
INSERT INTO TB_ACCESO VALUES (1,2);
INSERT INTO TB_ACCESO VALUES (2,1);
INSERT INTO TB_ACCESO VALUES (2,2);
INSERT INTO TB_ACCESO VALUES (2,3);
INSERT INTO TB_ACCESO VALUES (2,4);
INSERT INTO TB_ACCESO VALUES (3,1);
INSERT INTO TB_ACCESO VALUES (3,2);
INSERT INTO TB_ACCESO VALUES (4,1);
INSERT INTO TB_ACCESO VALUES (4,2);
INSERT INTO TB_ACCESO VALUES (4,3);
INSERT INTO TB_ACCESO VALUES (4,4);


CREATE TABLE TB_AUDITORIA(
COD_AUD  SMALLINT NOT NULL AUTO_INCREMENT,
NOM_USU  VARCHAR(30),
HOS_USU	 VARCHAR(30),
FEC_AUD  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(COD_AUD)
);