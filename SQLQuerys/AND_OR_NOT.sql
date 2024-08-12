
  -- OPERADORES: AND, OR Y NOT


  drop table clientes;
  create table clientes(
idcliente int not null primary key,
nombre varchar(20) not null,
apellido varchar(20) not null,
direccion varchar(100) not null,
pais varchar(50) not null,
ciudad varchar(30) not null);


  insert into clientes values(1, 'Juan', 'P�rez', 'Calle Principal 123', 'M�xico', 'Ciudad de M�xico');
  insert into clientes values(2, 'Mar�a', 'G�mez', 'Avenida Central 456', 'Espa�a', 'Madrid');
  insert into clientes values(3, 'Carlos', 'L�pez', 'Rua Principal 789', 'Brasil', 'R�o de Janeiro');
  insert into clientes values(4, 'Ana', 'Rodr�guez', '123 Main Street', 'Estados Unidos', 'Nueva York');
  insert into clientes values(5, 'Luis', 'Fern�ndez', 'Rue Principale 456', 'Francia', 'Par�s');
  insert into clientes values(6, 'Laura', 'Garc�a', 'Hauptstrasse 789', 'Alemania', 'Berl�n');
  insert into clientes values(7, 'Pedro', 'Mart�nez', 'Via Roma 123', 'Italia', 'Roma');
  insert into clientes values(8, 'Sof�a', 'Hern�ndez', 'Rua Principal 456', 'Portugal', 'Lisboa');
  insert into clientes values(9, 'Diego', 'Torres', 'Calle Mayor 789', 'Argentina', 'Buenos Aires');
  insert into clientes values(10, 'Valentina', 'Luna', '123 First Street', 'Canad�', 'Toronto');
  insert into clientes values(11, 'Andr�s', 'Silva', 'Rue Principale 456', 'Suiza', 'Z�rich');
  insert into clientes values(12, 'Camila', 'Chavez', 'Hauptstrasse 789', 'Austria', 'Viena');
  insert into clientes values(13, 'Miguel', 'Vargas', 'Via Roma 123', 'Italia', 'Roma');
  insert into clientes values(14, 'Paula', 'Castillo', 'Rua Principal 456', 'Portugal', 'Lisboa');
  insert into clientes values(15, 'Gustavo', 'Mendoza', 'Calle Mayor 789', 'Chile', 'Santiago');
  insert into clientes values(16, 'Fernanda', 'Paz', '123 Main Street', 'Australia', 'S�dney');
  insert into clientes values(17, 'Roberto', 'Ru�z', 'Rue Principale 456', 'B�lgica', 'Bruselas');
  insert into clientes values(18, 'Luc�a', 'Sanchez', 'Hauptstrasse 789', 'Holanda', '�msterdam');
  insert into clientes values(19, 'Javier', 'Gallardo', 'Via Roma 123', 'Italia', 'Roma');
  insert into clientes values(20, 'Isabella', 'Ortega', 'Rua Principal 456', 'Portugal', 'Lisboa');
  insert into clientes values(21, 'Manuel', 'Santos', 'Avenida Central 789', 'Espa�a', 'Barcelona');
  insert into clientes values(22, 'Julia', 'Herrera', 'Rua Principal 123', 'Brasil', 'S�o Paulo');
  insert into clientes values(23, 'Fernando', 'Gonz�lez', '123 Main Street', 'Estados Unidos', 'Los �ngeles');
  insert into clientes values(24, 'Carolina', 'Navarro', 'Rue Principale 456', 'Francia', 'Marsella');
  insert into clientes values(25, 'Gabriel', 'L�pez', 'Hauptstrasse 789', 'Alemania', 'Hamburgo');
  insert into clientes values(26, 'Valeria', 'Rojas', 'Via Roma 123', 'Italia', 'Venecia');
  insert into clientes values(27, 'Ricardo', 'Montes', 'Rua Principal 456', 'Portugal', 'Oporto');
  insert into clientes values(28, 'Marcela', 'Ch�vez', 'Calle Mayor 789', 'Argentina', 'C�rdoba');
  insert into clientes values(29, 'Jorge', 'Figueroa', '123 First Street', 'Canad�', 'Montreal');
  insert into clientes values(30, 'Renata', 'Vargas', 'Rue Principale 456', 'Suiza', 'Ginebra');
  insert into clientes values(31, 'Mateo', 'Castro', 'Hauptstrasse 789', 'Austria', 'Salzburgo');
  insert into clientes values(32, 'Daniela', 'Pe�a', 'Via Roma 123', 'Italia', 'Florencia');
  insert into clientes values(33, 'Sebasti�n', 'Lara', 'Rua Principal 456', 'Portugal', 'Lisboa');
  insert into clientes values(34, 'Valentina', 'Salazar', 'Calle Mayor 789', 'Chile', 'Valpara�so');
  insert into clientes values(35, 'Mart�n', 'Ortiz', '123 Main Street', 'Australia', 'Melbourne');
  insert into clientes values(36, 'Catalina', 'Soto', 'Rue Principale 456', 'B�lgica', 'Lieja');
  insert into clientes values(37, 'Alejandro', 'R�os', 'Hauptstrasse 789', 'Holanda', 'R�terdam');
  insert into clientes values(38, 'Isabel', 'Silva', 'Via Roma 123', 'Italia', 'Roma');
  insert into clientes values(39, 'Leonardo', 'Guerrero', 'Rua Principal 456', 'Portugal', 'Lisboa');
  insert into clientes values(40, 'Renata', 'Molina', 'Calle Mayor 789', 'Argentina', 'Rosario');


  SELECT * FROM clientes;

  -- AND 
  SELECT * FROM clientes 
  WHERE pais = 'ITALIA'  and ciudad = 'ROMA';

  -- OR
  SELECT * FROM clientes 
  WHERE ciudad = 'Venecia' or ciudad = 'Roma';

  -- NOT
  SELECT * FROM clientes 
  WHERE not pais = 'Alemania' and not pais = 'Canad�' ;
