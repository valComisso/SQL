 -- COMO CREAR ESQUEMAS
  -- es una estructura logica para agrupar y organizar objetos de nuestras tablas. 

  CREATE SCHEMA Ventas; -- creo mi primer esquem, para el departamento de ventas.

  CREATE SCHEMA Cobros; -- creo mi segundo esquema, para el departamento de cobros.


  CREATE TABLE ventas.clientes(
  idclientes int, 
  nombre varchar(20),
  direcicon varchar(30)
  );


  CREATE TABLE cobros.clientes(
  idclientes int, 
  nombre varchar(20),
  direcicon varchar(30)
  );


  SELECT * FROM clientes; -- Me trae la tabla normal

  SELECT * FROM ventas.clientes; -- Me trae la nueva tabla vacia.  

  SELECT * FROM cobros.clientes; -- Me trae la nueva tabla vacia.