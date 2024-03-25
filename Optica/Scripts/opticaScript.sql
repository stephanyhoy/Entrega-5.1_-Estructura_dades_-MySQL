use optica;

create table if not exists proveedor(
`id_proveedor` int(6) not null auto_increment COMMENT 'Identificador unico de la tabla',
`nombre` varchar(25) not null,
`apellido1` varchar(50) not null,
`apellido2` varchar(50),
`direccion_calle` varchar(50),
`direccion_numero` varchar(10),
`direccion_piso` varchar(10),
`direccion_puerta` varchar(10),
`direccion_ciudad`varchar(100),
`direccion_codigo_postal` varchar(5),
`direccion_pais` varchar(45),
`telefono` varchar(45),
`fax` varchar (25),
`nif` varchar (25),
primary key (id_proveedor)
);

create table if not exists marca(
`id_marca` int(6) not null auto_increment COMMENT 'Identificador unico de la tabla',
`nombre_marca` varchar(50) not null,
`id_proveedor` int(6) not null,
primary key (id_marca),
constraint `fk_proveedor_id` foreign key (`id_proveedor`) references `proveedor` (`id_proveedor`)
);

create table if not exists gafas(
`id_gafas` int(6) not null auto_increment primary key COMMENT 'Identificador unico de la tabla',
`id_marca` int(6) not null,
`graduacion_vidrio_izq` VARCHAR(50),
`graduacion_vidrio_der` VARCHAR(50),
`tipo_montura` VARCHAR(50),
`color_montura` VARCHAR(50),
`color_vidrio` VARCHAR(50),
`precio` DECIMAL(10, 2),
constraint fk_marca_id foreign key (id_marca) references marca(id_marca)
);

create table if not exists cliente(
`id_cliente` int(6) not null auto_increment primary key COMMENT 'Identificador unico de la tabla',
`nombre` varchar(255) not null COMMENT 'Nombre del cliente',
`apellido1` varchar(100) not null COMMENT 'Apellido del cliente',
`apellido2` varchar(100) default null COMMENT 'Segundo Apellido del cliente si lo tuviera',
`documento_cliente` varchar(100) not null COMMENT 'El DNI o NIE del cliente',
`fecha_nacimiento` date not null COMMENT 'Fecha de nacimiento de cliente',
`direccion` varchar(45) default null COMMENT 'Direccion del cliente',
`codigo_postal` varchar(5) default null COMMENT 'Codigo postal del cliente',
`telefono` varchar(45) default null COMMENT 'Telefono del cliente',
`correo_electronico` varchar(45) default null COMMENT 'Correo electronico del cliente',
`fecha_registro` date default null COMMENT 'Fecha de registro del cliente',
`cliente_recomendador_id` int default null COMMENT 'Referencia a cliente que recomendo el servicio',
foreign key (cliente_recomendador_id) references cliente(id_cliente)
);

create table if not exists empleado(
`id_empleado` int(6) not null auto_increment primary key COMMENT 'Identificador unico de la tabla',
`nombre` varchar(100) NOT NULL COMMENT 'Nombres de los empleados',
`apellido1` varchar(100) NOT NULL COMMENT 'Primer apellido de la persona',
`apellido2` varchar(100) DEFAULT NULL COMMENT 'Segundo apellido del empleado si tuviera'
);

create table if not exists venta(
`id_venta` int(6) not null auto_increment primary key,
`id_empleado`int(6),
`id_gafas` int(6),
`id_cliente` int(6),
`fecha_venta` date,
foreign key (id_empleado) references empleado(id_empleado),
foreign key (id_gafas) references gafas(id_gafas),
foreign key (id_cliente) references cliente(id_cliente)
);

-- Insertar datos en la tabla proveedor
INSERT INTO proveedor (nombre, apellido1, apellido2, direccion_calle, direccion_numero, direccion_piso, direccion_puerta, direccion_ciudad, direccion_codigo_postal, direccion_pais, telefono, fax, nif)
VALUES
    ('José', 'Pinto', 'Ramírez', 'Av. Travesera de Dalt', '18', '3ro', '6', 'Barcelona', '08024', 'España', '623456789', '987654321', 'NIF123'),
    ('María', 'Galvez', 'Vásquez', 'Calle Providencia', '45', '1ro', 'A', 'Barcelona', '54321', 'ESpaña', '987654321', '123456789', 'NIF456'),
    ('Miguel', 'López', 'Cueva', 'Torrent De L´Olla', '69', '2do', '3', 'Barcelona', '08035', 'España', '635092769', '963509278', 'NIF789');

-- Insertar datos en la tabla marca
INSERT INTO marca (nombre_marca, id_proveedor)
value
    ('Marca1', '1'),
    ('Marca2', '2'),
    ('Marca3', '3'),
    ('Gucci', '1'),
    ('Calvin Klein', '2'),
    ('Carolina Herrera', '3'),
    ('Milley & Marc', '1');

-- Insertar datos en la tabla gafas
INSERT INTO gafas (id_proveedor, id_marca, graduacion_vidrio_izq, graduacion_vidrio_der, tipo_montura, color_montura, color_vidrio, precio)
VALUES
    (1, 1, '+1.00', '+1.00', 'Flotante', 'Negro', 'Transparente', 120.00),
    (2, 2, '+2.00', '+2.00', 'Metálica', 'Azul', 'Humo', 99.99),
    (1, 3, '+1.50', '+1.50', 'Acetato', 'Rojo', 'Gris', 110.00),
    (3, 4, '+0.75', '+0.75', 'Metálica', 'Dorado', 'Transparente', 89.00),
    (1, 5, '+1.00', '+1.00', 'Flotante', 'Bronce', 'Transparente', 150.00),
    (2, 6, '+2.00', '+2.00', 'Metálica', 'Plateado', 'Humo', 109.99),
    (1, 7, '+1.50', '+1.50', 'Acetato', 'Marrón', 'Gris', 149.99);

-- Insertar datos en la tabla cliente
INSERT INTO cliente (nombre, apellido1, apellido2, documento_cliente, fecha_nacimiento, direccion, codigo_postal, telefono, correo_electronico, fecha_registro, cliente_recomendador_id)
VALUES
    ('Stephany', 'Hoyos', 'Tineo', 'Y8857109F', '1976-11-11', 'Calle Vilafranca 32', '08024', '635092769', 'cliente1@example.com', '2024-01-01', NULL),
    ('Magaly', 'Hurtado', '', 'Y8857119S', '1979-10-01', 'Calle Providencia 13', '08002', '635092770', 'cliente2@example.com', '2024-01-01', 1),
    ('José', 'Jimenez', 'López', 'Y8857009R', '1978-05-21', 'Calle de Tiro 24', '08035', '635092771', 'cliente3@example.com', '2024-01-01', 1),
    ('Jesús', 'Mendez', '', 'Y8857109T', '1980-06-13', 'Grant de Gracia', '08024', '635092772', 'cliente4@example.com', '2024-01-01', 2),
    ('María', 'Cácerez', 'Mina', 'Y8857109U', '1986-03-10', 'Calle Alzina 15', '08024', '635092773', 'cliente5@example.com', '2024-01-01', NULL),
    ('Cristina', 'Cortez', '', '85214763S', '1999-03-03', 'Sant Salvador 35', '08035', '635092774', 'cliente6@example.com', '2024-03-01', 4),
    ('Sara', 'Hoyos', '', 'Y8857109FV', '1986-11-11', 'Calle Vilafranca 15', '08024', '635092775', 'cliente7@example.com', '2024-01-01', NULL),
    ('Mónica', 'Huaraz', '', 'Y8857119X', '1999-10-01', 'Calle Providencia 45', '08024', '635092776', 'cliente8@example.com', '2024-01-01', 1),
    ('Josue', 'Jaime', 'López', 'Y8857009Z', '1988-05-21', 'Calle de Tiro 15', '08002', '635092777', 'cliente9@example.com', '2024-01-01', 3),
    ('Jessica', 'Munarris', '', 'Y8057109F', '1990-06-13', 'Grant de Gracia', '08024', '635092778', 'cliente10@example.com', '2024-01-01', 2),
    ('Magdalena', 'Calderon', 'Mina', 'Y6857109F', '1996-03-10', 'Calle Alzina 10', '08024', '635092779', 'cliente11@example.com', '2024-01-01', NULL),
    ('Cristian', 'Peralta', '', '56214763S', '2005-03-03', 'Sant Salvador 22', '08035', '635092780', 'cliente12@example.com', '2024-03-01', 5);
	('Emerson','Vásquez',NULL,'6547891E','2001-01-05','Corcega 15','08033','623502723','cliente13@example.com','2024-01-15',6),
	 ('Michael','Trinidad',NULL,'9632587C','2002-02-05','Roc Bonorat 75','08033','621234567','cliente14@example.com','2024-01-18',7),
	 ('Randal','Espinoza',NULL,'8745631C','1999-03-03','Olot 65','08019','622345678','cliente15@example.com','2024-02-04',9),
	 ('Gloria','Leguía',NULL,'8745632C','2007-04-04','Larrard 68','08019','623456789','cliente16@example.com','2024-02-10',10),
	 ('Raquel','Nuñez',NULL,'9876541C','2005-06-13','Travessera de Dalt 65','08024','624567891','cliente17@example.com','2024-02-11',4),
	 ('Ana','Escobar',NULL,'9876541C','1995-06-15','Verdi 68','08024','625678912','cliente18@example.com','2024-02-14',1),
	 ('Juan','Calderon',NULL,'5467891D','1998-07-07','Bergara 12','08002','626789123','cliente19@example.com','2024-02-15',1),
	 ('Benjamín','Dumas',NULL,'7894564D','1980-08-08','Bergara 25','08002','627891234','cliente20@example.com','2024-02-18',11);
INSERT INTO cliente (nombre,apellido1,apellido2,documento_cliente,fecha_nacimiento,direccion,codigo_postal,telefono,correo_electronico,fecha_registro,cliente_recomendador_id) 
VALUES
	 ('Oscar','Esquivel',NULL,'3456789B','2000-10-12','Corcega 45','08045','628912345','cliente21@example.com','2024-02-20',12),
	 ('Ivan','Farfán',NULL,'2345678B','1993-08-16','Plaza España 12','08002','629123456','cliente22@example.com','2024-02-22',7),
	 ('Grecia','Gutierrez',NULL,'2345678B','1991-12-08','Plaza Cataluña 25','08002','631234560','cliente23@example.com','2024-02-25',6),
	 ('Lucia','Hurtado',NULL,'1234564B','1979-05-21','Mare de Deu de Monteserrat 28','08035','601254789','cliente24@example.com','2024-02-26',2);
-- Insertar datos en la tabla empleados
INSERT INTO empleado (nombre, apellido1, apellido2)
VALUES
    ('Rocio', 'Jimenez', 'Lavaggi'),
    ('Juan', 'Ortega', ''),
    ('Oscar', 'Abril', 'Mendoza');

-- Insertar datos en la tabla venta
INSERT INTO venta (id_empleado, id_gafas, id_cliente, fecha_venta)
VALUES
    (1, 23, 1, '2024-01-05'),
    (2, 24, 2, '2024-02-10'),
    (3, 25, 3, '2024-03-15'),
    (1, 26, 4, '2024-01-05'),
    (2, 27, 5, '2024-02-10'),
    (3, 28, 6, '2024-03-15'),
    (1, 29, 7, '2024-01-05'),
    (2, 23, 8, '2024-02-10'),
    (3, 25, 9, '2024-03-15'),
    (1, 23, 10, '2024-01-05'),
    (2, 24, 11, '2024-02-10'),
    (3, 25, 12, '2024-03-15'),
     (1, 23, 1, '2024-01-05'),
    (2, 24, 2, '2024-02-10'),
    (3, 25, 3, '2024-03-15'),
    (1, 26, 4, '2024-01-05'),
    (2, 27, 5, '2024-02-10'),
    (3, 28, 6, '2024-03-15'),
    (1, 29, 7, '2024-01-05'),
    (2, 23, 8, '2024-02-10'),
    (3, 25, 9, '2024-03-15'),
    (1, 23, 10, '2024-01-05'),
    (2, 24, 11, '2024-02-10'),
    (3, 25, 12, '2024-03-15');
