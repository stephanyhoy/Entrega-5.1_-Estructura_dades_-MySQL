use optica;

select * from cliente;

show tables;

create table if not exists marca(
`id_marca` int(6) not null auto_increment COMMENT 'Identificador unico de la tabla',
`nombre_marca` varchar(50) not null,
`id_proveedor` int(6) not null,
primary key (id_marca),
constraint `fk_proveedor_id` foreign key (`id_proveedor`) references `proveedor` (`id_proveedor`)
);

alter table marca
add `id_proveedor` int(6)not null;

show tables;

