-- CAMBIAR LOS NOMBRES DE LOS CAMPOS DE UNA TABLA 

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