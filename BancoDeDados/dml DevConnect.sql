--DML ESTRUTURAR AS TABELAS

USE bd_DevConect

--REGISTRO TABELA USUÁRIO
INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_usuario)
VALUES('Rafaela Meirelles Artico', 'Rafameiar', 'rafameiar@gmail.com', '16lhHmN8Ey', 'www.com.DevConnect/rafa');

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_usuario)
VALUES('Maria Eduarda dos Santos Cordeiro', 'Maduda', 'madudinha@gmail.com', 'maria Edu', 'www.com.DevConnect/mariaEduarda'),
('Anna Beatriz de Arenas Henkel', 'AnaBi', 'beatrizanna@gmail.com', 'Anna Bi', 'www.com.DevConnect/Anna-Beatriz');

SELECT * FROM tb_usuario


--REGISTRO TABELA USUÁRIO
INSERT INTO tb_publicacao(descricao, imagem_url, data_publicacao, id_usuario)
VALUES('em um passeio com os meus amigos', 'www.com.DevConnect/passeio', '2025/10/03', 1);

SELECT * FROM tb_publicacao

--REGISTRO COMENTARIO
INSERT INTO tb_comentario(texto, data_comentario, id_publicacao)
VALUES('esse dia foi muito incrivel!', '01:38:56 2025/10/12', 1);

SELECT * FROM tb_comentario


--REGISTRO CURTIDA
INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES(1,1);

INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES
(2,1),
(3,1);

SELECT * FROM tb_curtida


--REGISTRO DA TABELA INTERMEDIARIA SEGUIDOR
INSERT INTO tb_seguidor(id_seguindo, id_seguidor)
VALUES(1,2);

SELECT * FROM tb_seguidor