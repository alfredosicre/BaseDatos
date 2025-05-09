    
select origen.idaeropuerto id_origen, origen.aeropuerto origen, destino.idaeropuerto id_destino, destino.aeropuerto destino
	from aeropuertos origen
	join conexiones cx on origen.idaeropuerto = cx.fk_aeropuerto_origen
	join aeropuertos destino on destino.idaeropuerto = cx.fk_aeropuerto_destino;

select * from aeropuertos as origen
	join conexiones cx on cx.fk_aeropuerto_origen = origen.idaeropuerto
    join aeropuertos as destino on cx.fk_aeropuerto_destino = destino.idaeropuerto;
    
    