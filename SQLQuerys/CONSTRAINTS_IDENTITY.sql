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