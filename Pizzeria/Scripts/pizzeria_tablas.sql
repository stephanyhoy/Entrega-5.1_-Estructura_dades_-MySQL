use pizzeria1;

-- Crear tabla de Clientes
CREATE TABLE if not exists cliente (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    direccion VARCHAR(255),
    codigo_postal VARCHAR(10),
    localidad VARCHAR(255),
    provincia VARCHAR(255),
    telefono VARCHAR(20)
);

-- Crear tabla de Productos
CREATE table productos (
    producto_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    descripcion TEXT,
    imagen VARCHAR(255),
    precio DECIMAL(10, 2)
);

-- Crear tabla de Categorías de Pizza
CREATE TABLE categorias_pizza (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

-- Crear tabla de Pizzas
CREATE TABLE pizza (
    pizza_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    categoria_id INT,
    descripcion TEXT,
    imagen VARCHAR(255),
    precio DECIMAL(10, 2),
    FOREIGN KEY (categoria_id) REFERENCES categorias_pizza(categoria_id)
);

-- Crear tabla de Hamburguesas
CREATE TABLE hamburguesa (
    hamburguesa_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    descripcion TEXT,
    imagen VARCHAR(255),
    precio DECIMAL(10, 2)
);

-- Crear tabla de Bebidas
CREATE TABLE bebida (
    bebida_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    descripcion TEXT,
    imagen VARCHAR(255),
    precio DECIMAL(10, 2)
);

-- Crear tabla de Tiendas
CREATE TABLE tienda (
    tienda_id INT PRIMARY KEY AUTO_INCREMENT,
    direccion VARCHAR(255),
    codigo_postal VARCHAR(10),
    localidad VARCHAR(255),
    provincia VARCHAR(255)
);

-- Crear tabla de Empleados
CREATE TABLE empleado (
    empleado_id INT PRIMARY KEY AUTO_INCREMENT,
    tienda_id INT,
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    NIF VARCHAR(20),
    telefono VARCHAR(20),
    rol ENUM('cocinero', 'repartidor'),
    FOREIGN KEY (tienda_id) REFERENCES tienda(tienda_id)
);

-- Crear tabla de Pedidos
CREATE TABLE pedido (
    pedido_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    fecha_hora DATETIME,
    tipo_entrega ENUM('reparto', 'recoger'),
    precio_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id)
);

-- Crear tabla de Entregas
CREATE TABLE entrega (
    entrega_id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    empleado_id INT,
    fecha_hora_entrega DATETIME,
    FOREIGN KEY (pedido_id) REFERENCES pedido(pedido_id),
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id)
);

-- Datos para la tabla Clientes
INSERT INTO cliente (nombre, apellidos, direccion, codigo_postal, localidad, provincia, telefono)
VALUES
('Juan', 'García', 'Calle Mayor 123', '08024', 'Barcelona', 'Barcelona', '912345678'),
('María', 'López', 'Avenida Libertad 45', '08001', 'Barcelona', 'Barcelona', '934567890'),
('José', 'Guerrero', 'Calle Marquez 12', '28001', 'Barcelona', 'Barcelona', '912345678'),
('Mary', 'Lucas', 'Avenida Logroño 40', '08001', 'Barcelona', 'Barcelona', '934567890'),
('Esther', 'Arana', 'Calle Alzina 13', '28001', 'Barcelona', 'Barcelona', '912345678'),
('María', 'López', 'Avenida Libertad 45', '08001', 'Barcelona', 'Barcelona', '934567890'),
('Juan', 'García', 'Calle Mayor 123', '28001', 'Madrid', 'Madrid', '912345678'),
('Miguel', 'Santiago', 'Avenida Grant de Gracia', '0824', 'Barcelona', 'Barcelona', '934567890'),
('Josefina', 'Quispe', 'Calle Travessera del Dalt 123', '28001', 'Barcelona', 'Barcelona', '912345678'),
('María', 'Cácerez', 'Libertad 15', '08001', 'Barcelona', 'Barcelona', '934567890'),
('Oscar','Esquivel','Corcega 45','08045', 'Barcelona', 'Barcelona', '628912345'),
('Ivan','Farfán','Plaza España 12','08002','Barcelona', 'Barcelona', '629123456'),
('Grecia','Gutierrez','Plaza Cataluña 25','08002', 'Barcelona', 'Barcelona','631234560'),
('Lucia','Hurtado','Mare de Deu de Monteserrat 28','08035','Barcelona', 'Barcelona', '601254789'),
('Stephany', 'Hoyos Tineo', 'Calle Vilafranca 32', '08024', 'Barcelona', 'Barcelona', '635092769'),
('Magaly', 'Hurtado', 'Calle Providencia 13', '08002', 'Barcelona', 'Barcelona', '635092770'),
('José', 'Jimenez López', 'Calle de Tiro 24', '08035', 'Barcelona', 'Barcelona','635092771'),
('Jesús', 'Mendez', 'Grant de Gracia', '08024', 'Barcelona', 'Barcelona','635092772'),
('María', 'Cácerez', 'Calle Alzina 15', '08024', 'Barcelona', 'Barcelona', '635092773'),
('Cristina', 'Cortez', 'Sant Salvador 35', '08035', 'Barcelona', 'Barcelona', '635092774'),
('Sara', 'Hoyos', 'Calle Vilafranca 15', '08024', 'Barcelona', 'Barcelona', '635092775'),
('Mónica', 'Huaraz', 'Calle Providencia 45', '08024', 'Barcelona', 'Barcelona', '635092776'),
('Josue', 'Jaime', 'Calle de Tiro 15', '08002', 'Barcelona', 'Barcelona', '635092777'),
('Jessica', 'Munarris', 'Grant de Gracia', '08024', 'Barcelona', 'Barcelona', '635092778'),
('Magdalena', 'Calderon','Calle Alzina 10', '08024', 'Barcelona', 'Barcelona', '635092779'),
('Cristian', 'Peralta', 'Sant Salvador 22', '08035', 'Barcelona', 'Barcelona', '635092780'),
('Emerson','Vásquez', 'Corcega 15','08033','Barcelona', 'Barcelona', '623502723'),
('Michael','Trinidad', 'Roc Bonorat 75','08033', 'Barcelona', 'Barcelona','621234567'),
('Randal','Espinoza', 'Olot 65','08019','Barcelona', 'Barcelona', '622345678'),
('Gloria','Leguía','Larrard 68','08019','Barcelona', 'Barcelona', '623456789'),
('Raquel','Nuñez','Travessera de Dalt 65','08024','Barcelona', 'Barcelona', '624567891'),
('Ana','Escobar','Verdi 68','08024', 'Barcelona', 'Barcelona', '625678912'),
('Juan','Calderon','Bergara 12','08002', 'Barcelona', 'Barcelona','626789123'),
('Benjamín','Dumas','Bergara 25','08002', 'Barcelona', 'Barcelona', '627891234');


-- Datos para la tabla Bebidas
INSERT INTO bebida (nombre, descripcion, imagen, precio)
VALUES
('Agua Mineral', 'Agua embotellada sin gas', 'agua_mineral.jpg', 0.99),
('Fanta Naranja', 'Refresco carbonatado sabor naranja', 'fanta_naranja.jpg', 1.50),
('Estrella Damm', 'Cerveza lager estilo pilsener elaborada con malta de cebada, arroz y lúpulo; 33cl.', 'cerveza_damm.jpg', 2.99),
('Fanta Limón', 'Refresco carbonatado sabor limón', 'fanta_limón.jpg', 1.50),
('Coca Cola', 'Refresco carbonatado de cola', 'cocacola.jpg', 1.99);

-- Datos  para la tabla Categorias_Pizza
INSERT INTO categorias_pizza (nombre)
VALUES
('Clásicas'),
('Especiales'),
('Vegetarianas');

-- Datos para la tabla Pizzas
INSERT INTO pizza (nombre, categoria_id, descripcion, imagen, precio)
VALUES
('Pizza Pepperoni', 1, 'Pizza con salsa de tomate, mozzarella y pepperoni', 'pizza_pepperoni.jpg', 11.99),
('Pizza Barbacoa', 2, 'Pizza con salsa barbacoa, pollo, bacon y cebolla', 'pizza_barbacoa.jpg', 12.50),
('Pizza Vegetariana', 3, 'Pizza con verduras variadas y mozzarella', 'pizza_vegetariana.jpg', 10.99),
('Pizza Margarita', 1, 'Deliciosa pizza con salsa de tomate y mozzarella', 'pizza_margarita.jpg', 10.99);

-- Datos para la tabla Hamburguesas
INSERT INTO hamburguesa (nombre, descripcion, imagen, precio)
VALUES
('Hamburguesa BBQ', 'Hamburguesa con salsa BBQ, bacon y queso cheddar', 'hamburguesa_bbq.jpg', 9.99),
('Hamburguesa Vegetariana', 'Hamburguesa de quinoa con vegetales asados', 'hamburguesa_vegetariana.jpg', 7.50),
('Hamburguesa Clásica', 'Hamburguesa de ternera', 'hamburguesa_ternera.jpg', 8.99);

ALTER TABLE productos
ADD COLUMN tipo ENUM('pizza', 'hamburguesa', 'bebida') NOT NULL,
ADD FOREIGN KEY (categoria_id) REFERENCES categorias_pizza(categoria_id);


-- Datos para la tabla Productos
INSERT INTO productos (nombre, descripcion, imagen, precio, tipo, categoria_id)
VALUES
('Agua Mineral', 'Agua embotellada sin gas', 'agua_mineral.jpg', 0.99, 'bebida', NULL),
('Fanta Naranja', 'Refresco carbonatado sabor naranja', 'fanta_naranja.jpg', 1.50, 'bebida', NULL),
('Estrella Damm', 'Cerveza lager estilo pilsener elaborada con malta de cebada, arroz y lúpulo; 33cl.', 'cerveza_damm.jpg', 1.99, 'bebida', NULL),
('Fanta Limón', 'Refresco carbonatado sabor limón', 'fanta_limón.jpg', 1.50, 'bebida', NULL),
('Coca Cola', 'Refresco carbonatado de cola', 'cocacola.jpg', 1.99, 'bebida', NULL),
('Pizza Pepperoni', 'Pizza con salsa de tomate, mozzarella y pepperoni', 'pizza_pepperoni.jpg', 11.99, 'pizza', 1),
('Pizza Barbacoa', 'Pizza con salsa barbacoa, pollo, bacon y cebolla', 'pizza_barbacoa.jpg', 12.50, 'pizza', 2),
('Pizza Vegetariana', 'Pizza con verduras variadas y mozzarella', 'pizza_vegetariana.jpg', 10.99, 'pizza', 3),
('Pizza Margarita', 'Deliciosa pizza con salsa de tomate y mozzarella', 'pizza_margarita.jpg', 10.99, 'pizza', 1),
('Hamburguesa BBQ', 'Hamburguesa con salsa BBQ, bacon y queso cheddar', 'hamburguesa_bbq.jpg', 9.99, 'hamburguesa', NULL),
('Hamburguesa Vegetariana', 'Hamburguesa de quinoa con vegetales asados', 'hamburguesa_vegetariana.jpg', 7.50, 'hamburguesa', NULL),
('Hamburguesa Clásica', 'Jugosa hamburguesa de carne con lechuga, tomate y queso', 'hamburguesa_clasica.jpg', 8.50, 'hamburguesa', NULL);

-- Datos para la tabla Tiendas
INSERT INTO tienda (direccion, codigo_postal, localidad, provincia)
VALUES
('Calle Grant de Gracia 65', '08024', 'Barcelona', 'Barcelona'),
('Avenida Diagonal 200', '08018', 'Barcelona', 'Barcelona');

-- Datos para la tabla Empleados
INSERT INTO empleado (tienda_id, nombre, apellidos, NIF, telefono, rol)
VALUES
(1, 'Pedro', 'Martínez', '12345678A', '611223344', 'cocinero'),
(2, 'Laura', 'Gómez', '87654321B', '655443322', 'repartidor'),
(1, 'María', 'Jiménez', '14785236S', '666123456', 'cocinero'),
(2, 'José', 'Carrasco', '45678912S', '6987456321', 'repartidor');


-- Datos para la tabla Pedidos
INSERT INTO pedido (cliente_id, fecha_hora, tipo_entrega, precio_total)
VALUES
(1, '2024-03-22 12:00:00', 'reparto', 30.50),
(2, '2024-03-22 13:30:00', 'recoger', 22.49);

-- Datos aumentados para la tabla Pedidos
INSERT INTO pedido (cliente_id, fecha_hora, tipo_entrega, precio_total)
VALUES
(3, '2024-03-23 14:45:00', 'reparto', 15.99), -- Ejemplo de nuevo pedido
(4, '2024-03-24 10:00:00', 'recoger', 10.75); -- Ejemplo de nuevo pedido


-- Datos para la tabla Entregas
INSERT INTO entrega (pedido_id, empleado_id, fecha_hora_entrega)
VALUES
(1, 5, '2024-03-22 13:30:00');


-- Modificar la tabla de Productos
ALTER TABLE productos
ADD FOREIGN KEY (categoria_id) REFERENCES categorias_pizza(categoria_id);

-- Insertar relaciones para productos específicos
UPDATE productos SET categoria_id = NULL WHERE tipo != 'pizza';  -- Limpiar las categorías para productos que no sean pizzas

-- Actualizar las relaciones para pizzas
UPDATE productos p
JOIN pizza pz ON p.producto_id = pz.pizza_id
SET p.categoria_id = pz.categoria_id,
p.tipo = 'pizza';

-- Insertar relaciones para hamburguesas
UPDATE productos p
JOIN hamburguesa h ON p.producto_id = h.hamburguesa_id
SET p.tipo = 'hamburguesa';

-- Insertar relaciones para bebidas
UPDATE productos p
JOIN bebida b ON p.producto_id = b.bebida_id
SET p.tipo = 'bebida';


ALTER TABLE pedido
ADD COLUMN  tienda_id INT,
ADD FOREIGN KEY (tienda_id) REFERENCES tienda(tienda_id);


-- Crear tabla de Productos_Pedido
CREATE TABLE productos_pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    producto_id INT,
    cantidad INT,
    FOREIGN KEY (pedido_id) REFERENCES pedido(pedido_id),
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);

-- Para la tabla Bebidas
ALTER TABLE bebida
ADD COLUMN producto_id INT,
ADD FOREIGN KEY (producto_id) REFERENCES productos(producto_id);

-- Para la tabla Hamburguesas
ALTER TABLE hamburguesa
ADD COLUMN producto_id INT,
ADD FOREIGN KEY (producto_id) REFERENCES productos(producto_id);

-- Agregar la columna precio_unitario a la tabla productos
ALTER TABLE productos
ADD COLUMN precio_unitario DECIMAL(10, 2);

-- Calcular el precio total para cada producto en la tabla productos
ALTER TABLE productos_pedido
ADD COLUMN precio_total DECIMAL(10, 2);

UPDATE productos
SET precio_total = cantidad * precio;

-- Agregar las columnaprecio_total a la tabla pedido
ALTER TABLE pedido
ADD COLUMN precio_total DECIMAL(10, 2);

ALTER TABLE productos_pedido
ADD COLUMN precio_unitario DECIMAL(10, 2);

