--  SELECT TOP, SELECT PERCENT 

SELECT TOP 5 * FROM Empleados; -- primeros 5 registros de mi tabla
SELECT TOP 50 PERCENT * FROM Empleados; -- 50 % de los registros de mi tabla
SELECT TOP 3 * FROM Empleados  -- tres primeros registros con el campo active con el valor de 'NO' 
WHERE active = 'NO';