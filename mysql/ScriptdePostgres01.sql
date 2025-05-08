select coches.matricula, coches.color, modelos.modelo, marcas.marca * from coches 
	join modelos on coches.fk_modelo = modelos.id_modelo
	join marcas on modelos.fk_marca = marcas.id_marca;
