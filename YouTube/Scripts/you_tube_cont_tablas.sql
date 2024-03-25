-- Insertar datos en la tabla Usuario
INSERT INTO usuario (email, password, nombre_Usuario, fecha_Nacimiento, sexo, pais, codigo_Postal) 
VALUES
('usuario1@example.com', 'password1', 'Usuario1', '1990-01-01', 'M', 'País 1', '12345'),
('usuario2@example.com', 'password2', 'Usuario2', '1992-05-15', 'F', 'País 2', '54321'),
('usuario3@example.com', 'password3', 'Usuario3', '1985-11-30', 'M', 'País 3', '67890'),
('usuario4@example.com', 'password4', 'Usuario4', '1998-07-20', 'F', 'País 4', '98765'),
('usuario5@example.com', 'password5', 'Usuario5', '1982-03-10', 'M', 'País 5', '13579'),
('usuario6@example.com', 'password6', 'Usuario6', '1996-01-01', 'M', 'País 1', '12345'),
('usuario7@example.com', 'password7', 'Usuario7', '1992-08-15', 'F', 'País 2', '54321'),
('usuario8@example.com', 'password8', 'Usuario8', '1980-08-30', 'M', 'País 3', '67890'),
('usuario9@example.com', 'password9', 'Usuario9', '1988-04-20', 'F', 'País 4', '98765'),
('usuario10@example.com', 'password10','Usuario10', '1987-07-11', 'M', 'País 5', '13579');

-- Insertar datos en la tabla Video
INSERT INTO video (titulo, descripcion, tamano, nombreArchivo, duracion, thumbnail, num_Reproducciones, num_Likes, num_Dislikes, estado, fechaHoraPublicacion, usuarioEmail) 
VALUES
('Video 1', 'Descripción de mi primer video', 1024, 'video1.mp4', '00:05:30', 'thumbnail1.jpg', 100, 30, 2, 'publico', '2024-01-25 12:00:00', 'usuario1@example.com'),
('Video 2', 'Descripción de mi primer video', 1024, 'video2.mp4', '00:04:30', 'thumbnail2.jpg', 120, 10, 10, 'publico', '2024-01-30 12:00:00', 'usuario2@example.com'),
('Video 3', 'Descripción de mi primer video', 1024, 'video3.mp4', '00:03:30', 'thumbnail3.jpg', 90, 10, 2, 'publico', '2024-02-15 12:00:00', 'usuario3@example.com'),
('Video 4', 'Descripción de mi primer video', 1024, 'video4.mp4', '00:02:30', 'thumbnail4.jpg', 10, 5, 2, 'publico', '2024-02-25 12:00:00', 'usuario1@example.com'),
('Video 5', 'Descripción de mi primer video', 1024, 'video5.mp4', '00:06:30', 'thumbnail5.jpg', 10, 1, 2, 'publico', '2024-03-05 12:00:00', 'usuario1@example.com'),
('Video 6', 'Descripción de mi primer video', 1024, 'video6.mp4', '00:05:00', 'thumbnail6.jpg', 120, 15, 12, 'publico', '2024-03-15 12:00:00', 'usuario1@example.com'),
('Video 7', 'Descripción de mi primer video', 1024, 'video7.mp4', '00:05:10', 'thumbnail7.jpg', 100, 10, 10, 'publico', '2024-03-25 12:00:00', 'usuario5@example.com'),
('Video 8', 'Descripción de mi primer video', 1024, 'video8.mp4', '00:07:30', 'thumbnail8.jpg', 30, 10, 2, 'publico', '2024-03-25 14:00:00', 'usuario4@example.com'),
('Video 9', 'Descripción de mi primer video', 1024, 'video9.mp4', '00:05:00', 'thumbnail9.jpg', 20, 10, 2, 'publico', '2024-03-25 17:00:00', 'usuario4@example.com'),
('Video 10', 'Descripción de mi primer video', 1024, 'video10.mp4', '00:05:30', 'thumbnail10.jpg', 10, 1, 2, 'publico', '2024-03-25 19:00:00', 'usuario5@example.com');

-- Insertar datos en la tabla Etiqueta
INSERT INTO etiqueta (nombre_Etiqueta) 
VALUES
('Entretenimiento'), ('Educación'), ('Música'), ('Deportes'), ('Comedia');

-- Insertar datos de prueba en la tabla VideoEtiqueta (asociaremos etiquetas a los videos)
INSERT INTO videoEtiqueta (videoID, etiquetaID) 
VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

-- Insertar datos en la tabla Canal (crearemos un canal ficticio para cada usuario)
INSERT INTO canal (nombre_canal, descripcion, fechaCreacion, usuarioEmail) 
VALUES
('CanalUsuario1', 'Descripción del canal de Usuario1', '2024-03-25', 'usuario1@example.com'),
('CanalUsuario2', 'Descripción del canal de Usuario2', '2024-03-25', 'usuario2@example.com'),
('CanalUsuario3', 'Descripción del canal de Usuario3', '2024-03-25', 'usuario3@example.com'),
('CanalUsuario4', 'Descripción del canal de Usuario4', '2024-03-25', 'usuario4@example.com'),
('CanalUsuario5', 'Descripción del canal de Usuario5', '2024-03-25', 'usuario5@example.com');

-- Insertar datos en la tabla Subscripcion (suscribiremos a cada usuario a los canales de los otros cuatro usuarios)
INSERT INTO subscripcion (usuarioEmail, canalID) 
VALUES
('usuario1@example.com', 2), ('usuario1@example.com', 3), ('usuario1@example.com', 4), ('usuario1@example.com', 5),
('usuario2@example.com', 1), ('usuario2@example.com', 3), ('usuario2@example.com', 4), ('usuario2@example.com', 5),
('usuario3@example.com', 1), ('usuario3@example.com', 2), ('usuario3@example.com', 4), ('usuario3@example.com', 5),
('usuario4@example.com', 1), ('usuario4@example.com', 2), ('usuario4@example.com', 3), ('usuario4@example.com', 5),
('usuario5@example.com', 1), ('usuario5@example.com', 2), ('usuario5@example.com', 3), ('usuario5@example.com', 4);

-- Insertar datos en la tabla Playlist (crearemos una playlist ficticia para cada usuario)
INSERT INTO playlist (nombre, fechaCreacion, estado, usuarioEmail) 
VALUES
('PlaylistUsuario1', '2024-03-25', 'publica', 'usuario1@example.com'),
('PlaylistUsuario2', '2024-03-25', 'publica', 'usuario2@example.com'),
('PlaylistUsuario3', '2024-03-25', 'publica', 'usuario3@example.com'),
('PlaylistUsuario4', '2024-03-25', 'publica', 'usuario4@example.com'),
('PlaylistUsuario5', '2024-03-25', 'publica', 'usuario5@example.com');

-- Insertar datos en la tabla Comentario (crearemos un comentario ficticio)
INSERT INTO comentario (textoComentario, fechaHoraCreacion, usuarioEmail, videoID) 
VALUES
('¡Gran video!', '2024-02-25 12:01:00', 'usuario3@example.com', 1),
('¡Buen video!', '2024-02-25 12:00:00', 'usuario4@example.com', 2);

-- Insertar datos en la tabla VideoPlaylist (agregaremos el video ficticio a la playlist ficticia del usuario 1)
INSERT INTO videoPlaylist (videoID, playlistID) 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insertar datos en la tabla LikeDislikeComentario (marcaremos el comentario ficticio como "me gusta")
INSERT INTO likeDislikeComentario (usuarioEmail, comentarioID, tipo, fechaHora) 
VALUES
('usuario3@example.com', 1, 'like', '2024-03-25 12:02:00'),
('usuario4@example.com', 2, 'like', '2024-03-25 12:02:00');
