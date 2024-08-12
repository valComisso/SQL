-- LEFT JOIN 

SELECT  clientes.nombre, clientes.apellido, ordenes.id_orden
FROM clientes 
left join ordenes on clientes.idcliente = ordenes.idcliente
order by id_orden; -- obtengo la informacion de todos mis clientes, con su orden si es que cuentan con ella, los null vienen primero porque tinen prioridad 

-- como utilizar alias
SELECT cli.nombre, cli.apellido, ord.id_orden, ord.fecha_orden
FROM clientes cli
left join ordenes ord on cli.idcliente = ord.idcliente
order by ord.id_orden;
