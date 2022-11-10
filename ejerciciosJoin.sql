Provincias que no tienen clientes

SELECT provincias.codigo,provincias.nombre 
FROM provincias
LEFT JOIN clientes
ON clientes.codigoProvincia= provincias.codigo
WHERE clientes.codigoProvincia IS null;

codigo	nombre
3	Corrientes
5	Salta
6	Buenos Aires
7	Neuquen


Qué provincias tienen clientes? Pero sin repetir el nombre de la provincia.

SELECT DISTINCT p.codigo,p.nombre 
FROM provincias AS p
LEFT JOIN clientes AS c
ON c.codigoProvincia= p.codigo 
WHERE codigoProvincia;

codigo	nombre
1	Cordoba
2	Santa Fe
4	Misiones