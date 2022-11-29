SELECT * FROM artistas;

SELECT nombre, foto, edad, pais FROM artistas;

SELECT nombre, foto, edad, pais FROM artistas WHERE nombre = "Chester Bennington";

SELECT nombre, foto, edad, pais FROM artistas WHERE nombre IN ("Chester Bennington", "Maria Becerra", "Billie Eilish", "Kygo", "Adam Levine", "Feid");

SELECT * FROM paises;


SELECT * FROM paises WHERE nombre LIKE "A%";

SELECT * FROM paises WHERE nombre LIKE "%A";

SELECT * FROM paises WHERE nombre LIKE "A%" AND dominio LIKE "A%";

SELECT * FROM paises WHERE nombre LIKE "A%" OR dominio LIKE "Z%";

SELECT * FROM paises WHERE nombre NOT LIKE "A%" AND nombre NOT LIKE "B%";


INSERT INTO paises (nombre, dominio) VALUES ("Nuevo Pais", "np");

SELECT * FROM paises WHERE pais_id = 66, 12, 211, 45;

UPDATE paises SET nombre = "Nuevo País", dominio = "nc" WHERE pais_id = 249;

SELECT * FROM paises WHERE pais_id = 249;

DELETE FROM paises WHERE pais_id = 249;

SELECT * FROM artistas AS c
	INNER JOIN paises AS p
	ON c.pais = p.pais;

SELECT c.nombre, c.foto, c.edad AS pais FROM artistas AS c
	INNER JOIN paises AS p
	ON c.pais = p.pais_id;


/* Reglas de Negocio */

/* artistas */

/* Crear un artista */
/* Leer todos los artistas */
SELECT * FROM artistas;

SELECT c.nombre, c.foto, c.edad AS pais
  FROM artistas AS c
	INNER JOIN paises AS p
	ON c.pais = p.pais_id;
/* Leer todos los artistas de un país */
/* Actualizar un artista*/
/* Eliminar un artista */

/* albumes */

/* Crear un album */
/* Leer todos los albumes */
/* Leer un album en particular */
/* Leer todos los albumes de un artista */
/* Actualizar un album */
/* Eliminar un album */

/* canciones */ 

/* Crear una canción */
/* Leer todas las canciones */
/* Leer una canción en particular */
/* Leer todas las canciones de un género */
/* Leer todos las canciones de un album */
/* Actualizar una canción */
/* Eliminar una canción */

/* generos */

/* Crear un género */
/* Leer todos los géneros */
/* Leer un género en particular */
/* Actualizar un género */
/* Eliminar un género */




/*  paises */

/* Crear un pais */
INSERT INTO paises (nombre, dominio) VALUES ("Nuevo Pais", "np");
/* Leer todos los paises */
SELECT * FROM paises;
/* Leer un país en particular */
SELECT * FROM paises WHERE pais_id = 66,12, 211, 45;
/* Actualizar un país */
UPDATE paises SET nombre = "Nuevo País", dominio = "nc" WHERE pais_id = 249; 
/* Eliminar un país */
DELETE FROM paises WHERE pais_id = 249;