-- Todas las consultas que realices deberás mantenerlas dentro del editor de textos de MySQL Workbench. 
-- Al finalizar, guarda este archivo, llendo al menú File > Save script. 
-- Recuerda añadir a todos los nombres te dus vistas el sufijo con tu identificador.
-- Para estas consultas usa INNER JOIN

-- Obtén la cantidad de productos de cada orden.
use classicmodels;
select p.productName, o.orderNumber from products p
join orderdetails o 
on p.productCode = o.productCode
order by orderNumber;

-- Obten el número de orden, estado y costo total de cada orden.
select od.orderNumber, round(sum(od.priceEach),2) as total
from orderdetails od
join orders o
on od.orderNumber = o.orderNumber
group by orderNumber;

-- Obten el número de orden, fecha de orden, línea de orden, nombre del producto, cantidad ordenada y precio de cada pieza.

-- Obtén el número de orden, nombre del producto, el precio sugerido de fábrica (msrp) y precio de cada pieza.

-- Para estas consultas usa LEFT JOIN

-- Obtén el número de cliente, nombre de cliente, número de orden y estado de cada orden hecha por cada cliente. ¿De qué nos sirve hacer LEFT JOIN en lugar de JOIN?

-- Obtén los clientes que no tienen una orden asociada.

-- Obtén el apellido de empleado, nombre de empleado, nombre de cliente, número de cheque y total, es decir, los clientes asociados a cada empleado.

-- Para estas consultas usa RIGHT JOIN

-- Repite los ejercicios 5 a 7 usando RIGHT JOIN. ¿Representan lo mismo? Explica las diferencias en un comentario. Para poner comentarios usa --.

-- Escoge 3 consultas de los ejercicios anteriores, crea una vista y escribe una consulta para cada una.