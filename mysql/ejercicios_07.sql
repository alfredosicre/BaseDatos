-- *** BBDD 02_tienda ***
use 02_tienda;
-- 1 Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
select id_fabricante, fabricante, producto, precio, fabricante
from fabricantes f
join productos p on f.id_fabricante = p.fk_fabricante
order by precio asc limit 1;

-- 2 Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
select id_fabricante, fabricante, producto, precio, fabricante
from fabricantes f
join productos p on f.id_fabricante = p.fk_fabricante
order by precio desc limit 1;

-- 3 Devuelve una lista de todos los productos del fabricante Lenovo.
select id_fabricante, fabricante, producto, precio, fabricante
from fabricantes f
join productos p on f.id_fabricante = p.fk_fabricante
where fabricante = 'lenovo';

-- 4 Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
select id_fabricante, fabricante, producto, precio, fabricante
from fabricantes f
join productos p on f.id_fabricante = p.fk_fabricante
where fabricante = 'crucial' and precio > 200;

-- 5 Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Sin utilizar el operador IN.
select id_fabricante, fabricante, producto, precio, fabricante
from fabricantes f
join productos p on f.id_fabricante = p.fk_fabricante
where fabricante in ('crucial','asus','Hewlett-Packardy','seagate');

-- 6 Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Utilizando el operador IN.
-- 7 Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.
-- 8 Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.
-- 9 Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente)
-- 10 Devuelve un listado con el código y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.
-- 11 Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.
-- 12 Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.

-- 13 Calcula el número total de productos que hay en la tabla productos.
select count(id_producto) from productos;
    
-- 14 Calcula el número total de fabricantes que hay en la tabla fabricante.
select count(id_fabricante) from fabricantes;

-- 15 Calcula el número de valores distintos de código de fabricante aparecen en la tabla productos.
select count(distinct(fk_fabricante)) from productos;

-- 16 Calcula la media del precio de todos los productos.
select avg(precio) from productos;
-- 17 Calcula el precio más barato de todos los productos.
select min(precio) from productos;
-- 18 Calcula el precio más caro de todos los productos.
select max(precio) from productos;
-- 19 Lista el nombre y el precio del producto más barato. -- NO
-- 20 Lista el nombre y el precio del producto más caro. -- NO
-- 21 Calcula la suma de los precios de todos los productos.
select sum(precio) from productos;

-- 22 Calcula el número de productos que tiene el fabricante Asus.
select count(id_producto), fabricante from productos join fabricantes on fk_fabricante = id_fabricante where fabricante = 'asus';

-- 23 Calcula la media del precio de todos los productos del fabricante Asus.
select avg(precio), fabricante from productos join fabricantes on fk_fabricante = id_fabricante where fabricante = 'asus';

-- 24 Calcula el precio más barato de todos los productos del fabricante Asus.
select min(precio), fabricante from productos join fabricantes on fk_fabricante = id_fabricante where fabricante = 'asus';

-- 25 Calcula el precio más caro de todos los productos del fabricante Asus.
select max(precio), fabricante from productos join fabricantes on fk_fabricante = id_fabricante where fabricante = 'asus';

-- 26 Calcula la suma de todos los productos del fabricante Asus.
select sum(precio), fabricante from productos join fabricantes on fk_fabricante = id_fabricante where fabricante = 'asus';

-- 27 Muestra el precio máximo, precio mínimo, precio medio y el número total de productos que tiene el fabricante Crucial.
select max(precio), min(precio), avg(precio), count(id_producto), fabricante from productos join fabricantes on fk_fabricante = id_fabricante where fabricante = 'crucial';

-- 28 Muestra el número total de productos que tiene cada uno de los fabricantes. El listado también debe incluir los fabricantes que no tienen ningún producto.
   --  El resultado mostrará dos columnas, una con el nombre del fabricante y otra con el número de productos que tiene. Ordene el resultado descendentemente por el número de productos.
select fabricante, count(id_fabricante) numerodeproductos from fabricantes f
	left join productos p on p.fk_fabricante = f.id_fabricante
    group by id_fabricante order by numerodeproductos desc;
    
-- 29 Muestra el precio máximo, precio mínimo y precio medio de los productos de cada uno de los fabricantes.
--  El resultado mostrará el nombre del fabricante junto con los datos que se solicitan.
select fabricante, max(precio), min(precio), avg(precio) from fabricantes f
	join productos p on p.fk_fabricante = f.id_fabricante
    group by id_fabricante;

-- 30 Muestra el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€.
--    No es necesario mostrar el nombre del fabricante, con el código del fabricante es suficiente.
select fabricante, max(precio) PrecioMaximo, min(precio) PrecioMinimo, avg(precio) MediaPrecio, count(id_fabricante) NumeroProductos from fabricantes f
	join productos p on p.fk_fabricante = f.id_fabricante
    group by id_fabricante
    having avg(precio)>200;
    
-- 31 Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€.
--   Es necesario mostrar el nombre del fabricante.
select fabricante, max(precio) PrecioMaximo, min(precio) PrecioMinimo, avg(precio) MediaPrecio, count(id_fabricante) NumeroProductos from fabricantes f
	join productos p on p.fk_fabricante = f.id_fabricante
    group by id_fabricante
    having avg(precio)>200;
    
-- 32 Calcula el número de productos que tienen un precio mayor o igual a 180€.
select * from productos where precio>=180; 

-- 33 Calcula el número de productos que tiene cada fabricante con un precio mayor o igual a 180€.
select fabricante, count(id_producto) CantidadProductos from fabricantes f
	join productos p on p.fk_fabricante = f.id_fabricante where precio>=180
    group by id_fabricante;
    
-- 34 Lista el precio medio los productos de cada fabricante, mostrando solamente el código del fabricante.
select id_fabricante, avg(precio) from fabricantes f
	join productos p on p.fk_fabricante = f.id_fabricante
    group by id_fabricante;
    
-- 35 Lista el precio medio los productos de cada fabricante, mostrando solamente el nombre del fabricante.
select fabricante, avg(precio) from fabricantes f
	join productos p on p.fk_fabricante = f.id_fabricante
    group by id_fabricante;

-- 36 Lista los nombres de los fabricantes cuyos productos tienen un precio medio mayor o igual a 150€.
select fabricante, avg(precio) PrecioMedio from fabricantes f
	join productos p on p.fk_fabricante = f.id_fabricante
    group by id_fabricante
    having PrecioMedio>=150;

-- 37 Devuelve un listado con los nombres de los fabricantes que tienen 2 o más productos.
select id_fabricante, fabricante, count(id_producto) NumProductos from fabricantes f
	join productos p on p.fk_fabricante = f.id_fabricante
    group by id_fabricante
    having NumProductos>=2;

-- 38 Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €.
--   No es necesario mostrar el nombre de los fabricantes que no tienen productos que cumplan la condición.
select id_fabricante, fabricante, count(id_producto) from fabricantes f 
	join productos p on p.fk_fabricante = f.id_fabricante where precio>=220
    group by id_fabricante;

