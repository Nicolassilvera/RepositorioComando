use `ejerciciobd1`;

-- 1. Indicar cuáles son los títulos y autores de los libros cuyo tipo sea ‘no’ y sus precios originales superen los $21.
select TITULO , AUTOR from libro where PRECIO_ORI > 21 and TIPO = 'no';

-- 2. ¿Cuáles son los números, precios originales y ediciones de los libros cuyo tipo sea ‘no’ o que sus precios originales superen $21 
-- y las ediciones sean posteriores a 1985?
select NRO_LIBRO, PRECIO_ORI as 'Precios Originales', EDICION from libro where (PRECIO_ORI > 21 or TIPO = 'no') AND EDICION < '1985';

-- 3. Obtener la lista autores y ediciones de los libros cuyos nombres de autores comiencen con la letra L
select AUTOR , EDICION from libro where AUTOR like 'L%';

-- 4. Obtener la lista de autores y ediciones de los libros cuyos nombres de autores no comiencen con la letra G.
select AUTOR , EDICION from libro where AUTOR not like 'L%';

-- 5. Obtener la lista de autores, precios originales y ediciones de los libros cuyos autores
-- tengan la hilera "RR" en algún lugar del nombre
select AUTOR ,PRECIO_ORI, EDICION from libro where AUTOR  like '%RR%';

-- 6. Obtener la lista de títulos y ediciones de aquellos libros cuyos precios originales no
-- estén comprendidos entre $12 y $25.
select PRECIO_ORI,TITULO , EDICION from libro where 12 < PRECIO_ORI and PRECIO_ORI < 25;

-- 7. Obtener todos los tipos y ediciones DISTINTAS(en tipo y Edición) de los libros,
-- ordenado por Edición y año de edición ascendente.
select TIPO, EDICION from libro order by EDICION asc;

-- 8. Listar los números, ediciones, tipos, precios originales, precios actuales y diferencias
-- de precios para todos los libros clasificado por tipo y por dicha diferencia en forma
-- ascendente, en ese orden.



select NRO_LIBRO, EDICION, TIPO, PRECIO_ORI, PRECIO_ACT from libro order by PRECIO_ACT - PRECIO_ORI asc;
-- nose si se resuelve de esta manero pero de este punto no logre entender a fondo lo que realmente pedia el punto n° 8

-- 9. Listar los números, ediciones, tipos, precios originales, precios actuales y diferencias
-- de precios para todos los libros de estudio.
select nro_libro, edicion, tipos, precio_ori as 'Precio Original', precio_act as 'Precio Actual'  from libro;

-- 10. ¿Cuáles son los números, precios originales y ediciones de los libros cuyas ediciones
-- son posteriores a 1985 y además o bien el tipo es ‘no’ o el precio original supera $21?

select NRO_LIBRO, precio_ori, EDICION from LIBRO where edicion > 1985 and (tipo = 'no' or precio_ori > 21 );

-- 11. ¿Cuáles son los títulos y nombres de los autores de los libros cuyo tipo sea ‘no’ o
-- aquellos cuyos precios de origen superan $21?

select TITULO, AUTOR AS 'Nombre Autor' FROM LIBRO where TIPO = 'no' or precio_ori > 21;

-- 12. Obtener la lista de títulos y precios originales de los libros que se editaron en 1948,
-- 1978 y 1985

SELECT TITULO, PRECIO_ORI FROM LIBRO WHERE EDICION = 1948 OR EDICION=1978 OR EDICION=1985;

-- 13. Obtener los títulos y ediciones de los libros cuyos precios originales estén dentro del
-- rango de $12 a $25 inclusive

SELECT TITULO,EDICION FROM lIBRO WHERE PRECIO_ORI>= 12 AND PRECIO_ORI<= 25;

-- 14. Obtener la lista de títulos, precios originales y ediciones de aquellos libros cuyos títulos
-- tengan las letras "R" y "S" en algún lugar y en ese orden.

SELECT TITULO, PRECIO_ORI, EDICION FROM libro WHERE TITULO LIKE '%R%S%';

-- A15.
SELECT TITULO, PRECIO_ORI, EDICION FROM libro WHERE TITULO LIKE '_A%';

-- A16.
SELECT TITULO FROM libro WHERE TIPO LIKE 'no' ORDER BY EDICION asc;

-- A17.
SELECT NRO_LIBRO, EDICION, TIPO FROM libro WHERE PRECIO_ORI>20 ORDER BY EDICION desc, NRO_LIBRO asc;
 
-- A18.
SELECT NRO_LIBRO, EDICION, TIPO, PRECIO_ORI, (PRECIO_ACT - PRECIO_ORI) as diferencia FROM libro WHERE (PRECIO_ACT - PRECIO_ORI)>10;

-------------------------------------------------------------------------------------------------------------------------------------------------
-- B
-------------------------------------------------------------------------------------------------------------------------------------------------


-- 1. Obtener la suma y el promedio de los precios originales y el mínimo y el máximo de los
-- precios actuales para todos los libros cuyo año de edición sea mayor a 1970

SELECT SUM(PRECIO_ORI),avg(PRECIO_ORI),MIN(PRECIO_ACT), MAX(PRECIO_ACT) 
FROM LIBRO
WHERE EDICION > 1970;


-- 2. Obtener de la suma total de la suma de los precios originales más los actuales, el
-- promedio de dicha suma y el mínimo y el máximo de las diferencias de precios para
-- todos los libros cuyo año de edición sea superior a 1970.

SELECT SUM(PRECIO_ORI+PRECIO_ACT), AVG(PRECIO_ORI+PRECIO_ACT), MIN(PRECIO_ORI-PRECIO_ACT),  MAX(PRECIO_ORI-PRECIO_ACT)
FROM LIBRO
WHERE EDICION > 1970;

-- 3. Listar la cantidad de libros, los distintos tipos de libros, el mínimo y el máximo del
-- precio original, pero sólo para aquellos libros cuyo precio original supere los $45.

SELECT SUM(c.NRO_COPIA),tl.TIPO,MIN(l.PRECIO_ORI),MAX(l.PRECIO_ORI)
FROM libro l ,copias c ,tipolibro tl
where precio_ori > 45;

SELECT SUM(c.NRO_COPIA),TIPO,MIN(l.PRECIO_ORI),MAX(l.PRECIO_ORI)
FROM libro l ,copias c 
where precio_ori > 45;

-- 4. Listar los tipos de libros, totales de precios originales, promedios de precios actuales,
-- resumidos por tipo de libro y para los libros cuyas ediciones no sean de 1946, pero sólo
-- para aquellos tipos de libros cuya sumatoria de precios originales supere $40.

SELECT TIPO, SUM(PRECIO_ORI), AVG(PRECIO_ACT) 
FROM LIBRO
GROUP BY TIPO AND EDICION NOT LIKE 1946
HAVING SUM(PRECIO_ORI)>40;

-- 5. Listar los tipos de libros y promedios de precios originales agrupados por tipos, 
-- para aquellos tipos que tengan el promedio de sus precios originales por arriba del promedio de precios originales de todos los libros.

SELECT TIPO, AVG(PRECIO_ORI)
FROM LIBRO
group BY TIPO
HAVING AVG(PRECIO_ORI) > (SELECT AVG(PRECIO_ORI) FROM LIBRO);

-- 6. Listar los tipos de libros, totales de precios originales y promedios de precios actuales,
-- de aquellos libros que fueron editados entre 1946 y 1975, resumidos por tipo de libro.

SELECT TIPO, SUM(PRECIO_ORI),AVG(PRECIO_ACT)
FROM LIBRO
WHERE EDICION >= 1946 AND EDICION <= 1975 
GROUP BY TIPO;

-- 7. Listar los tipos de libros, totales de precios originales y promedios de precios actuales,
-- de aquellos libros que no fueron editados en 1946, resumidos por tipo de libro
-- clasificado por promedio de precios actuales de menor a mayor.

SELECT TIPO, SUM(PRECIO_ORI),AVG(PRECIO_ACT)
FROM LIBRO 
WHERE EDICION NOT LIKE 1946
group by TIPO 
ORDER BY (AVG(PRECIO_ACT))DESC;

-- 8. Listar los tipos de libros, totales de precios originales y promedios de precios actuales,
-- de aquellos libros que fueron editados entre 1946 y 1975, resumidos por tipo de libro.

SELECT TIPO, SUM(PRECIO_ORI),AVG(PRECIO_ACT)
FROM LIBRO
WHERE EDICION >= 1946 AND EDICION <= 1975 
GROUP BY TIPO;

-- 9. Listar el salario máximo agrupado por el tipo de trabajo.

SELECT MAX(SALARIO)
FROM LECTOR
GROUP BY TRABAJO;

-- 10. Listar el salario promedio agrupado por tipo de trabajo de los lectores que viven en
-- capital.

SELECT AVG(SALARIO)
FROM LECTOR
where direccion like 'capital'
GROUP BY TRABAJO;

SELECT AVG(SALARIO)
FROM LECTOR
GROUP BY TRABAJO
having DIRECCION = 'capital';


-------------------------------------------------------------------------------------------------------------------------------------------------
-- c
-------------------------------------------------------------------------------------------------------------------------------------------------


-- 1. Listar el Titulo, fecha de Préstamo y la fecha de Devolución de los Libros prestados

select l.titulo, p.f_prest, p.f_devol
from Prestamo as p
 left join libro as l
 on p.NRO_LIBRO = l.NRO_LIBRO ;

-- 2. Listar el Nro de Libro, Titulo, fecha de Préstamo y la fecha de Devolución de los Libros
-- prestados

select l.NRO_LIBRO, l.TITULO, p.F_PREST, p.F_DEVOL
FROM libro l
LEFT JOIN PRESTAMO p
on l.NRO_LIBRO = P.NRO_LIBRO ;

-- 3. Listar el número de lector, su nombre y la cantidad de préstamos realizados a ese
-- lector.

SELECT l.NRO_LECTOR, l.NOMBRE, p.F_PREST
FROM LECTOR l
INNER JOIN PRESTAMO p
ON  l.NRO_LECTOR = P.NRO_LECTOR ;
 
-- 4. Listar el número de libro, el título, el número de copia, y la cantidad de préstamos
-- realizados para cada copia de cada libro.

SELECT l.NRO_LIBRO, l.TITULO, p.NRO_COPIA, p.F_PREST
FROM LIBRO l
INNER JOIN PRESTAMO P
ON  l.NRO_LIBRO = P.NRO_LIBRO ;

-- 5. Listar el número de libro, el título, y la cantidad de préstamos realizados para ese libro
-- a partir del año 2012

SELECT l.NRO_LIBRO, l.TITULO, p.F_PREST
FROM LIBRO l
INNER JOIN PRESTAMO p
ON l.NRO_LIBRO = p.NRO_LIBRO 
WHERE EDICION > 2012;

-- 6. Listar el número de libro, el título, el número de copia, y la cantidad de préstamos
-- realizados para cada copia de cada libro, pero sólo para aquellas copias que se hayan
-- prestado más de 1 vez.

SELECT l.NRO_LIBRO, l.TITULO, p.NRO_COPIA, p.F_PREST
FROM LIBRO l
INNER JOIN PRESTAMO p
ON  l.NRO_LIBRO = P.NRO_LIBRO 
WHERE p.F_PREST>1;

-- 7. Listar el Nro de Libro, Titulo, nro de Copia y Fecha de Préstamo, de todas las Copias,
-- hayan sido prestadas o no

SELECT l.NRO_LIBRO, l.TITULO, p.NRO_COPIA, p.F_PREST
FROM LIBRO l
INNER JOIN PRESTAMO p
ON  l.NRO_LIBRO = P.NRO_LIBRO ;


-- 8. Listar Nro de Lector, Nombre, nro de Libro, Titulo, Descripción del Tipo de Libro , fecha
-- de préstamo que aquellos Prestamos que hayan sido devueltos y el tipo de Libro sea
-- Novela o Cuentos

SELECT l.NRO_LECTOR, l.NOMBRE, p.NRO_LIBRO, tl.DESCTIPO, p.F_PREST
FROM LECTOR l
INNER JOIN PRESTAMO p
INNER JOIN tipolibro tl
ON  l.NRO_LIBRO = P.NRO_LIBRO ;

-- 9. Obtener la lista de los títulos de los libros prestados y los nombres de los lectores que
-- los tienen en préstamo

SELECT l.TITULO, le.NOMBRE
FROM LIBRO l
LEFT JOIN PRESTAMO p
ON  l.NRO_LIBRO = P.NRO_LIBRO 
LEFT JOIN LECTOR le
ON le.NRO_LECTOR = p.NRO_LECTOR;


-- 10. Listar el Nro de Lector, Nombre y fecha de Préstamo de aquellos Lectores que hayan
-- realizado un préstamo y no lo hayan devuelto

SELECT l.NRO_LECTOR, l.NOMBRE, p.NRO_LIBRO, p.F_PREST 
FROM LECTOR l
LEFT JOIN PRESTAMO p
ON  l.NRO_LECTOR = p.NRO_LECTOR 
WHERE  p.F_DEVOL LIKE NULL;
 
-- D 11. Listar Nro de Lector, Nombre, nro de Libro, Titulo, fecha de préstamo que aquellos
-- Prestamos que hayan sido devueltos

SELECT L.NRO_LECTOR, L.NOMBRE, B.NRO_LIBRO, B.TITULO, P.F_PREST
FROM LECTOR AS L
INNER JOIN PRESTAMO AS P
ON L.NRO_LECTOR = P.NRO_LECTOR
INNER JOIN LIBRO AS B
ON P.NRO_LIBRO = B.NRO_LIBRO
WHERE P.F_DEVOL IS NOT NULL;

-- D 12. Listar Nro de Lector, Nombre, nro de Libro, Titulo, fecha de préstamo que aquellos
-- Prestamos que hayan sido devueltos y el tipo de Libro sea Novela o Cuentos 

SELECT L.NRO_LECTOR, L.NOMBRE, B.NRO_LIBRO, B.TITULO, P.F_PREST, P.F_DEVOL, B.TIPO
FROM LECTOR AS L
INNER JOIN PRESTAMO AS P
ON L.NRO_LECTOR = P.NRO_LECTOR
INNER JOIN LIBRO AS B
ON P.NRO_LIBRO = B.NRO_LIBRO
WHERE P.F_DEVOL IS NOT NULL
AND B.TIPO IN ( SELECT TIPO FROM TIPOLIBRO WHERE TIPO = 'cu' OR TIPO = 'no');

-- D-13 Listar el Nro de Lector, Nombre y fecha de Préstamo de Todos los Lectores, hayan
-- tenido Prestamos o no


SELECT L.NRO_LECTOR, L.NOMBRE, MAX(P.F_PREST)
FROM LECTOR AS L
	LEFT JOIN PRESTAMO AS P
	ON L.NRO_LECTOR = p.NRO_LECTOR
GROUP BY L.NRO_LECTOR, L.NOMBRE;

