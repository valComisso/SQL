  -- UNION

  SELECT * FROM clientes;
  SELECT * FROM suplidores;

  SELECT contacto, ciudad, pais FROM clientes
  UNION
  SELECT contacto, ciudad, pais FROM suplidores; -- traico los datos de ambas tablas solo con los datos unicos y los obtengo en un mismo resultado. 


  SELECT contacto, ciudad, pais FROM clientes
  UNION all 
  SELECT contacto, ciudad, pais FROM suplidores;-- traico los datos de ambas tablas incluyendo los datos duplicados y los obtengo en un mismo resultado. 

  -- campo de definicion 

  
  SELECT 'Cliente' AS Tipo, contacto, ciudad, pais FROM clientes
  UNION all 
  SELECT 'Suplidor' AS Tipo, contacto, ciudad, pais FROM suplidores
  order by pais; -- les pongo un identifiador para saber a que tabla pertenecen. 



SELECT 'Cliente' AS Tipo, ciudad, pais FROM clientes
WHERE pais = 'México'
UNION all 
SELECT 'Suplidor' AS Tipo, ciudad, pais FROM suplidores
WHERE pais = 'México'

  order by pais;