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
