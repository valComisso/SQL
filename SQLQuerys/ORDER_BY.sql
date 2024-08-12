  --  ORDER BY, ORGANIZAR REGISTROS EN LAS CONSULTAS
 SELECT * FROM Empleados ORDER BY edad; -- el resultado esta ordenando de menor a mayor edad.

SELECT * FROM Empleados ORDER BY edad ASC; --  de menor a mayor edad.
SELECT * FROM Empleados ORDER BY edad DESC; --  de menor a mayor edad.

SELECT nombre, apellido, edad, salario 
FROM Empleados
ORDER BY edad, salario; -- organiza la busqueda primero por edad y luego por salario. la preferencia de organizacion la toma el primer campo. 
