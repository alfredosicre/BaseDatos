use 03b_alquiler_coches;
unlock tables;

select coches.matricula c, c.color, modelos.modelo m, marcas.marca ma from coches 
	join modelos on c.fk_modelo = m.id_modelo
	join marcas on m.fk_marca = ma.id_marca;
