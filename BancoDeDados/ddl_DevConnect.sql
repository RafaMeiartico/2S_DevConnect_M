--DDL CRIAR OS BANCOS

CREATE DATABASE bd_DevConect

USE bd_DevConect

--TABELA USUARIO
CREATE TABLE tb_usuario(
id						INT					IDENTITY (1,1)		PRIMARY KEY
,nome_completo			NVARCHAR(255)		NOT NULL
,nome_usuario			NVARCHAR(50)		UNIQUE
,email					NVARCHAR(255)		UNIQUE				NOT NULL
,senha					NVARCHAR(50)		NOT NULL
,foto_perfil_usuario	NVARCHAR(150)		NULL
);

SELECT * FROM tb_usuario


--TABELA PUBLICAÇÃO
CREATE TABLE tb_publicacao(
id					INT				IDENTITY (1,1)	PRIMARY KEY
,descricao			NVARCHAR(280)	NOT NULL
,imagem_url			NVARCHAR(150)	NULL
,data_publicacao	DATE			NOT NULL
,id_usuario			INT				NOT NULL

FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
);

SELECT * FROM tb_publicacao


--TABELA COMENTARIO
CREATE TABLE tb_comentario(
id					INT				IDENTITY (1,1)	PRIMARY KEY
,texto				NVARCHAR(1000)	NOT NULL
,data_comentario	DATETIME		NOT NULL
,id_publicacao      INT				NOT NULL

FOREIGN KEY (id_publicacao)	REFERENCES tb_publicacao(id)
);

SELECT * FROM tb_comentario


--TABELA CURTIDA
CREATE TABLE tb_curtida(
id			INT		IDENTITY (1,1)	PRIMARY KEY

,id_usuario INT		NOT NULL
FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)

,id_publicacao INT		NOT NULL
FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id)
);

SELECT * FROM tb_curtida



--TABELA SEGUIDOR - TABELA INTERMEDIÁRIA
CREATE TABLE tb_seguidor(
id_seguindo INT NOT NULL
,id_seguidor INT NOT NULL

PRIMARY KEY(id_seguindo, id_seguidor)
);

SELECT * FROM tb_seguidor