create table Empleados(
idempleado int, 
nombre varchar(20), 
apellido varchar(30),
edad numeric(2), 
telefono  numeric(10),
direccion varchar(100), 
fechas_de_nacimiento date, 
salario decimal(18,2),
active char(2)
);





INSERT INTO empleados values(
1, 
'Jose',
'Feliciano',
35,
1234567890,
'calle primera no 1',
'1980-06-03',
30000.00,
'SI'
);

SELECT * FROM empleados;





SELECT * FROM sys.tables; 

SELECT nombre FROM empleados;

SELECT nombre, apellido FROM empleados;

EXEC sp_rename 'Empleados' , 'Usuarios' ;

EXEC sp_rename 'Usuarios' , 'Empleados' ;





CREATE database Prueba2 

use Prueba2 

CREATE TABLE prueba(  
campo int
); 

DROP TABLE prueba;

use AdventureWorks;

 insert into empleados values (1, 'Juan', 'Pérez', 25, 1234567890, 'Calle 123', '1978-06-15', 2500.00, 'SI');
  insert into empleados values (2, 'María', 'López', 30, 9876543210, 'Avenida 456', '1980-03-20', 3000.00, 'SI');
  insert into empleados values (3, 'Carlos', 'González', 28, 5555555555, 'Calle 789', '1979-11-10', 2800.00, 'SI');
  insert into empleados values (4, 'Ana', 'Martínez', 35, 9998887770, 'Avenida 012', '1977-09-05', 3500.00, 'SI');
  insert into empleados values (5, 'Pedro', 'Sánchez', 22, 1112223334, 'Calle 567', '1980-01-25', 2000.00, 'SI');
  insert into empleados values (6, 'Laura', 'Ramírez', 31, 4444444444, 'Avenida 890', '1978-07-12', 3200.00, 'SI');
  insert into empleados values (7, 'Luis', 'Torres', 29, 7777777777, 'Calle 345', '1979-04-18', 2700.00, 'SI');
  insert into empleados values (8, 'Carmen', 'Hernández', 27, 6666666666, 'Avenida 678', '1980-02-03', 2600.00, 'SI');
  insert into empleados values (9, 'Jorge', 'García', 33, 2223334445, 'Calle 901', '1977-12-27', 3400.00, 'SI');
  insert into empleados values (10, 'Silvia', 'Lara', 24, 8889990000, 'Avenida 234', '1980-05-09', 2200.00, 'SI');
  insert into empleados values (11, 'Roberto', 'Rojas', 26, 3334445556, 'Calle 567', '1979-02-14', 2400.00, 'SI');
  insert into empleados values (12, 'Patricia', 'Cruz', 32, 2223334444, 'Avenida 890', '1978-08-21', 3100.00, 'SI');
  insert into empleados values (13, 'Daniel', 'Gómez', 29, 5556667778, 'Calle 123', '1979-06-06', 2800.00, 'SI');
  insert into empleados values (14, 'Sara', 'Vargas', 34, 6667778889, 'Avenida 456', '1977-04-01', 3300.00, 'SI');
  insert into empleados values (15, 'Hugo', 'Orozco', 23, 9998887776, 'Calle 789', '1980-03-16', 2100.00, 'SI');


  
SELECT * FROM empleados WHERE nombre = 'Juan';

SELECT * FROM empleados WHERE edad = 29; 

SELECT nombre, edad FROM empleados  WHERE edad = 29;




TRUNCATE TABLE empleados;

DELETE FROM empleados WHERE idempleado = 1;




ALTER TABLE empleados ADD sexo char(1);


 insert into empleados values (1, 'Juan', 'Pérez', 25, 1234567890, 'Calle 123', '1978-06-15', 2500.00, 'SI', 'M');
 SELECT * FROM empleados WHERE nombre = 'Juan';


ALTER TABLE empleados ADD fe_contratacion date; 
SELECT * FROM empleados;
AlTER TABLE empleados DROP COLUMN fe_contratacion;
SELECT * FROM empleados;



SELECT * FROM empleados WHERE idempleado = 3;

SELECT * FROM empleados WHERE edad != 25;

SELECT * FROM empleados WHERE edad <> 25;

SELECT * FROM empleados WHERE salario > 2000;

SELECT * FROM empleados WHERE salario < 3000;

SELECT * FROM empleados WHERE salario <= 2500;






-- Consulta de edades de empleados con 25 años. 
SELECT * FROM empleados WHERE edad = 25;

SELECT * FROM empleados -- WHERE edad = 25;

/* Consulta de edades 
de empleados con 25 años.*/





SELECT * FROM empleados;

EXEC sp_rename 'Empleados.id', 'ID'; 
EXEC sp_rename 'Empleados.nombre', 'NOMBRE'; 
EXEC sp_rename 'Empleados.apellido', 'APELLIDO'; 
EXEC sp_rename 'Empleados.edad', 'EDAD'; 
EXEC sp_rename 'Empleados.telefono', 'TELEFONO'; 
EXEC sp_rename 'Empleados.direccion', 'DIRECCION';
EXEC sp_rename 'Empleados.fecha_de_nacimiento', 'FECHA_DE_NACIMIENTO'; 
EXEC sp_rename 'Empleados.salario', 'SALARIO'; 
EXEC sp_rename 'Empleados.active', 'ACTIVE'; 
EXEC sp_rename 'Empleados.sexo', 'SEXO'; 

SELECT * FROM empleados;




SELECT * FROM empleados 

UPDATE Empleados SET telefono = 8000333444  -- actualizo un registro especifico con el id 3
WHERE id = 3;

UPDATE Empleados SET active = 'SI'; -- se actualizan TODOS los registros 

UPDATE Empleados SET active = 'NO'  -- se actualizan solo los registros con ciertos ids.
Where id in(1,2,3,4,6);

SELECT * FROM empleados 




--INSERTAR DATOS DESDE OTRA TABLA 

CREATE TABLE salarios(
nombre varchar(20),
apellido varchar(30),
salario decimal(18,2)
);

SELECT * FROM salarios; 

INSERT INTO salarios(nombre, apellido, salario)
SELECT nombre, apellido, salario FROM Empleados; 

SELECT * FROM salarios; 

INSERT INTO salarios(nombre, apellido, salario)
SELECT nombre, apellido, salario FROM Empleados
WHERE salario > 2500; 

SELECT * FROM salarios; 


--  SELECT TOP, SELECT PERCENT 

SELECT TOP 5 * FROM Empleados; -- primeros 5 registros de mi tabla
SELECT TOP 50 PERCENT * FROM Empleados; -- 50 % de los registros de mi tabla
SELECT TOP 3 * FROM Empleados  -- tres primeros registros con el campo active con el valor de 'NO' 
WHERE active = 'NO';


-- VALORES NULL EN NUESTRAS TABLAS, 

CREATE TABLE clientes(
idcliente int,
nombre varchar(10),
apellido varchar(20),
direccion varchar(1000)
);

insert into clientes values(1,'Juan','Perez','Calle A, Ciudad');
insert into clientes values(2, 'Maria', NULL, 'Calle B Ciudad');
insert into clientes values(3,'Carlos','Lopez', NULL);
insert into clientes values(4, NULL, 'Rodriguez', 'Calle D Ciudad');
insert into clientes values(5,'Pedro', NULL, NULL);
insert into clientes values(6,NULL ,NULL,  'Calle D Ciudad');
insert into clientes values(7,'Luis','Gonzales', 'Calle G Ciudad');
insert into clientes values(8, NULL, 'Díaz', NULL);
insert into clientes values(9,'Jorge', NULL,' Calle I Ciudad');
insert into clientes values(10,NULL, NULL, NULL);
insert into clientes values(11,'Ana', 'Hernandez', 'Calle M Ciudad');
insert into clientes values(12,NULL, NULL, 'Calle M Ciudad'); 
insert into clientes values(13,NULL, 'Sanchez', NULL);
insert into clientes values(14,'Sofía', NULL, 'Calle M Ciudad');
insert into clientes values(15,NULL, NULL,  'Calle P Ciudad');
insert into clientes values(16,'Daniel', 'Garcia', NULL);
insert into clientes values(17,'Martha','Fernandez', NULL);
insert into clientes values(18,NULL, 'Martinez',  'Calle Q Ciudad');
insert into clientes values(19,'Pablo', NULL, NULL);
insert into clientes values(20, NULL, 'Lopez', 'Calle S Ciudad');

SELECT * FROM clientes;


SELECT * FROM clientes WHERE nombre is null; -- optener todos los clientes que no tienen nombre
SELECT * FROM clientes WHERE nombre is not null; -- optener todos los clientes que tienen nombre

UPDATE clientes SET direccion = 'no tiene'
WHERE direccion is null; 

SELECT * FROM clientes;

DELETE FROM clientes WHERE nombre is null; 

SELECT * FROM clientes;


-- CREATE TABLE, NULL NOT NULL, INSERT NULL
DROP TABLE clientes 

CREATE TABLE clientes(
idcliente int not null, -- no permite valores null
nombre varchar(20) not null,
direccion varchar(100) not null,
telefono numeric(10) null, -- permite valores null
email varchar(50) null
);

INSERT INTO clientes values(1,'Jose', 'calle primera', null, null); 

INSERT INTO clientes values(null, 'Manuel', 'calle segunda', null, null); -- devuelve un error porque idcliente no puede ser null 

SELECT * FROM clientes 


-- CONSTRAINTS - PRIMARY KEY

-- es una regla o restriccion que permite insertar valores unicos y no nulos. 

CREATE TABLE personas(
idpersona int primary key, 
nombre varchar(10) not null, 
edad int not null
);

INSERT INTO personas values(1, 'Jose', 50); 
INSERT INTO personas values(1, 'Tomas', 50); -- genera un error de violacion de primary key, ya que esa key ya existe. te indica de que constaint se trata. 
INSERT INTO personas values(null, 'Tomas', 50); -- Genera un error porque la columna no permite valores nulos. 

-- constaint: identificador de esta primaryKey, nombre que se le pone por defecto. 

-- OTRAS MANERAS DE DESIGNAR UNA PRIMARY KEY 
DROP TABLE personas; 

-- manera de crear una tabla y despues designar el campo idpersona como primaryKey
CREATE TABLE personas(
idpersona int, 
nombre varchar(10) not null, 
edad int not null,
primary key (idpersona)
);

INSERT INTO personas values(1, 'Jose', 50); 
INSERT INTO personas values(1, 'Tomas', 50); -- genera un error de violacion de primary key, ya que esa key ya existe. te indica de que constaint se trata. 
INSERT INTO personas values(null, 'Tomas', 50); -- Genera un error porque la columna no permite valores nulos. 



DROP TABLE personas; 

CREATE TABLE personas(
idpersona int, 
nombre varchar(10) not null, 
edad int not null,
constraint PK_enlase_persona primary key (idpersona) -- personalizar el nombre de nuestra recla, la forma mas correcta de desicnar un primary key 
);

INSERT INTO personas values(1, 'Jose', 50); 
INSERT INTO personas values(1, 'Tomas', 50); -- genera un error de violacion de primary key, ya que esa key ya existe. te indica de que constaint se trata. 
INSERT INTO personas values(null, 'Tomas', 50); -- Genera un error porque la columna no permite valores nulos. 


-- En el caso de no tener definido el primary key y querer definirlo luego de la creacion de una tabla
DROP TABLE personas; 

CREATE TABLE personas(
idpersona int not null,  
nombre varchar(10) not null, 
edad int not null,);

ALTER TABLE personas 
ADD CONSTRAINT PK_enlace primary key (idpersona); -- solo se va a poder definir como primary key si el campo esta definido como 'not null'.

INSERT INTO personas values(1, 'Jose', 50); 
INSERT INTO personas values(1, 'Tomas', 50); -- genera un error de violacion de primary key, ya que esa key ya existe. te indica de que constaint se trata. 
INSERT INTO personas values(null, 'Tomas', 50); -- Genera un error porque la columna no permite valores nulos. 


-- para borrar una primar key es necesario saber su nombre. 

ALTER TABLE personas DROP CONSTRAINT PK_enlace

-- CONSTRAINTS - UNIQUE 
-- es una regla que se asegura q todos lo valores de una columna sean diferentes, similar a primary key, pero este se puede utilizar muchas veces en una tabla. Si permite valores null, por lo que si no quiero permitirlo debo aclararlo. 
DROP TABLE Personas;
CREATE TABLE Personas(
idpersona int not null, 
clave varchar(10), 
nombre varchar(10), 
edad int,
constraint UQ_idepersona unique(idpersona),
constraint UQ_clave unique(clave),
);

INSERT INTO Personas values(1,'clave1','Alberto', 30);
INSERT INTO Personas values(2,'clave2','Ana', 30);
INSERT INTO Personas values(3,'clave2','Ana2', 30); -- devuelve un error, porque la clave esta repetida
INSERT INTO Personas values(2,'clave3','Ana2', 30); -- devuelve error porque el idpersona eta repetido


-- definir contrainst luego de la creacion de la tabla 
DROP TABLE Personas;
CREATE TABLE Personas(
idpersona int not null, 
clave varchar(10), 
nombre varchar(10), 
edad int,
);


ALTER TABLE Personas 
ADD constraint UQ_idepersona unique(idpersona);

ALTER TABLE Personas 
ADD constraint UQ_clave unique(clave);

INSERT INTO Personas values(1,'clave1','Alberto', 30);
INSERT INTO Personas values(2,'clave2','Ana', 30);
INSERT INTO Personas values(3,'clave2','Ana2', 30); -- devuelve un error, porque la clave esta repetida
INSERT INTO Personas values(2,'clave3','Ana2', 30); -- devuelve error porque el idpersona eta repetido


-- BORRAR un unique de una tabla

ALTER TABLE Personas DROP constraint UQ_idepersona;



-- CONSTRAINTS - CHECK 
-- es usado para limitar el rango de valores que se permiten en una columna. 
DROP TABLE Personas;

CREATE TABLE Personas(
id int not null, 
nombre varchar(10), 
edad int,
check (edad>= 18) -- define que edad tiene que ser mayor o igual a 18
);

INSERT INTO Personas values(1,'Juan', 18);
INSERT INTO Personas values(1,'Pablo', 15); -- error, edad es menor que 18. 


-- OTRAS maneras de configurar una restriccion check 
-- 1)
DROP TABLE Personas;
CREATE TABLE Personas(
id int not null, 
nombre varchar(10), 
edad int check (edad>= 18) -- define que edad tiene que ser mayor o igual a 18
);

--2)
DROP TABLE Personas;
CREATE TABLE Personas(
id int not null, 
nombre varchar(10), 
edad int,
constraint CK_edad check (edad>= 18) -- define que edad tiene que ser mayor o igual a 18
);

--3)

DROP TABLE Personas;
CREATE TABLE Personas(
id int not null, 
nombre varchar(10), 
edad int
);


ALTER TABLE Personas 
ADD CONSTRAINT CK_edad CHECK (edad>=18);

INSERT INTO Personas values(1,'Juan', 18);
INSERT INTO Personas values(1,'Pablo', 15); -- error, edad es menor que 18. 


ALTER TABLE Personas 
DROP CONSTRAINT CK_edad; 



-- CONSTRAINTS - DEFAULT
-- usada para estableser un valor por defecto en una columna 

DROP TABLE Personas;
CREATE TABLE Personas(
id int not null, 
nombre varchar(10), 
edad int not null, 
ciudad varchar(50) default 'No tiene' -- se le coloca el valor por defecto 'No tiene' 
);

INSERT INTO Personas values(1, 'Pedro', 30, default);

SELECT * FROM Personas; 

-- Otras maneras de definir DEFAULT

DROP TABLE Personas;
CREATE TABLE Personas(
id int not null, 
nombre varchar(10), 
edad int not null, 
ciudad varchar(50)
);


ALTER TABLE Personas 
ADD CONSTRAINT DF_ciudad
DEFAULT 'No tiene' FOR ciudad;

INSERT INTO Personas values(1, 'Pedro', 30, default); -- en este regstro el campo ciudad tendra el valor de 'No tiene' 

SELECT * FROM Personas;

-- Borrar mi regla Default 

ALTER TABLE Personas 
DROP CONSTRAINT DF_ciudad;

INSERT INTO Personas values(1, 'Pedro', 30, default); -- en este registro el campo ciudad tendra el valor de NULL 

SELECT * FROM Personas;

-- CONSTRAINTS - IDENTITY
-- Incrementa su valor autoomaticamente a medida que se reciben inserts en una tabla. se utiliza para generar valores unicos y solo puede haber 1 en cada tabla.


CREATE TABLE Libros (
codigo int identity,
titulo varchar(60) not null, 
autor varchar(60) not null, 
);

INSERT INTO Libros values('cien años de soledad', 'Gabriel Garcia Marques');
INSERT INTO Libros values('Harry Potter', 'J.K');
INSERT INTO Libros values(4,'Matar un ruiseñor', 'Harper Lee'); -- error, no puedo pasar un valor explicito en el campo codigo 
INSERT INTO Libros values('Matar un ruiseñor', 'Harper Lee');

SELECT * FROM Libros 

DELETE FROM Libros WHERE codigo = 2; -- al borrar un identiti es irrecuperable, la cuanta continuara a partir del ultimo valor 

SELECT * FROM Libros


-- como controlar las condiciones de IDENTITY
DROP TABLE Libros;
CREATE TABLE Libros (
codigo int identity(10,1), -- indico que tiene que comenzar a partir del numero 10 e incrementarse de 1 en 1.
titulo varchar(60) not null, 
autor varchar(60) not null, 
);

INSERT INTO Libros values('cien años de soledad', 'Gabriel Garcia Marques'); -- codigo sera 10
INSERT INTO Libros values('Harry Potter', 'J.K');-- codigo sera 11
INSERT INTO Libros values('Matar un ruiseñor', 'Harper Lee');-- codigo sera 12

SELECT * FROM Libros


DROP TABLE Libros;
CREATE TABLE Libros (
codigo int identity(10,5), -- indico que tiene que comenzar a partir del numero 10 e incrementarse de 5 en 5.
titulo varchar(60) not null, 
autor varchar(60) not null, 
);

INSERT INTO Libros values('cien años de soledad', 'Gabriel Garcia Marques'); -- codigo sera 10
INSERT INTO Libros values('Harry Potter', 'J.K');-- codigo sera 15
INSERT INTO Libros values('Matar un ruiseñor', 'Harper Lee');-- codigo sera 20

SELECT * FROM Libros

SELECT ident_seed('Libros'); -- me devuelve el valor de partida de mi identity
SELECT ident_incr('Libros'); -- me devuelve el valor de incremento de mi identity


-- como habilitar para poder definir el identity con un valor especifico 

SET identity_insert Libros on;

INSERT INTO Libros (codigo, titulo, autor) 
values(17, 'Orgullo y prejuicio', 'Jane Austen'); -- se incerto manualmente el valor de codigo.

SELECT * FROM Libros

SET identity_insert Libros off; -- el identity vuelve a funcionar. 




-- CONSTRAINTS - FOREIGN KEY
-- restriccion para prevenir acciones que podrian dañar los enlases o relaciones entre tablas. 

-- realiza el enlace de una llave primaria 
DROP TABLE Clientes 
CREATE TABLE Clientes (
id_cliente int, 
nombre varchar(20) not null,
apellido varchar(39) not null, 
edad int not null
constraint PK_clientes  primary key (id_cliente)
);

CREATE TABLE Ordenes(
id_orden int not null, 
articulo varchar(50) not null, 
id_cliente int
constraint FK_ordenes_clientes foreign key references clientes(id_cliente)
);

INSERT INTO Clientes values(1,'Juan','Perez', 30);

INSERT INTO Ordenes values(1,'Martillo', 5); -- error , hay un conflicto con la clave foranea FK_ordenes_clientes porque no existe ese cliente.

INSERT INTO Ordenes values(1,'Martillo', 1); -- agrego bien esta orden

SELECT * FROM Clientes;
SELECT * FROM Ordenes;


DELETE FROM ordenes WHERE id_orden = 1; -- se borra correctamente

SELECT * FROM Ordenes;


INSERT INTO Ordenes values(1,'Martillo', 1); -- agrego nuevamente la orden del cliente 1

DELETE FROM Clientes WHERE id_cliente = 1;  --error, no me dejaria borrarlo porque genera un conflicto con la referencia FK_ordenes_clientes.



DROP TABLE Clientes 
CREATE TABLE Clientes (
id_cliente int, 
nombre varchar(20) not null,
apellido varchar(39) not null, 
edad int not null
constraint PK_clientes  primary key (id_cliente)
);

DROP TABLE Ordenes
CREATE TABLE Ordenes(
id_orden int not null, 
articulo varchar(50) not null, 
id_cliente int
constraint FK_ordenes_clientes foreign key references clientes(id_cliente)
on delete cascade
);


INSERT INTO Clientes values(1,'Juan','Perez', 30);
INSERT INTO Ordenes values(1,'Martillo', 1); -- agrego nuevamente la orden del cliente 1


DELETE FROM Clientes WHERE id_cliente = 1; -- ahora si me permite borrar el cliente y por consecuencia se borraran las ordenes que le pertenecen. 

SELECT * FROM Clientes;
SELECT * FROM Ordenes;


-- Para borrer un foreign key 
ALTER TABLE Ordenes 
DROP constraint FK_ordenes_clientes;





