-- INDEX , INDICES , Se usan para mejorar el rendimeinto de nuestras consultas 
-- clusteres: definen el orden de los datos 
-- nonclustered: no definen dicho orden, son utiles para acelerar la busqueda de datos basadas en columnas especificas.
-- se puede tener varios indices , pero solo son recomendados para tablas muy consultadas, y es recomendable un minimo de 2 indices. 

SELECT * FROM Empleados;

-- creo un indice CLUSTERED I_idempleado para el campo id de la tabla empleados. 
CREATE CLUSTERED INDEX I_idempleado
ON empleados (id);

-- creo un indice NONCLUSTERED I_edad_empleado para el campo edad de la tabla empleados. 
CREATE NONCLUSTERED INDEX I_edad_empleado 
ON empleados (edad);


-- cambiar nombre de un indice
EXEC sp_rename 'Empleados.I_idempleado', 'I_id' , 'INDEX'; -- al cambiarlo se podrian generar problemas con algun otro objeto que lo este utilizando.  

-- borrar un indice
DROP INDEX I_id on Empleados; 


SELECT * FROM Empleados;

-- crear un indice con 2 campos
CREATE CLUSTERED INDEX I_id_sal
ON Empleados (id, salario); 
