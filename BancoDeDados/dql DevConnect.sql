--DQL CONSULTAR REGISTROS

USE bd_DevConect

SELECT * FROM tb_usuario

SELECT * FROM tb_curtida

--EXIBE SOMENTE O USUARIO '1' QUE CURTIU PUBLICAÇÕES
SELECT id_usuario
FROM tb_curtida
WHERE id_usuario = '1'

--EXIBE QUANTOS USUARIOS TEM

SELECT COUNT (id) AS qnt_de_usuarios FROM tb_usuario

