SELECT ma.marca, m.modelo,  c.color, c.matricula, c.precio_alquiler FROM 03b_alquiler_coches.coches c join 03b_alquiler_coches.modelos m 
	on c.fk_modelo = m.id_modelo
	join 03b_alquiler_coches.marcas ma on m.fk_marca = ma.id_marca;