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