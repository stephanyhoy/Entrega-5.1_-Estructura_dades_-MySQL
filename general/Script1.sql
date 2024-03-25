SELECT 
    proveedor.nombre AS nombre,
    proveedor.apellido1,
    proveedor.apellido2, 
    proveedor.direccion_calle,
    proveedor.direccion_numero,
    proveedor.direccion_piso,
    proveedor.direccion_puerta,
    proveedor.direccion_ciudad,
    proveedor.direccion_codigo_postal,
    proveedor.direccion_pais,
    proveedor.telefono,
    proveedor.fax,
    proveedor.nif,
    gafas.id_marca as id_gafas
    
FROM 
    gafas
JOIN 
    proveedor ON gafas.id_proveedor = proveedor.id_proveedor;





