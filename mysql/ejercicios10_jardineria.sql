-- *** BBDD 10_jardineria ***

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
-- 5 Devuelve el nombre del producto que tenga el precio de venta más caro.
-- 6 Devuelve un listado indicando todas las ciudades donde hay oficinas y el número de empleados que tiene.
-- 7 Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.
-- 8 Devuelve un listado de los productos que nunca han aparecido en un pedido.
-- 9 Calcula el número de clientes que no tiene asignado representante de ventas.
-- 10 Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.
-- 11 Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.
-- 12 Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
-- 13 Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago, utilizando una subconsulta
-- 14 Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.
-- 15 Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente, utilizando una subconsulta
-- 16 Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
-- 17 Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que tendrá que calcular cuál es el número total de unidades que se han vendido de cada producto a partir de los datos de la tabla detalle_pedido)
-- 18 Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los que no tienen un cliente asociado.
-- 19 La misma información que en la pregunta anterior, pero agrupada por código de producto.
-- 20 ¿Cuántos clientes existen con domicilio en la ciudad de Madrid?
-- 21 Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
-- 22 Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el nombre de su jefe asociado.
-- 23 Devuelve el producto que más unidades tiene en stock.
-- 24 Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.
-- 25 Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
-- 26 La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el IVA y el total facturado. La base imponible se calcula sumando el coste del producto por el número de unidades vendidas de la tabla detalle_pedido. El IVA es el 21 % de la base imponible, y el total la suma de los dos campos anteriores.
-- 27 Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
-- 28 Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.
-- 29 Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
-- 30 Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas.
-- 31 Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
-- 32 Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
-- 33 Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos.
-- 34 Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
-- 35 Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.
-- 36 Devuelve un listado con los distintos estados por los que puede pasar un pedido.
-- 37 Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.
-- 38 Calcula el precio de venta del producto más caro y más barato en una misma consulta.
-- 39 Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
-- 40 Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.
-- 41 Devuelve el nombre del cliente, el nombre y primer apellido de su representante de ventas y el número de teléfono de la oficina del representante de ventas, de aquellos clientes que no hayan realizado ningún pago.
-- 42 Devuelve el nombre de los clientes que hayan hecho pedidos en 2008 ordenados alfabéticamente de menor a mayor.
-- 43 Devuelve el nombre, los apellidos y el email de los empleados que están a cargo de Alberto Soria.
-- 44 Devuelve un listado de los productos que han aparecido en un pedido alguna vez.
-- 45 Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
-- 46 Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han vendido de cada uno. El listado deberá estar ordenado por el número total de unidades vendidas.
-- 47 Devuelve el listado de clientes donde aparezca el nombre del cliente, el nombre y primer apellido de su representante de ventas y la ciudad donde está su oficina.
-- 48 Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta: Utilizando la función YEAR de MySQL., Utilizando la función DATE_FORMAT de MySQL., Sin utilizar ninguna de las funciones anteriores.
-- 49 Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.
-- 50 Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.
-- 51 Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN).
-- 52 Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.
-- 53 ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos.
-- 54 Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.
-- 55 Devuelve un listado con el nombre de los todos los clientes españoles.
-- 56 Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado junto con los datos de la oficina donde trabajan.
-- 57 Devuelve el producto que menos unidades tiene en stock.
-- 58 Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M
-- 59 Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.
-- 60 ¿Cuál fue el pago medio en 2009?
-- 61 Devuelve el nombre del cliente con mayor límite de crédito.
-- 62 Devuelve el listado de clientes indicando el nombre del cliente y cuántos pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.
-- 63 Devuelve un listado de los productos que nunca han aparecido en un pedido. El resultado debe mostrar el nombre y la descripción.
-- 64 Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.
-- 65 Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de sus jefe.
-- 66 Muestre la suma total de todos los pagos que se realizaron para cada uno de los años que aparecen en la tabla pagos.
-- 67 Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.
-- 68 Devuelve el nombre del cliente con mayor límite de crédito utilizando una subconsulta
-- 69 Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada. Utilizando la función ADDDATE de MySQL., Utilizando la función DATEDIFF de MySQL., ¿Sería posible resolver esta consulta utilizando el operador de suma + o resta -?
-- 70 Devuelve el nombre, apellido1 y cargo de los empleados que no representen a ningún cliente.
-- 71 Devuelve el nombre del producto que tenga el precio de venta más caro utilizando una subconsulta
-- 72 Devuelve un listado con los nombres de los clientes y el total pagado por cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.
-- 73 ¿Cuántos clientes tiene cada país?
-- 74 La misma información que en la pregunta anterior, pero agrupada por código de producto filtrada por los códigos que empiecen por OR.
-- 75 Lista las ventas totales de los productos que hayan facturado más de 3000 euros. Se mostrará el nombre, unidades vendidas, total facturado y total facturado con impuestos (21% IVA).
-- 76 Calcula el número de productos diferentes que hay en cada uno de los pedidos.
-- 77 ¿Cuántos empleados hay en la compañía?
-- 78 Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
-- 79 Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.

-- *** Vistas ***
-- 80 Escriba una vista que se llame listado_pagos_clientes que muestre un listado donde aparezcan todos los clientes y los pagos que ha realizado cada uno de ellos. La vista deberá tener las siguientes columnas: nombre y apellidos del cliente concatenados, teléfono, ciudad, pais, fecha_pago, total del pago, id de la transacción
-- 81 Escriba una vista que se llame listado_pedidos_clientes que muestre un listado donde aparezcan todos los clientes y los pedidos que ha realizado cada uno de ellos. La vista deáber tener las siguientes columnas: nombre y apellidos del cliente concatendados, teléfono, ciudad, pais, código del pedido, fecha del pedido, fecha esperada, fecha de entrega y la cantidad total del pedido, que será la suma del producto de todas las cantidades por el precio de cada unidad, que aparecen en cada línea de pedido.
-- 82 Utilice las vistas que ha creado en los pasos anteriores para devolver un listado de los clientes de la ciudad de Madrid que han realizado pagos.
-- 83 Utilice las vistas que ha creado en los pasos anteriores para devolver un listado de los clientes que todavía no han recibido su pedido.
-- 84 Utilice las vistas que ha creado en los pasos anteriores para calcular el número de pedidos que se ha realizado cada uno de los clientes.
-- 85 Utilice las vistas que ha creado en los pasos anteriores para calcular el valor del pedido máximo y mínimo que ha realizado cada cliente.

