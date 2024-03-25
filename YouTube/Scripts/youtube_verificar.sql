show tables;

SELECT usuario.*, canal.nombre_canal AS nombreCanal
FROM usuario
INNER JOIN subscripcion ON usuario.Email = subscripcion.UsuarioEmail
INNER JOIN canal ON subscripcion.canalID = id_canal;


show create table usuario;

EXPLAIN SELECT * from usuario;