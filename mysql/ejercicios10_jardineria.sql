-- *** BBDD 10_jardineria ***
use 10_jardineria;

-- 1 Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
select distinct c.nombre_cliente, o.ciudad from clientes c
		join empleados e on c.id_cliente = e.id_empleado
			join oficinas o on e.fk_oficina = o.id_oficina
				join pagos p on c.id_cliente != p.fk_cliente order by c.nombre_cliente;

-- 2 Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido.
select distinct c.id_cliente, c.nombre_cliente, pa.id_transaccion, p.id_pedido from clientes c
	left join pedidos p on p.fk_cliente = c.id_cliente 
		left join pagos pa on pa.fk_cliente = c.id_cliente where (p.id_pedido is null) and (pa.id_transaccion is null) order by c.id_cliente;

-- 3 Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.
select distinct c.id_cliente, c.nombre_cliente from clientes c
	join pagos pa on c.id_cliente = pa.fk_cliente where pa.id_transaccion is not null order by c.id_cliente;

-- 4 Calcula el número de clientes que tiene la empresa.
select count(id_cliente) from clientes;

-- 5 Devuelve el nombre del producto que tenga el precio de venta más caro.
select max(precio_venta) maxi from productos;

select * from productos p where p.precio_venta >= (select max(pro.precio_venta) maxi from productos pro);

-- 6 Devuelve un listado indicando todas las ciudades donde hay oficinas y el número de empleados que tiene.
select ciudad, count(id_empleado) from oficinas
	left join empleados on id_oficina = fk_oficina
    group by id_oficina order by ciudad;

-- 7 Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.
select id_pedido, fk_cliente, fecha_esperada, fecha_entrega from pedidos where fecha_entrega > fecha_esperada;

-- 8 Devuelve un listado de los productos que nunca han aparecido en un pedido.
select * from productos
	left join detalles_pedido on id_producto = fk_producto where fk_pedido is null;

-- 9 Calcula el número de clientes que no tiene asignado representante de ventas.
select count(id_cliente) from clientes where fk_empleado_rep_ventas is null;

-- 10 Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.
select * from empleados where puesto != 'representante ventas';

select count(*) from clientes where fk_empleado_rep_ventas is null;

-- 11 Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.
select * from clientes 
	join empleados on fk_empleado_rep_ventas = id_empleado where ciudad = 'madrid' and ((id_empleado = 11) or (id_empleado = 30));

-- 12 Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
select * from empleados where fk_jefe is null;

-- 13 Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago, utilizando una subconsulta
select * from pedidos ped 
	left join pagos pa on ped.fk_cliente = pa.fk_cliente where id_transaccion is null order by id_pedido;
    
select nombre_cliente from clientes
	 join (select * from pedidos ped 
		left join pagos pa on ped.fk_cliente = pa.fk_cliente where id_transaccion is null order by id_pedido) sub on clientes.id_cliente = sub.fk_cliente;

-- 14 Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.
select * from pagos where (year(fecha_pago) = 2008) and forma_pago = 'paypal' order by id_transaccion;

-- 15 Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente, utilizando una subconsulta
-- esta es la subconsulta
select empleados.*, oficinas.* from empleados 
	left join clientes on id_empleado = fk_empleado_rep_ventas 
    left join oficinas on id_oficina = fk_oficina
    where fk_empleado_rep_ventas is null;
    
select e1.nombre, e1.apellido1, e1.apellido2, e1.puesto from empleados e1
	where id_empleado in 
		(select id_empleado from empleados
		left join clientes on id_empleado = fk_empleado_rep_ventas 
		left join oficinas on id_oficina = fk_oficina
		where fk_empleado_rep_ventas is null);
        
-- esta es la buena, con la subconsulta de arriba --------------------------------------------------------        
select nombre, apellido1, apellido2, puesto, oficinas.telefono telefono_oficina from oficinas
	join (select empleados.*, oficinas.* from empleados 
	left join clientes on id_empleado = fk_empleado_rep_ventas 
    left join oficinas on id_oficina = fk_oficina
    where fk_empleado_rep_ventas is null) sub on oficinas.id_oficina = sub.id_oficina; 
	

-- 16 Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
select DISTINCT clientes.nombre_cliente, empleados.nombre NombreRepresentante, empleados.apellido1 ApellidoRepresentante from clientes 
	left join pagos on id_cliente = fk_cliente 
		left join empleados on id_empleado = fk_empleado_rep_ventas
		where id_transaccion is not null order by clientes.nombre_cliente;

-- 17 Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que tendrá que calcular cuál es el número total de unidades que se han vendido de 
-- cada producto a partir de los datos de la tabla detalle_pedido)

select max(cant) from (select sum(cantidad) cant from detalles_pedido
group by fk_producto) cantidades;
	
select nombre, sum(cantidad) mas_vendido from productos 
	join detalles_pedido on id_producto = fk_producto
    group by id_producto
    having mas_vendido = (select max(cant) from (select sum(cantidad) cant from detalles_pedido
		group by fk_producto) cantidades) ;

-- 18 Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los que no tienen un cliente asociado.
select * from empleados 
	left join oficinas on fk_oficina = id_oficina
		left join clientes on  fk_empleado_rep_ventas = id_empleado where id_cliente is null;

-- 20 ¿Cuántos clientes existen con domicilio en la ciudad de Madrid?
select count(ciudad) from clientes where ciudad = 'Madrid';

-- 21 Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
select id_oficina, count(ciudad), ciudad from oficinas
group by id_oficina;

select ciudad, count(ciudad) from oficinas
group by ciudad;

-- 22 Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el nombre de su jefe asociado.
select * from empleados 
	left join clientes on  fk_empleado_rep_ventas = id_empleado where id_cliente is null;
    
select e.nombre, e.apellido1, e.id_empleado, e.fk_jefe, (select nombre from empleados where e.fk_jefe = id_empleado) jefe
	from empleados e;
    
-- esta es la correcta
select e.nombre, e.apellido1, e.apellido2, jefe.nombre, jefe.apellido1, e.fk_jefe from empleados e
	left join oficinas on fk_oficina = id_oficina
		left join clientes on  fk_empleado_rep_ventas = id_empleado
			left join empleados jefe on e.fk_jefe = jefe.id_empleado where id_cliente is null;
    

-- 23 Devuelve el producto que más unidades tiene en stock.
select max(cantidad_en_stock) cant_max from productos;

select * from productos where cantidad_en_stock = (select max(cantidad_en_stock) cant_max from productos);

-- 24 Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.
select DISTINCT clientes.nombre_cliente, empleados.nombre NombreRepresentante, empleados.apellido1 ApellidoRepresentante from clientes 
	left join pagos on id_cliente = fk_cliente 
		left join empleados on id_empleado = fk_empleado_rep_ventas
		where id_transaccion is null order by clientes.nombre_cliente;

-- 25 Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
select ciudad, telefono from oficinas order by ciudad;

-- 26 La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el IVA y el total facturado.
-- La base imponible se calcula sumando el coste del producto por el número de unidades vendidas de la tabla detalle_pedido. El IVA es el 21 % de la base imponible, y el total la suma de los dos campos anteriores.
select sum(precio_unidad * cantidad) base_imponible, sum((precio_unidad * cantidad * 1.21)-(precio_unidad * cantidad)) iva, sum(precio_unidad * cantidad + (precio_unidad * cantidad * 1.21)-(precio_unidad * cantidad)) total
	from detalles_pedido;

-- 27 Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
select nombre, apellido1, apellido2, email from empleados where fk_jefe = 7;

-- 28 Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.
select distinct o.oficina, o.ciudad, c.ciudad  from clientes c
	left join empleados on id_empleado = fk_empleado_rep_ventas
		left join oficinas o on id_oficina = fk_oficina where c.ciudad = 'fuenlabrada';

-- 29 Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
select * from pedidos where estado = 'rechazado' and year(fecha_pedido) = 2009 order by fecha_pedido;

-- 30 Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas.
select distinct forma_pago from pagos;

-- 31 Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
select * from clientes 
	left join pagos on id_cliente = fk_cliente 
		where id_transaccion is null order by clientes.nombre_cliente;

-- 32 Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
select distinct c.nombre_cliente from clientes c
	left join pedidos p on p.fk_cliente = c.id_cliente
		left join pagos pa on p.fk_cliente = pa.fk_cliente 
			where p.id_pedido is not null and id_transaccion is null;

-- 33 Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos.
select fk_pedido, sum(cantidad) from detalles_pedido
	group by fk_pedido;

-- 34 Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
select distinct c.nombre_cliente, gama from clientes c
	left join pedidos p on p.fk_cliente = c.id_cliente
		left join detalles_pedido det on det.fk_pedido = p.id_pedido
			left join productos prod on det.fk_producto = prod.id_producto
				left join gamas_productos gama on prod.fk_gama = gama.id_gama where gama.gama is not null order by c.nombre_cliente; 

-- 35 Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.
select * from empleados
	left join clientes on id_empleado = id_cliente where id_cliente is null;

-- 36 Devuelve un listado con los distintos estados por los que puede pasar un pedido.
select distinct estado from pedidos;

-- 37 Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock.
-- El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.
select * from productos
	join gamas_productos on id_gama = fk_gama where gama = 'ornamentales' and cantidad_en_stock > 100 order by precio_venta desc;

-- 38 Calcula el precio de venta del producto más caro y más barato en una misma consulta.
select max(precio_venta) from productos;
select min(precio_venta) from productos;

select * from productos where precio_venta = (select max(precio_venta) from productos) or precio_venta = (select min(precio_venta) from productos); 

-- 39 Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
select * from clientes c
	join empleados e on e.id_empleado = c.fk_empleado_rep_ventas
		join oficinas o on o.id_oficina = e.fk_oficina;

-- 40 Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.
select distinct id_empleado, nombre, count(fk_empleado_rep_ventas) clientes from empleados e
	join clientes c on c.fk_empleado_rep_ventas = e.id_empleado
		group by id_empleado;

-- 41 Devuelve el nombre del cliente, el nombre y primer apellido de su representante de ventas y el número de teléfono de la oficina del representante de ventas, de aquellos clientes que no hayan realizado ningún pago.
select c.nombre_cliente, em.nombre, em.apellido1, ofi.telefono from clientes c
	left join empleados em on em.id_empleado = c.id_cliente
		left join oficinas ofi on ofi.id_oficina = em.fk_oficina
			left join pagos p on p.fk_cliente = c.id_cliente where p.id_transaccion is null;

-- 42 Devuelve el nombre de los clientes que hayan hecho pedidos en 2008 ordenados alfabéticamente de menor a mayor.
select distinct nombre_cliente from clientes
	join pedidos on id_cliente = fk_cliente where year(fecha_pedido) = 2008 order by nombre_cliente;

-- 43 Devuelve el nombre, los apellidos y el email de los empleados que están a cargo de Alberto Soria.
select * from empleados where nombre = 'alberto' and apellido1 = 'soria';

select * from empleados where fk_jefe = (select id_empleado from empleados where nombre = 'alberto' and apellido1 = 'soria');

-- 44 Devuelve un listado de los productos que han aparecido en un pedido alguna vez.
select distinct id_producto, nombre from productos 
	left join detalles_pedido on fk_producto = id_producto where fk_producto is not null order by id_producto;
    
select distinct id_producto, nombre from productos 
	join detalles_pedido on fk_producto = id_producto order by id_producto;

-- 45 Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
select distinct id_cliente, nombre_cliente from clientes c
	join empleados e on e.id_empleado = c.fk_empleado_rep_ventas
		join oficinas o on o.id_oficina = e.fk_oficina
			join pagos pa on pa.fk_cliente = c.id_cliente;
		

-- 46 Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han vendido de cada uno. El listado deberá estar ordenado por el número total de unidades vendidas.
select fk_producto, sum(cantidad) canti from detalles_pedido
	group by fk_producto order by canti desc limit 20;
    
-- 47 Devuelve el listado de clientes donde aparezca el nombre del cliente, el nombre y primer apellido de su representante de ventas y la ciudad donde está su oficina.
select * from clientes c
	join empleados e on e.id_empleado = c.fk_empleado_rep_ventas
		join oficinas o on o.id_oficina = e.fk_oficina;

-- 48 Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos. 
-- Resuelva la consulta: Utilizando la función YEAR de MySQL., Utilizando la función DATE_FORMAT de MySQL., Sin utilizar ninguna de las funciones anteriores.
select distinct id_cliente from clientes 
	join pagos on fk_cliente = id_cliente where year(fecha_pago) = 2008;

-- 49 Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.
select nombre_cliente, nombre, apellido1 from clientes
	join empleados on fk_empleado_rep_ventas = id_empleado;

-- 50 Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.
select min(fecha_pago) from pagos;
select max(fecha_pago) from pagos;

select nombre_cliente, fecha_pago from clientes c 
	join pagos on fk_cliente = id_cliente
    where fecha_pago = (select min(fecha_pago) from pagos) or fecha_pago = (select max(fecha_pago) from pagos);
	
-- 51 Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN).
select sum(total) from pagos
	group by fk_cliente;
    
select id_cliente, nombre_cliente, limite_credito, (select sum(total)
 from pagos where id_cliente = fk_cliente) pagosrealizados 
from clientes where limite_credito > (select sum(total) from pagos
		where id_cliente = fk_cliente);

-- 52 Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.
select e.nombre, e.apellido1, e.id_empleado, e.fk_jefe, (select nombre from empleados where e.fk_jefe = id_empleado) jefe
	from empleados e;

-- 53 ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos.
 select estado, count(id_pedido) contar from pedidos
	group by estado order by contar desc ;

-- 54 Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.
select * from oficinas
where id_oficina not in (select distinct e.fk_oficina
						from empleados e
                        join clientes c on e.id_empleado = c.fk_empleado_rep_ventas
                        join pedidos p on c.id_cliente = p.fk_cliente
                        join detalles_pedido dp on p.id_pedido = dp.fk_pedido
                        join productos prod on dp.fk_producto = prod.id_producto
                        join gamas_productos gp on prod.fk_gama = gp.id_gama
                        where gp.gama = 'Frutales');

-- 55 Devuelve un listado con el nombre de los todos los clientes españoles.
select * from clientes where pais = 'spain';

-- 56 Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado junto con los datos de la oficina donde trabajan.
select distinct empleados.*, oficinas.* from empleados
	left join clientes on fk_empleado_rep_ventas = id_empleado
		join oficinas on id_oficina = fk_oficina where id_cliente is null order by id_empleado;

-- 57 Devuelve el producto que menos unidades tiene en stock
select * from productos where cantidad_en_stock = (select min(cantidad_en_stock) from productos);

-- 58 Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M
select count(ciudad) from clientes where ciudad like 'M%'; 

-- 59 Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.
select * from pedidos where month(fecha_entrega) = 01;

-- 60 ¿Cuál fue el pago medio en 2009?
select avg(total) from pagos where year(fecha_pago) = 2009;

-- 61 Devuelve el nombre del cliente con mayor límite de crédito
select * from clientes where limite_credito = (select max(limite_credito) from clientes);

-- 62 Devuelve el listado de clientes indicando el nombre del cliente y cuántos pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.
select nombre_cliente, count(id_pedido) from clientes 
	join pedidos on fk_cliente = id_cliente
		group by id_cliente order by id_cliente; 

-- 63 Devuelve un listado de los productos que nunca han aparecido en un pedido. El resultado debe mostrar el nombre y la descripción.
select distinct id_producto, nombre, descripcion from productos
	left join detalles_pedido on fk_producto = id_producto where fk_pedido is null order by nombre;

-- 64 Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.
select nombre, apellido1, apellido2, puesto, oficinas.telefono from empleados
	left join clientes on fk_empleado_rep_ventas = id_empleado
		left join oficinas on id_oficina = fk_oficina where id_cliente is null order by nombre;

-- 65 Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de su jefe.
select e.nombre, e.apellido1, e.apellido2, e.fk_jefe, jefe1.nombre, jefe1.apellido1, jefe1.fk_jefe, jefe2.nombre, jefe2.apellido1, jefe2.fk_jefe from empleados e
			left join empleados jefe1 on e.fk_jefe = jefe1.id_empleado
				left join empleados jefe2 on jefe1.fk_jefe = jefe2.id_empleado order by e.nombre;

-- 66 Muestre la suma total de todos los pagos que se realizaron para cada uno de los años que aparecen en la tabla pagos.
select year(fecha_pago), sum(total) from pagos 
	group by year(fecha_pago) order by year(fecha_pago);

-- 67 Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.
select * from clientes 
	left join pedidos on fk_cliente = id_cliente where id_pedido is null;

-- 68 Devuelve el nombre del cliente con mayor límite de crédito utilizando una subconsulta
select * from clientes where limite_credito = (select max(limite_credito) from clientes);

-- 69 Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.
--  Utilizando la función ADDDATE de MySQL., Utilizando la función DATEDIFF de MySQL., ¿Sería posible resolver esta consulta utilizando el operador de suma + o resta -?
select p.id_pedido, p.fk_cliente, p.fk_cliente, p.fecha_esperada, p.fecha_entrega
	from pedidos p
    where adddate(p.fecha_entrega, 2) <= p.fecha_esperada; -- el adddate le suma dos dias a la fecha_entrega, agrega dias a una fecha. datediff calcula los dias que hay entre dos fechas

-- 70 Devuelve el nombre, apellido1 y cargo de los empleados que no representen a ningún cliente.
-- teht
select e.nombre, e.apellido1, e.apellido2, e.puesto, id_cliente from empleados e
	left join clientes on fk_empleado_rep_ventas = id_empleado where fk_empleado_rep_ventas is null;
    
-- 71 Devuelve el nombre del producto que tenga el precio de venta más caro utilizando una subconsulta
select * from productos where precio_venta = (select max(precio_venta) from productos);

-- 72 Devuelve un listado con los nombres de los clientes y el total pagado por cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.
select nombre_cliente, coalesce(sum(total),0) from clientes -- coalesce te pone en un campo null el valor que tu le digas
	left join pagos on fk_cliente = id_cliente
    group by id_cliente order by id_cliente;    

-- 73 ¿Cuántos clientes tiene cada país?
select pais, count(id_cliente) from clientes 
	group by pais;

-- 75 Lista las ventas totales de los productos que hayan facturado más de 3000 euros. Se mostrará el nombre, unidades vendidas, total facturado y total facturado con impuestos (21% IVA).
select id_producto, nombre,
sum(cantidad),  
sum(cantidad * precio_unidad) total, 
sum(cantidad * precio_unidad) * 1.21 totaliva
from productos
	join detalles_pedido on id_producto = fk_producto
		group by id_producto 
        having total > 3000;

-- 76 Calcula el número de productos diferentes que hay en cada uno de los pedidos.
select fk_pedido, count(fk_producto) from detalles_pedido
	group by fk_pedido;

-- 77 ¿Cuántos empleados hay en la compañía?
select count(id_empleado) from empleados;

-- 78 Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
select distinct id_cliente, nombre_cliente from clientes
	join pedidos where fecha_entrega > fecha_esperada order by id_cliente;

-- 79 Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.
select * from empleados 
	left join oficinas on fk_oficina = id_oficina where id_oficina is null;

-- *** Vistas ********************************************************************************************************************************************************************
-- 80 Escriba una vista que se llame listado_pagos_clientes que muestre un listado donde aparezcan todos los clientes y los pagos que ha realizado cada uno de ellos.
--  La vista deberá tener las siguientes columnas: nombre y apellidos del cliente concatenados, teléfono, ciudad, pais, fecha_pago, total del pago, id de la transacción

select concat(nombre_contacto, ' ', apellido_contacto) nombrecliente, telefono, ciudad, pais, fecha_pago, total, id_transaccion from clientes 
	join pagos on id_cliente = fk_cliente;
    
-- una vista es una select guardada dandole un nombre:

create or replace view listado_pagos_clientes as -- or replace es por si ya existe, no dar error
	select id_cliente, concat(nombre_contacto, ' ', apellido_contacto) nombrecliente, telefono, ciudad, pais, fecha_pago, total, id_transaccion 
    from clientes c 
	join pagos p on c.id_cliente = p.fk_cliente;
	

-- 81 Escriba una vista que se llame listado_pedidos_clientes que muestre un listado donde aparezcan todos los clientes y los pedidos que ha realizado cada uno de ellos.
-- La vista deáber tener las siguientes columnas: nombre y apellidos del cliente concatendados, teléfono, ciudad, pais, código del pedido, fecha del pedido, fecha esperada, 
-- fecha de entrega y la cantidad total del pedido, que será la suma del producto de todas las cantidades por el precio de cada unidad, que aparecen en cada línea de pedido.
select id_cliente, concat(nombre_contacto, ' ', apellido_contacto) nombrecliente, telefono, ciudad, pais, id_pedido, fecha_pedido, fecha_esperada, fecha_entrega, sum(precio_unidad*cantidad) totalpedido from clientes c
	join pedidos p on c.id_cliente = p.fk_cliente
		join detalles_pedido d on p.id_pedido = d.fk_pedido
        group by fk_pedido order by nombrecliente, id_pedido;
        
create or replace view listado_pedidos_clientes as 
	select id_cliente, concat(nombre_contacto, ' ', apellido_contacto) nombrecliente, telefono, ciudad, pais, id_pedido, fecha_pedido, fecha_esperada, fecha_entrega, sum(precio_unidad*cantidad) totalpedido from clientes c
	join pedidos p on c.id_cliente = p.fk_cliente
		join detalles_pedido d on p.id_pedido = d.fk_pedido
        group by fk_pedido order by nombrecliente, id_pedido;

-- 82 Utilice las vistas que ha creado en los pasos anteriores para devolver un listado de los clientes de la ciudad de Madrid que han realizado pagos.
select id_cliente, nombrecliente from listado_pagos_clientes where ciudad = 'madrid';

-- 83 Utilice las vistas que ha creado en los pasos anteriores para devolver un listado de los clientes que todavía no han recibido su pedido. ,.-  <.   b.  , n.            
select distinct nombrecliente from listado_pedidos_clientes where fecha_entrega is null;

-- 84 Utilice las vistas que ha creado en los pasos anteriores para calcular el número de pedidos que se ha realizado cada uno de los clientes.
select id_cliente, nombrecliente, count(*) from listado_pedidos_clientes
	group by id_cliente order by id_cliente;

-- 85 Utilice las vistas que ha creado en los pasos anteriores para calcular el valor del pedido máximo y mínimo que ha realizado cada cliente.
select id_cliente, max(totalpedido) mayor, min(totalpedido) menor from listado_pedidos_clientes
	group by id_cliente order by id_cliente;

