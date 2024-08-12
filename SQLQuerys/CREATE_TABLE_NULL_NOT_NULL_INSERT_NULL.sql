-- CREATE TABLE, NULL NOT NULL, INSERT NULL
DROP TABLE clientes;

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