SELECT v.id_venta, e.nombre AS nombre_empleado, e.apellido1 AS apellido_empleado, g.id_gafas, g.tipo_montura, g.precio, v.fecha_venta
FROM venta v
JOIN empleado e ON v.id_empleado = e.id_empleado
JOIN gafas g ON v.id_gafas = g.id_gafas
WHERE v.fecha_venta BETWEEN '2024-01-01' AND '2024-002-15';
