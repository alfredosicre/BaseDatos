-- *** BBDD 08_universidad ***
use 08_universidad;

-- 1 Obtener el nombre completo de los alumnos que estén cursando "Matematica Discreta"
select nombre, apellido1, apellido2, asignatura from alumnos
	join notas on fk_alumno = id_alumno
    join asignaturas on fk_asignatura = id_asignatura where asignatura = 'matematica discreta' order by id_alumno;
    
-- 2 Obtener el nombre completo y la nota obtenida de los alumnos que hayan cursado "Matematica Discreta"
select nombre, apellido1, apellido2, asignatura, nota from alumnos
	join notas on fk_alumno = id_alumno
    join asignaturas on fk_asignatura = id_asignatura where asignatura = 'matematica discreta' order by id_alumno;

-- 3 Obtener el listado de profesores de la Factultad de "Informatica"
select distinct profesores.*, facultad from profesores 
	join asignaturas on fk_profesor = id_profesor where facultad = 'informatica';

-- 4 Obtener la cantidad de alumnos por ciudad
select ciudad, count(id_alumno) from alumnos
	group by ciudad order by ciudad;
    
-- 5 Obtener el nombre completo y edad de todos los alumnos
select concat(apellido1,apellido2,nombre) nombrecompleto, timestampdiff(year, fecha_nacimiento, now()) edad from alumnos order by nombrecompleto;

-- 6 Obtener las edades de los alumnos que cursan asignaturas
select concat(apellido1,apellido2,nombre) nombrecompleto, nota, timestampdiff(year, fecha_nacimiento, now()) edad from alumnos
	join notas on fk_alumno = id_alumno order by nombrecompleto;
   

-- 7 Obtener las notas medias de los alumnos por edad
select timestampdiff(year, fecha_nacimiento, now()) edad, avg(nota) from alumnos
	join notas on fk_alumno = id_alumno 
    group by edad order by edad;
    
-- 8 Cantidad de alumnos matriculados en más de dos asignaturas
select count(id_alumno) alumnosMatriculados from alumnos join 
	(select count(fk_alumno) alumno from alumnos
	left join notas on fk_alumno = id_alumno
    group by fk_alumno
    having alumno >2) matri 
    on id_alumno = alumno;
    
select count(fk_alumno) alumno from alumnos
	left join notas on fk_alumno = id_alumno
    group by fk_alumno
    having alumno >2;
  
	

-- 9 Obtener los datos de los alumnos que no cursan ninguna asignatura ni tienen ninguna nota
select concat(apellido1,apellido2,nombre) nombrecompleto, fk_alumno, nota from alumnos left join notas on fk_alumno = id_alumno where fk_alumno is null;
	
-- 10 Cantidad de notas y media de notas de cada alumno
select id_alumno, nombre, apellido1, apellido2, count(nota) cantidadNotas, avg(nota) mediaNotas from alumnos
	left join notas on fk_alumno = id_alumno
    group by id_alumno;

-- 11 Listado de profesores con la cantidad de asignaturas que imparte cada uno de ellos, aunque ahora no estén impartiendo ninguna.
select id_profesor, count(id_asignatura) CantidadAsignaturas from profesores 
	left join asignaturas on id_profesor = fk_profesor 
    group by id_profesor order by id_profesor;

-- 12 Notas medias por asignaturas que imparte cada profesor
select p.*, a.*, avg(nota) media from profesores p -- lo correcto es detallar los campos que yo quiero que salgan
	join asignaturas a on p.id_profesor = a.fk_profesor
		join notas n on a.id_asignatura = n.fk_asignatura where n.nota is not null
		group by p.id_profesor, a.id_asignatura
        order by p.id_profesor, a.id_asignatura;
    
 -- (select producto, precio from productos where precio = (select min(precio) from productos);)
    
-- 13 Mostrar, de la Asignatura “Programacion I”, la nota máxima, mínima y la diferencia entre ambas. 
   -- Devolver también el número de alumnos que la han cursado.
select max(nota), min(nota), max(nota)-min(nota) resultado, count(id_alumno) alumnos from asignaturas a
	join notas n on a.id_asignatura = n.fk_asignatura   
		join alumnos al on n.fk_alumno = al.id_alumno where a.asignatura = 'programacion I' and n.nota is not null
        group by a.id_asignatura;
	
-- 14 Obtener de Cada profesor las asignaturas que imparte, con los alumnos en cada una de ellas y su nota
select id_profesor, profesores.nombre, profesores.apellido1, asignatura, id_alumno, alumnos.nombre, alumnos.apellido1, nota from profesores 
	join asignaturas on id_profesor = fk_profesor
		 join notas on fk_asignatura = id_asignatura
			 join alumnos on fk_alumno = id_alumno order by id_profesor, id_asignatura, alumnos.apellido1;

-- *** Subconsultas ***
-- 15 Cantidad de alumnos aprobados por ciudad, usando una subconsulta, no cantidad de asignaturas aprovadas por ciudad.
-- sin subconsulta:
select ciudad, count(distinct id_alumno) alumnoss from alumnos
		join notas on id_alumno = fk_alumno where nota >= 5
    group by ciudad order by ciudad;
 -- -------------------------------------------------   
-- con subconsulta:
-- alumnos diferentes que han aprovado
select distinct fk_alumno from notas where nota >= 5;

select ciudad, count(id_alumno) from alumnos where id_alumno in (select distinct fk_alumno from notas where nota >= 5) 
	group by ciudad;
  
-- 16 Notas de las asignaturas de cada uno de los alumnos comparada con la nota media de la asignatura
-- calculamos la nota media de cada asignatura
select fk_asignatura, avg(nota) media from notas
	group by fk_asignatura;
    
select alu.id_alumno, alu.apellido1, a.id_asignatura, a.asignatura, n.nota, medias.media 
			from alumnos alu 
						join notas n on alu.id_alumno = n.fk_alumno
						join asignaturas a on n.fk_asignatura = a.id_asignatura
                        join (select fk_asignatura, avg(nota) media from notas
							group by fk_asignatura) medias on n.fk_asignatura = medias.fk_asignatura
						where n.nota is not null;

-- 17 Alumnos que están cursando asignaturas con los profesores de Málaga (subconsulta en JOIN)
select id_profesor from profesores where ciudad = 'malaga';

-- asignaturas de profesores de malaga
select id_asignatura from asignaturas where fk_profesor in (select id_profesor from profesores where ciudad = 'malaga'); 

select distinct alumnos.* from alumnos 
	join notas n on id_alumno = fk_alumno
    join (select id_asignatura from asignaturas where fk_profesor in (select id_profesor from profesores where ciudad = 'malaga')) asigs on n.fk_asignatura = asigs.id_asignatura;

-- 18 Nota media por asignatura, sólo aquéllas que la nota media sea mayor a la nota media del alumnos con dni 55630078R
-- calculo de nota media del alumno de ese dni, subconsulta escalar para usar en el having.
select avg(nota) media from notas
	join alumnos on fk_alumno = id_alumno where dni = '55630078R';
-- ------- consulta con subconsulta ----
select id_asignatura, asignatura, avg(nota) media from asignaturas
	join notas on id_asignatura = fk_asignatura
    group by id_asignatura
    having media > (select avg(nota) media from notas
		join alumnos on fk_alumno = id_alumno where dni = '55630078R');
