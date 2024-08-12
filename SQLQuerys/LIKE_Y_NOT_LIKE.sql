
-- OPERADORES: LIKE Y NOT LIKE 
-- utilizado para buscar patrones especificos en una tabla 

-- LIKE
SELECT * FROM clientes;

SELECT * FROM clientes
WHERE nombre like 'A%'; -- pido todos los clientes con nombre que empiece con A

SELECT * FROM clientes
WHERE nombre like '%A'; -- pido todos los clientes con nombre que termine con A

SELECT * FROM clientes
WHERE nombre like '%A%'; -- pido todos los clientes con nombre que contenga la letra A

SELECT * FROM clientes
WHERE nombre like 'ju%'; -- pido todos los clientes con nombre que empiece con JU

SELECT * FROM clientes
WHERE nombre like '_A%'; -- pido todos los clientes con nombre que tienen una A como segundo caracter. 

SELECT * FROM clientes
WHERE nombre like '__A%'; -- pido todos los clientes con nombre que tienen una A como tercer caracter. 

SELECT * FROM clientes
WHERE nombre like '%A_'; -- pido todos los clientes con nombre que  tenga la A como penultimo caracter

SELECT * FROM clientes
WHERE nombre like 'A%O'; -- pido todos los clientes con nombre que empiece con A y termine con O

-- NOT LIKE

SELECT * FROM clientes
WHERE nombre not like 'A%O'; -- pido todos los clientes donde su  nombre no empiece con A y no termine con O