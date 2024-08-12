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