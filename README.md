## Estructura de datos MYSQL

Este repositorio contiene ejercicios de modelado de bases de datos relacionales utilizando MySQL. Se ha realizado con el gestor de base de datos DBeaver.

Sprint 5.1 -Estructura_dades-MySQL de IT-Academy en la especialización de Node.js

Para seedear la base de datos y ejecutar los scripts proporcionados, sigue estos pasos:

1. Clona este repositorio en tu máquina local:

```sh
git clone https://github.com/stephanyhoy/Entrega-5.1_-Estructura_dades_-MySQL.git

```

2. Importar la estructura de la base de datos: Utiliza el archivo SQL proporcionados en la carpeta Script.sql de cada ejercicio para importar la estructura de la base de datos en tu servidor MySQL local.

3. Utiliza los scripts proporcionados para realizar las comprobaciones que se solicitan en cada uno de los ejercicios.

4. Los diagramas de las estructuras de las tablas correspondientes a cada una de las bases de datos las encontraran en las respectivas carpetas denominadas diagrama.

# Nivel 1

- Ejercicio 1 - Óptica
  Una óptica, denominada “Cul d'Ampolla”, quiere informatizar la gestión de los clientes y ventas de gafas.

En primer lugar, la óptica quiere saber cuál es el proveedor de cada una de las ojeras. En concreto quiere saber de cada proveedor: El nombre, la dirección (calle, número, piso, puerta, ciudad, código postal y país), teléfono, fax, NIF.

La política de compras de la óptica se basa que las gafas de una marca se comprarán a un único proveedor (así podrá sacar más buenos precios), pero pueden comprar gafas de varias marcas a un proveedor. De las gafas quiere saber: La marca, la graduación de cada uno de los vidrios, el tipo de montura (flotante, pasta o metálica), el color de la montura, el color de cada vidrio, el precio.

De los clientes quiere almacenar: El nombre, la dirección postal, el teléfono, el correo electrónico, la fecha de registro.
Cuando llega uno cliente nuevo, almacenar el cliente que le ha recomendado el establecimiento (siempre que alguien le haya recomendado).
Nuestro sistema tendrá que indicar quién ha sido el empleado/da que ha vendido cada gafa. Define un periodo de tiempo de ventas.

- Queries de verificación Optica:
  Para realizar estas verificaciones, puedes encontrar los scripts de los queries en el directorio Optica/Scripts

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

- Queries de verificación Pizzeria:
  Para realizar estas verificaciones, puedes encontrar los scripts de los queries en el directorio Pizzeria/Scripts

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

- Queries de verificación YouTube:
  Para realizar estas verificaciones, puedes encontrar los scripts de los queries en el directorio YouTube/Scripts

Requisitos
Para verificar que tu diseño es correcto, efectúa las siguientes consultas y comprueba que devuelven resultados correctos:

Óptica:

Lista el total de compras de un cliente/a.
Lista las diferentes gafas que ha vendido un empleado durante un año.
Lista los diferentes proveedores que han suministrado gafas vendidas con éxito por la óptica.

Pizzería:

Lista cuántos productos de tipos “Bebidas”. se han vendido en una determinada localidad.
Lista cuántos pedidos ha efectuado un determinado empleado/da.
