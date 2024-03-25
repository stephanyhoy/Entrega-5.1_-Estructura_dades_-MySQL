SELECT COUNT(*) AS cantidad_bebidas_vendidas
FROM productos_pedido pp
JOIN pedido p ON pp.pedido_id = p.pedido_id
JOIN cliente c ON p.cliente_id = c.cliente_id
JOIN tienda t ON p.tienda_id = t.tienda_id
JOIN productos pr ON pp.producto_id = pr.producto_id
WHERE pr.tipo = 'bebida'
AND t.localidad = 'Barcelona';


SELECT COUNT(*) AS cantidad_pedidos
FROM entrega e
JOIN empleado em ON e.empleado_id = em.empleado_id
WHERE em.nombre = 'Pedro' AND em.apellidos = 'Martínez';
