-- ALTER TABLE - ADD - DROP

ALTER TABLE empleados ADD sexo char(1);

insert into empleados values (1, 'Juan', 'Pérez', 25, 1234567890, 'Calle 123', '1978-06-15', 2500.00, 'SI', 'M');
SELECT * FROM empleados WHERE nombre = 'Juan';

ALTER TABLE empleados ADD fe_contratacion date; 
SELECT * FROM empleados;

AlTER TABLE empleados DROP COLUMN fe_contratacion;
SELECT * FROM empleados;
