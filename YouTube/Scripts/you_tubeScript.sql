use you_tube;
-- Tabla Usuario You Tube
CREATE TABLE usuario (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    nombre_Usuario VARCHAR(100),
    fecha_Nacimiento DATE,
    sexo CHAR(1),
    pais VARCHAR(100),
    codigo_Postal VARCHAR(10)
);

-- Tabla Video
CREATE TABLE video (
    id_video INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    descripcion TEXT,
    tamano INT,
    nombreArchivo VARCHAR(255),
    duracion TIME,
    thumbnail VARCHAR(255),
    num_Reproducciones INT DEFAULT 0,
    num_Likes INT DEFAULT 0,
    num_Dislikes INT DEFAULT 0,
    estado ENUM('publico', 'oculto', 'privado'),
    fechaHoraPublicacion DATETIME,
    usuarioEmail VARCHAR(255),
    FOREIGN KEY (usuarioEmail) REFERENCES usuario(email)
);

-- Tabla Etiqueta
CREATE TABLE etiqueta (
    id_etiqueta INT PRIMARY KEY AUTO_INCREMENT,
    nombre_Etiqueta VARCHAR(100)
);

-- Tabla VideoEtiqueta (Tabla intermedia para la relación muchos a muchos entre Video y Etiqueta)
CREATE TABLE videoEtiqueta (
    videoID INT,
    etiquetaID INT,
    PRIMARY KEY (videoID, etiquetaID),
    FOREIGN KEY (videoID) REFERENCES video(id_video),
    FOREIGN KEY (etiquetaID) REFERENCES etiqueta(id_etiqueta)
);

-- Tabla Canal
CREATE TABLE canal (
    id_canal INT PRIMARY KEY AUTO_INCREMENT,
    nombre_canal VARCHAR(255),
    descripcion TEXT,
    fechaCreacion DATE,
    usuarioEmail VARCHAR(255),
    FOREIGN KEY (usuarioEmail) REFERENCES usuario(email)
);

-- Tabla Subscripcion (Tabla intermedia para la relación muchos a muchos entre Usuario y Canal)
CREATE TABLE subscripcion (
    usuarioEmail VARCHAR(255),
    canalID INT,
    PRIMARY KEY (usuarioEmail, canalID),
    FOREIGN KEY (usuarioEmail) REFERENCES usuario(email),
    FOREIGN KEY (canalID) REFERENCES canal(id_canal)
);

-- Tabla Playlist
CREATE TABLE playlist (
    id_playlist INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    fechaCreacion DATE,
    estado ENUM('publica', 'privada'),
    usuarioEmail VARCHAR(255),
    FOREIGN KEY (usuarioEmail) REFERENCES usuario(email)
);

-- Tabla VideoPlaylist (Tabla intermedia para la relación muchos a muchos entre Video y Playlist)
CREATE TABLE videoPlaylist (
    videoID INT,
    playlistID INT,
    PRIMARY KEY (videoID, playlistID),
    FOREIGN KEY (videoID) REFERENCES Video(id_video),
    FOREIGN KEY (playlistID) REFERENCES Playlist(id_playlist)
);

-- Tabla Comentario
CREATE TABLE Comentario (
    id_comentario INT PRIMARY KEY AUTO_INCREMENT,
    textoComentario TEXT,
    fechaHoraCreacion DATETIME,
    usuarioEmail VARCHAR(255),
    videoID INT,
    FOREIGN KEY (usuarioEmail) REFERENCES usuario(email),
    FOREIGN KEY (videoID) REFERENCES video(id_video)
);

-- Tabla LikeDislikeComentario (Tabla intermedia para la relación muchos a muchos entre Usuario y Comentario)
CREATE TABLE likeDislikeComentario (
    usuarioEmail VARCHAR(255),
    comentarioID INT,
    tipo ENUM('like', 'dislike'),
    fechaHora DATETIME,
    PRIMARY KEY (usuarioEmail, comentarioID),
    FOREIGN KEY (usuarioEmail) REFERENCES usuario(Email),
    FOREIGN KEY (comentarioID) REFERENCES comentario(id_comentario)
);
