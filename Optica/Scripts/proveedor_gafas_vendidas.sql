SELECT DISTINCT pr.nombre, pr.apellido1
FROM proveedor pr
JOIN marca m ON pr.id_proveedor = m.id_proveedor
JOIN gafas g ON m.id_marca = g.id_marca
JOIN venta v ON g.id_gafas = v.id_gafas;
