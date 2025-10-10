--DML ESTRUTURAR AS TABELAS

USE bd_DevConect

--REGISTRO TABELA USUÁRIO
INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_usuario)
VALUES('Rafaela Meirelles Artico', 'Rafameiar', 'rafameiar@gmail.com', '16lhHmN8Ey', 'www.com.DevConnect/rafa');

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_usuario)
VALUES('Maria Eduarda dos Santos Cordeiro', 'Maduda', 'madudinha@gmail.com', 'maria Edu', 'www.com.DevConnect/mariaEduarda'),
('Anna Beatriz de Arenas Henkel', 'AnaBi', 'beatrizanna@gmail.com', 'Anna Bi', 'www.com.DevConnect/Anna-Beatriz');

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_usuario)
VALUES
('Anne Nicole de Lima Pereira', 'annex', 'Anne@gmail.com', 'Picanha!@#', 'www.com.DevConnect/AnneNicole'),
('Ivan Aquino da Silva', 'Ivannn', 'Ivan@gmail.com', 'Zumbidospalmares', 'www.com.DevConnect/ivan'),
('Kaua Fidalgo Droppa Garcia', 'k7.Fidalgo', 'fidalgo@gmail.com', 'hollownight', 'www.com.DevConnect/fidalgo');

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_usuario)
VALUES('Luisa Meirelles Artico', 'Luli', 'luisa@gmail.com', 'luli123', 'www.com.DevConnect/luisa')

SELECT * FROM tb_usuario

--REGISTRO TABELA USUÁRIO
INSERT INTO tb_publicacao(descricao, imagem_url, data_publicacao, id_usuario)
VALUES('em um passeio com os meus amigos', 'www.com.DevConnect/passeio', '2025/10/03', 1),
('Praia', 'www.com.DevConnect/anaBI', '2025/11/19', 3),
(':)', 'www.com.DevConnect/k7.Fidalgo', '2025/11/21', 6);

SELECT * FROM tb_publicacao


SELECT * FROM tb_comentario;



--REGISTRO CURTIDA
INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES(1,1);

INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES
(2,1),
(3,1);

SELECT * FROM tb_curtida;


--REGISTRO DA TABELA INTERMEDIARIA SEGUIDOR
INSERT INTO tb_seguidor(id_seguindo, id_seguidor)
VALUES(1,2);

INSERT INTO tb_seguidor(id_seguindo, id_seguidor)
VALUES
(1,5),
(2,6),
(6,3),
(5,3),
(5,2),
(4,1),
(3,2),
(1,3);

SELECT * FROM tb_seguidor