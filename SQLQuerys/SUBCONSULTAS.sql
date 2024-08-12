  -- SUBCONSULTAS = una consulta dentro de otra consulta
  -- deben ir entre parentecis 
  -- se debe especificar solo 1 columna o funcion 
  -- no pueden contener betwen ni like 
  -- no se puede utilizar la clausula order by
  -- no se puede actualizar ni borrar datos 


  SELECT * FROM facturas;

  SELECT * FROM detalles;


  SELECT * FROM empleados;

  -- cuales empleados ganan mas o igual al salario promedio

  SELECT id_empleado, nombre, apellido, sueldo 
  FROM empleados WHERE sueldo >= (SELECT AVG(sueldo) FROM empleados);


  SELECT * FROM clientes;

  -- buscar todos los nombres de clientes co idcliente de mexico 
  SELECT nombre, ciudad FROM clientes
  WHERE idcliente in(
  SELECT idcliente FROM clientes WHERE pais = 'México'
  );

  -- CUALES CLIENTES AN COMPRADO LAPICES

  SELECT cliente, numero, fecha FROM facturas f 
  WHERE exists  (SELECT * FROM detalles d 
  WHERE f.numero = d.numerofactura
  and 
  d.articulo = 'Lápiz');

    -- CUALES CLIENTES no  AN COMPRADO LAPICES
  SELECT cliente, numero, fecha FROM facturas f 
  WHERE not exists  (SELECT * FROM detalles d 
  WHERE f.numero = d.numerofactura
  and 
  d.articulo = 'Lápiz');