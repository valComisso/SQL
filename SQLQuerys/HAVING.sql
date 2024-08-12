-- HAVING 
-- se utilza para realizar filtros similar a WHERE 

drop table clientes;

CREATE TABLE clientes (
  idcliente INT,
  nombre VARCHAR(50),
  direccion VARCHAR(100),
  ciudad VARCHAR(50),
  codigo_postal VARCHAR(10),
  pais VARCHAR(50)
);
INSERT INTO clientes (idcliente, nombre, direccion, ciudad, codigo_postal, pais)
VALUES
  (1, 'Juan P�rez', 'Calle 123', 'Ciudad de M�xico', '12345', 'M�xico'),
  (2, 'Mar�a Garc�a', 'Avenida Principal 456', 'Monterrey', '67890', 'M�xico'),
  (3, 'Carlos L�pez', 'Calle Principal 789', 'Guadalajara', '54321', 'M�xico'),
  (4, 'Ana Rodr�guez', 'Carrera 10', 'Bogot�', '11111', 'Colombia'),
  (5, 'Luisa Mart�nez', 'Calle 20', 'Medell�n', '22222', 'Colombia'),
  (6, 'Pedro G�mez', 'Avenida Central', 'Cali', '33333', 'Colombia'),
  (7, 'Pablo Fern�ndez', 'Calle Principal 1', 'Madrid', '28001', 'Espa�a'),
  (8, 'Sof�a Torres', 'Avenida Gran V�a', 'Barcelona', '08001', 'Espa�a'),
  (9, 'Javier Ram�rez', 'Calle Diagonal', 'Valencia', '46001', 'Espa�a'),
  (10, 'Fernanda Silva', 'Avenida 9 de Julio', 'Buenos Aires', '1000', 'Argentina'),
  (11, 'Diego L�pez', 'Calle Florida', 'C�rdoba', '2000', 'Argentina'),
  (12, 'Gabriela Gonz�lez', 'Avenida Libertador', 'Rosario', '3000', 'Argentina'),
  (13, 'Mario Huam�n', 'Jir�n de la Uni�n', 'Lima', '01', 'Per�'),
  (14, 'Rosa Cruz', 'Avenida Arequipa', 'Arequipa', '02', 'Per�'),
  (15, 'Andr�s Torres', 'Calle Las Nazarenas', 'Cusco', '03', 'Per�'),
  (16, 'Camila Soto', 'Avenida Providencia', 'Santiago', '8320000', 'Chile'),
  (17, 'Lucas Morales', 'Calle Alonso de C�rdova', 'Vi�a del Mar', '8320000', 'Chile'),
  (18, 'Valentina Castro', 'Avenida Apoquindo', 'Valpara�so', '8320000', 'Chile'),
  (19, 'Mariano Mendoza', 'Calle Tacna', 'Arica', '1000000', 'Chile'),
  (20, 'Laura Torres', 'Avenida Pedro Montt', 'Antofagasta', '1000000', 'Chile'),
  (21, 'Isabella Morales', 'Calle Principal 2', 'Ciudad de M�xico', '54321', 'M�xico'),
  (22, 'Emilio Vargas', 'Avenida Reforma', 'Ciudad de M�xico', '12345', 'M�xico'),
  (23, 'Valeria Gonz�lez', 'Calle Morelos', 'Monterrey', '67890', 'M�xico'),
  (24, 'Daniel Silva', 'Avenida Ju�rez', 'Monterrey', '54321', 'M�xico'),
  (25, 'Sara Ram�rez', 'Calle Independencia', 'Guadalajara', '11111', 'M�xico'),
  (26, 'Javier Garc�a', 'Avenida Hidalgo', 'Guadalajara', '22222', 'M�xico'),
  (27, 'Camila Torres', 'Calle 20 de Noviembre', 'Bogot�', '33333', 'Colombia'),
  (28, 'Diego Castro', 'Avenida de los Andes', 'Bogot�', '67890', 'Colombia'),
  (29, 'Valentina Vargas', 'Calle Santander', 'Medell�n', '11111', 'Colombia'),
  (30, 'Andr�s P�rez', 'Avenida Oriental', 'Medell�n', '54321', 'Colombia'),
  (31, 'Luciana L�pez', 'Calle Mayor', 'Cali', '22222', 'Colombia'),
  (32, 'Sebasti�n Ram�rez', 'Avenida 9 de Octubre', 'Cali', '33333', 'Colombia'),
  (33, 'Paula Fern�ndez', 'Calle Gran V�a', 'Madrid', '11111', 'Espa�a'),
  (34, 'Joaqu�n Torres', 'Avenida Paseo del Prado', 'Madrid', '22222', 'Espa�a'),
  (35, 'Luc�a Herrera', 'Calle Serrano', 'Barcelona', '33333', 'Espa�a'),
  (36, 'Tom�s Mart�nez', 'Avenida Diagonal', 'Barcelona', '67890', 'Espa�a'),
  (37, 'Catalina Castro', 'Calle San Mart�n', 'Valencia', '54321', 'Espa�a'),
  (38, 'Mateo Morales', 'Avenida Blasco Ib��ez', 'Valencia', '11111', 'Espa�a'),
  (39, 'Isidora Ram�rez', 'Calle Florida', 'Buenos Aires', '22222', 'Argentina'),
  (40, 'Benjam�n Silva', 'Avenida Corrientes', 'Buenos Aires', '33333', 'Argentina'),
  (41, 'Valent�n G�mez', 'Calle Hidalgo', 'C�rdoba', '67890', 'Argentina'),
  (42, 'Renata Torres', 'Avenida Libertador', 'C�rdoba', '54321', 'Argentina'),
  (43, 'Emilio Soto', 'Calle Santa Fe', 'Rosario', '11111', 'Argentina'),
  (44, 'Martina Morales', 'Avenida 27 de Abril', 'Rosario', '22222', 'Argentina'),
  (45, 'Felipe Gonz�lez', 'Calle Huallaga', 'Lima', '33333', 'Per�'),
  (46, 'Renata Castro', 'Avenida Abancay', 'Lima', '67890', 'Per�'),
  (47, 'Sebasti�n Herrera', 'Calle Mariscal Miller', 'Arequipa', '54321', 'Per�'),
  (48, 'Antonella Ram�rez', 'Avenida Dolores', 'Arequipa', '11111', 'Per�'),
  (49, 'Maximiliano Silva', 'Calle Merced', 'Cusco', '22222', 'Per�'),
  (50, 'Valentina Torres', 'Avenida El Sol', 'Cusco', '33333', 'Per�'),
  (51, 'Agust�n Morales', 'Calle Merced', 'Santiago', '67890', 'Chile'),
  (52, 'Renata Castro', 'Avenida Providencia', 'Santiago', '54321', 'Chile'),
  (53, 'Mat�as Herrera', 'Calle Alonso de C�rdova', 'Vi�a del Mar', '11111', 'Chile'),
  (54, 'Emilia Ram�rez', 'Avenida San Mart�n', 'Vi�a del Mar', '22222', 'Chile'),
  (55, 'Luciano Gonz�lez', 'Calle San Mart�n', 'Valpara�so', '33333', 'Chile'),
  (56, 'Delfina Silva', 'Avenida Err�zuriz', 'Valpara�so', '67890', 'Chile'),
  (57, 'M�ximo L�pez', 'Calle 21 de Mayo', 'Arica', '54321', 'Chile'),
  (58, 'Isidora Morales', 'Avenida Pedro Montt', 'Arica', '11111', 'Chile'),
  (59, 'Felipe Castro', 'Calle Rancagua', 'Antofagasta', '22222', 'Chile'),
  (60, 'Constanza Torres', 'Avenida Balmaceda', 'Antofagasta', '33333', 'Chile');


  SELECT * FROM clientes;

  SELECT COUNT(idcliente) as "cantidad clientes", pais 
  FROM clientes 
  GROUP BY pais
  HAVING COUNT(idcliente) > 5
  ORDER BY "cantidad clientes" DESC; 

  -- traigo la cantidad de clientes de mi tabla clientes y sus paises
  -- los agrupo por pais 
  -- filtro por los que tiene una cantidad de clientes mayor a 5 
  -- y los ordeno de forma descendiente. 

  SELECT v.nombre, COUNT(o.idorden) as "cantidad ordenes"
  FROM ordenes o
  inner join vendedor v on o.id_vendedor = v.id_vendedor
  WHERE nombre like '%Ana%' or nombre like '%pedro%'
  GROUP BY nombre
  HAVING COUNT(o.idorden) > 2; 


