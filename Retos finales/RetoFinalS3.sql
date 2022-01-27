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
select od.orderNumber, o.orderDate, od.orderLineNumber,
p.productName, od.quantityOrdered, od.priceEach
from orderdetails od
join orders o
on od.orderNumber = o.orderNumber
join products p
on od.productCode = p.productCode;

-- Para estas consultas usa LEFT JOIN
-- Obtén el número de cliente, nombre de cliente, número de orden y estado de cada orden hecha por cada cliente. ¿De qué nos sirve hacer LEFT JOIN en lugar de JOIN?
select c.customerNumber, c.customerName, o.orderNumber, o.status
from customers c
left join orders o
on c.customerNumber = o.customerNumber;

-- Obtén los clientes que no tienen una orden asociada.
select c.customerNumber, c.customerName, o.orderNumber
from customers c
left join orders o
on c.customerNumber = o.customerNumber
where o.orderNumber is null;

-- Para estas consultas usa RIGHT JOIN
-- Repite los ejercicios 5 a 7 usando RIGHT JOIN. 
-- ¿Representan lo mismo? No, en la primera toma en cuenta las órdenes existentes y buscará los clientes que solo tengan orden; 
-- mientras que en el segundo ejemplo esta uniendo las órdenes inexistentes con clientes por lo que arroja ningún valor
select c.customerNumber, c.customerName, o.orderNumber, o.status
from customers c
right join orders o
on c.customerNumber = o.customerNumber;

select c.customerNumber, c.customerName, o.orderNumber
from customers c
right join orders o
on c.customerNumber = o.customerNumber
where o.orderNumber is null;

-- Escoge 3 consultas de los ejercicios anteriores, crea una vista y escribe una consulta para cada una.