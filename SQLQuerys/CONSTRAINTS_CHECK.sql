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