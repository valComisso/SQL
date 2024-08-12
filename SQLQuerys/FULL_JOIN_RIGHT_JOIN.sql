--  ENLACES: FULL JOIN, RIGHT JOIN

-- RIGHT JOIN


SELECT * FROM clientes;
SELECT * FROM ordenes;

SELECT ordenes.id_orden, clientes.nombre, clientes.apellido
FROM clientes
right join ordenes on ordenes.idcliente = clientes.idcliente
order by ordenes.id_orden;  -- aca le estoy dando preferencia a mi tabla ordenes



-- FULL JOIN


SELECT * FROM clientes;
SELECT * FROM ordenes;

SELECT ordenes.id_orden, clientes.nombre, clientes.apellido, clientes.ciudad, clientes.telefono, ordenes.id_vendedor
FROM clientes
full join ordenes 
on ordenes.idcliente = clientes.idcliente
order by ordenes.id_orden; -- traigo todos los registros de ambas tablas tengan coincidencias o no
