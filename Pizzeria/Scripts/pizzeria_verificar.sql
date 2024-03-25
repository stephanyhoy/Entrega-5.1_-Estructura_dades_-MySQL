SHOW CREATE TABLE pedido;
SHOW CREATE TABLE productos_pedido;

DESCRIBE pedido;

DESCRIBE productos_pedido;

SELECT * FROM productos;

SELECT * FROM pedido;
SELECT * FROM productos_pedido;

-- Lista cuántos pedidos ha efectuado un determinado empleado, aqui utilizando el id del empleado
SELECT COUNT(pedido_id) AS total_pedidos
FROM entrega
WHERE empleado_id = 5;

-- Lista cuántos pedidos ha efectuado un determinado empleado, aqui utilizando el nombre y apellidos del empleado
SELECT COUNT(pedido_id) AS total_pedidos
FROM entrega
WHERE empleado_id = (SELECT empleado_id FROM empleado WHERE nombre = 'Pedro' AND apellidos = 'Martínez');

SELECT COUNT(pp.producto_id) AS cantidad_productos_vendidos
FROM productos_pedido pp
JOIN productos p ON pp.producto_id = p.producto_id
JOIN pedido pe ON pp.pedido_id = pe.pedido_id
JOIN cliente c ON pe.cliente_id = c.cliente_id
WHERE p.tipo = 'bebida'
AND c.localidad = 'Barcelona';


show tables;

SELECT FORMAT(precio_unitario, 2) AS precio_formateado
FROM productos;

SELECT FORMAT(precio_parcial, 2) AS precio_formateado
FROM productos_pedido;

SELECT FORMAT(precio_unitario, 2) AS precio_format_unit
FROM productos_pedido;


-- se calcula el precio total de cada producto en el pedido multiplicando la cantidad por el precio unitario
SELECT pedido_id, producto_id, cantidad, precio_unitario, (cantidad * precio_unitario) AS precio_producto
FROM productos_pedido;

-- calcula el precio total de cada producto en el pedido multiplicando la cantidad por el precio unitario
SELECT pedido_id, SUM(cantidad * precio_unitario) AS precio_total_pedido
FROM productos_pedido
GROUP BY pedido_id;

-- se actualiza la tabla pedido con el precio total calculado
UPDATE pedido p
JOIN (
    SELECT pedido_id, SUM(cantidad * precio_unitario) AS precio_total_pedido
    FROM productos_pedido
    GROUP BY pedido_id
) AS total_pedido ON p.pedido_id = total_pedido.pedido_id
SET p.precio_total = total_pedido.precio_total_pedido;
