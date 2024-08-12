--  ALIAS Y CONCATENACION DE REGISTROS
-- es un nombre especifico que se le da a un campo a la hora de realizar una consulta. 

SELECT * FROM Empleados;

SELECT nombre FROM Empleados;

-- agrego un alias al campo id
SELECT id AS Identificador, nombre, apellido, salario FROM Empleados
WHERE salario < 3000; 

SELECT id AS Identificador, nombre AS primer_nombre, apellido AS primer_apellido, salario FROM Empleados
WHERE salario < 3000; 

-- Crear un alias con espacios 
SELECT id AS Identificador, nombre AS "primer nombre", apellido AS "primer apellido", salario FROM Empleados
WHERE salario < 3000;

-- Concatenar datos

SELECT nombre, apellido, salario FROM Empleados;

SELECT nombre + ' ' + apellido FROM Empleados; -- devuelve ambos datos combinados en una columna

SELECT nombre + ' ' + edad  FROM Empleados; -- error, los tipos de los datos deben ser iguales. 

-- Concatenar datos de tipos diferentes
SELECT nombre + ' ' +
cast(edad as varchar(2))  FROM Empleados; -- comverti la edad a varchar para poder convinar mis datos. 

--- Agregar nombre de la columna 
SELECT nombre + ' ' +
cast(edad as varchar(2)) AS "Datos de empleados"  FROM Empleados;