  -- CLAUSULA BETWEEN 
  -- nos permite consultar valores entre un rango especifico

SELECT * FROM empleados;

SELECT * FROM empleados 
WHERE id_empleado in(1,3,5,7);

SELECT * FROM empleados 
WHERE id_empleado between 1 and 7;


SELECT * FROM empleados 
WHERE 
id_empleado between 1 and 7
or 
cant_hijos between 1 and 3;



SELECT * FROM empleados 
WHERE 
sueldo between 2000 and 4000
and 
puesto not in('Desarrollador', 'Técnico');



