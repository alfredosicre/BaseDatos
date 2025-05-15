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
select id_profesor, asignatura, avg(nota) media from profesores
	left join asignaturas on id_profesor = fk_profesor
		left join notas on id_asignatura = fk_asignatura
		group by id_profesor, id_asignatura
        having asignatura is not null order by id_profesor;
    
 -- (select producto, precio from productos where precio = (select min(precio) from productos);)
    
-- 13 Mostrar, de la Asignatura “Programacion I”, la nota máxima, mínima y la diferencia entre ambas. 
   -- Devolver también el número de alumnos que la han cursado.
select max(nota), min(nota), max(nota)-min(nota) resultado, count(id_alumno) alumnos from asignaturas
	join notas on id_asignatura = fk_asignatura   
		join alumnos on fk_alumno = id_alumno where asignatura = 'programacion I' and nota is not null
        group by id_asignatura;
	
-- 14 Obtener de Cada profesor las asignaturas que imparte, con los alumnos en cada una de ellas y su nota
select id_profesor, profesores.nombre, profesores.apellido1, asignatura, id_alumno, alumnos.nombre, alumnos.apellido1, nota from profesores 
	join asignaturas on id_profesor = fk_profesor
		join notas on fk_asignatura = id_asignatura
			join alumnos on fk_alumno = id_alumno  where nota is not null order by id_profesor, id_asignatura;

-- *** Subconsultas ***
-- 15 Cantidad de alumnos aprobados por ciudad, usando una subconsulta

-- 16 Notas de las asignaturas de cada uno de los alumnos comparada con la nota media de la asignatura

-- 17 Alumnos que están cursando asignaturas con los profesores de Málaga (subconsulta en JOIN)

-- 18 Nota media por asignatura, sólo aquéllas que la nota media sea mayor a la nota media del alumnos con dni 55630078R
