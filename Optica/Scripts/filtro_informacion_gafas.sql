SELECT m.nombre_marca, g.graduacion_vidrio_izq, g.graduacion_vidrio_der, g.tipo_montura, g.color_montura, g.color_vidrio, g.precio
FROM gafas g
INNER JOIN marca m ON g.id_marca = m.id_marca;
