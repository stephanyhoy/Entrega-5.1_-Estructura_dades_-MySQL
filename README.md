# Entrega-5.1*-Estructura_dades*-MySQL

Este repositorio contiene ejercicios de modelado de bases de datos relacionales utilizando MySQL.

Para seedear la base de datos y ejecutar los scripts proporcionados, sigue estos pasos:

1. Crear la base de datos: Primero, asegúrate de tener un servidor MySQL en tu entorno local o en un servidor remoto. Luego, crea una nueva base de datos para este ejercicio utilizando el siguiente comando SQL:

```sh
CREATE DATABASE nombre_de_tu_base_de_datos;
```
2. 



# Nivel 1

- Ejercicio 1 - Óptica
  Una óptica, denominada “Cul d'Ampolla”, quiere informatizar la gestión de los clientes y ventas de gafas.

En primer lugar, la óptica quiere saber cuál es el proveedor de cada una de las ojeras. En concreto quiere saber de cada proveedor: El nombre, la dirección (calle, número, piso, puerta, ciudad, código postal y país), teléfono, fax, NIF.

La política de compras de la óptica se basa que las gafas de una marca se comprarán a un único proveedor (así podrá sacar más buenos precios), pero pueden comprar gafas de varias marcas a un proveedor. De las gafas quiere saber: La marca, la graduación de cada uno de los vidrios, el tipo de montura (flotante, pasta o metálica), el color de la montura, el color de cada vidrio, el precio.

De los clientes quiere almacenar: El nombre, la dirección postal, el teléfono, el correo electrónico, la fecha de registro.
Cuando llega uno cliente nuevo, almacenar el cliente que le ha recomendado el establecimiento (siempre que alguien le haya recomendado).
Nuestro sistema tendrá que indicar quién ha sido el empleado/da que ha vendido cada gafa. Define un periodo de tiempo de ventas.

- Ejercicio 2 - Pizzería
  Te han contratado para diseñar una web que permita hacer pedidos de comer a domicilio por Internet.

Ten en cuenta las siguientes indicaciones para modelar cómo sería la base de datos del proyecto:
Para cada cliente/a almacenamos un identificador único: Nombre, apellidos, dirección, código postal, localidad, provincia, número de teléfono.
Una persona puede realizar muchos pedidos, pero un único pedido solo puede ser realizado por una única persona. De cada pedido se almacena un identificador único: Data/hora, si el pedido es para reparto a domicilio o para recoger en tienda, la cantidad de productos que se han seleccionado de cada tipo, el precio total.

Un pedido puede constar de uno o varios productos.

Los productos pueden ser pizzas, hamburguesas y bebidas. De cada producto se almacena un identificador único: Nombre, descripción, imagen, precio.

En el caso de las pizzas existen varias categorías que pueden ir cambiando de nombre a lo largo del año. Una pizza solo puede estar dentro de una categoría, pero una categoría puede tener muchas pizzas.

De cada categoría se almacena un identificador único y un nombre. Un pedido es gestionado por una única tienda y una tienda puede gestionar muchos pedidos. De cada tienda se almacena un identificador único: Dirección, código postal, localidad, provincia.

En una tienda pueden trabajar muchos empleados/das y un empleado/da solo puede trabajar en una tienda. De cada empleado/da, se almacena un identificador único: Nombre, apellidos, NIF, Teléfono.
Si trabaja como cocinero/a o repartidor/a. Para los pedidos de reparto a domicilio interesa guardar quién es el repartidor/a que hace la entrega del pedido y la data/hora del momento de la entrega.

# Nivel 2

- Ejercicio 1 - YouTube
  Trataremos de hacer un modelo sencillo de cómo sería la base de datos para una versión reducida de YouTube.

De cada usuario/a guardamos un identificador único: Email, password, nombre de usuario/aria, fecha de nacimiento, sexo, país, código postal.

Un usuario/a publica videos. De cada video guardamos un identificador único: Un título, una descripción, un tamaño, el nombre del archivo de video, duración del video, un thumbnail, el número de reproducciones, el número de likes, el número de dislikes.

Un video puede tener tres estados diferentes: público, oculto y privado. Un video puede tener muchas etiquetas. Una etiqueta se identifica por un identificador único y un nombre de etiqueta. Interesa guardar quién es el usuario/a que publica el video y en que fecha/hora lo hace.

Un usuario/a puede crear un canal. Un canal tiene un identificador único: Un nombre, una descripción, una fecha de creación.

Un usuario/a se puede subscribir en los canales otros usuarios/as. Un usuario/a puede darle un like o un dislike a un video una única vez. Habrá que llevar un registro de los usuarios/as que le han dado like y dislike a un determinado video y en que fecha/hora lo hicieron.

Un usuario/a puede crear playlists con los videos que le gustan. Cada playlist tiene un identificador único: Un nombre, una fecha de creación, un estado que indica que puede ser pública o privada.

Un usuario/a puede escribir comentarios en un video determinado. Cada comentario está identificado por un identificador único: El texto del comentario, la fecha/hora en la cual se realizó.

Un usuario/a puede marcar un comentario como me gusta o no me gusta. Habrá que llevar un registro de los usuarios/as que han marcado un comentario como me gusta/no me gusta, y en que fecha/hora lo hicieron.

Requisitos
Para verificar que tu diseño es correcto, efectúa las siguientes consultas y comprueba que devuelven resultados correctos:

Óptica:

Lista el total de compras de un cliente/a.
Lista las diferentes ojeras que ha vendido un empleado durante un año.
Lista los diferentes proveedores que han suministrado ojeras vendidas con éxito por la óptica.

Pizzería:

Lista cuántos productos de tipos “Bebidas”. se han vendido en una determinada localidad.
Lista cuántos pedidos ha efectuado un determinado empleado/da.
