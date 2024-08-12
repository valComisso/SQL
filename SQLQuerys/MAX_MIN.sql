--  MAX, MIN - VALORES MAXIMOS Y MINIMOS
-- son funciones que nos permiten extraer el valor maximo y minimo de un campo 

SELECT * FROM articulos

SELECT max(precio) as "Mas caro" FROM articulos; -- devuelve el articulo con el precio mas alto. 
SELECT min(precio) as "Mas barato" FROM articulos; -- devuelve el articulo con el precio mas bajo. 

-- conbinacion
SELECT max(precio) as "Mas caro",
min(precio) as "Mas barato"
FROM articulos;