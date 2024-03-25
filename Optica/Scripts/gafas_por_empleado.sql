SELECT e.nombre, e.apellido1, g.id_gafas, g.tipo_montura, g.precio, v.fecha_venta
FROM empleado e
JOIN venta v ON e.id_empleado = v.id_empleado
JOIN gafas g ON v.id_gafas = g.id_gafas
WHERE YEAR(v.fecha_venta) = 2024;
