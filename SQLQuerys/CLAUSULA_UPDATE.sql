
--  CLAUSULA UPDATE 

SELECT * FROM empleados 

UPDATE Empleados SET telefono = 8000333444  -- actualizo un registro especifico con el id 3
WHERE id = 3;

UPDATE Empleados SET active = 'SI'; -- se actualizan TODOS los registros 

UPDATE Empleados SET active = 'NO'  -- se actualizan solo los registros con ciertos ids.
Where id in(1,2,3,4,6);

SELECT * FROM empleados 

