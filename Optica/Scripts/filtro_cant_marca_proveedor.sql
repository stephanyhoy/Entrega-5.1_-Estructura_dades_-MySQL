SELECT CONCAT(p.nombre, ' ', p.apellido1, ' ', COALESCE(p.apellido2, '')) AS nombre_proveedor, COUNT(m.id_marca) AS cantidad_marcas
FROM proveedor p
LEFT JOIN marca m ON p.id_proveedor = m.id_proveedor
GROUP BY p.id_proveedor, p.nombre, p.apellido1, p.apellido2;
