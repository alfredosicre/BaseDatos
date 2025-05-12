use 03b_alquiler_coches;
SELECT distinct marca, modelo, precio_alquiler -- distinct hace que solo salga un modelo por cada coche
	from coches 
    join modelos on fk_modelo = id_modelo
    join marcas on fk_marca = id_marca;
    
    