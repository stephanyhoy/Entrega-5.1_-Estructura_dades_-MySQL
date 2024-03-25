SELECT c.nombre, c.apellido1, COUNT(v.id_venta) AS total_compras
FROM cliente c
LEFT JOIN venta v ON c.id_cliente = v.id_cliente
GROUP BY c.nombre, c.apellido1;
