use 02_tienda;

-- subconsultas correlacionadas

-- media de los productos excepto el actual

select p.producto, p.precio, (select avg(precio) from productos where id_producto != p.id_producto)
	from productos p;