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