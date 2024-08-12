-- CONSTRAINTS - PRIMARY KEY

-- es una regla o restriccion que permite insertar valores unicos y no nulos. facilita el enlace entre otras tablas

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