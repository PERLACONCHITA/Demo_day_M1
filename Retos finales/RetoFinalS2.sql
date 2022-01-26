-- Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre empiece con A.
use classicmodels;
select employeeNumber, lastName, firstName from employees where firstName like "a%";

-- Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo apellido termina con on.
select employeeNumber, lastName, firstName from employees where lastName like "%on";

-- Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre incluye la cadena on.
select employeeNumber, lastName, firstName from employees where firstName like "%on%";

-- Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyos 
-- nombres tienen seis letras e inician con G.
select employeeNumber, lastName, firstName from employees where firstName like "g%_____";

-- Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre no inicia con B.
select employeeNumber, lastName, firstName from employees where firstName not like "b%";

-- Dentro de la tabla products, obten el código de producto y nombre de los productos cuyo código incluye la cadena _20.
select productCode, productName from products where productCode like "%20";

-- Dentro de la tabla orderdetails, obten el total de cada orden.
select orderNumber, sum(quantityOrdered*priceEach) as total from orderdetails group by orderNumber;

-- Dentro de la tabla orders obten el número de órdenes por año.
select year(orderDate) as Año, count(*) as NumerodeÓrdenes from orders group by year(orderDate);

-- Obten el apellido y nombre de los empleados cuya oficina está ubicada en USA.
select lastName, firstName, (select country from offices where officeCode = employees.officeCode)  as country from employees 
where officeCode in (select officeCode from offices where Country = "USA");

-- Obten el número de cliente, número de cheque y cantidad del cliente que ha realizado el pago más alto.
Select customerNumber, checkNumber, amount from payments order by amount desc limit 1;

-- Obten el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio.
Select customerNumber, checkNumber, amount as HigherAvg from payments where amount > (select avg(amount) from payments);

-- Obten el nombre de aquellos clientes que no han hecho ninguna orden.
select customerName, customerNumber from customers where customerNumber not in (select customerNumber from orders);
select customerNumber from orders where customerNumber =125; -- verificar query anterior

-- Obten el máximo, mínimo y promedio del número de productos en las órdenes de venta.
select max(orders), min(orders), avg (orders) from (select orderNumber, count(*) as orders from orderdetails group by orderNumber) as subconsulta;
select orderNumber, count(*) from orderdetails group by orderNumber; -- Verificar: cuántos productos hay por orden
select orderNumber, productCode from orderdetails order by orderNumber; -- verificar de manera manual

-- Dentro de la tabla orders, obten el número de órdenes que hay por cada estado.
select status, count(*) as total from orders group by status; 