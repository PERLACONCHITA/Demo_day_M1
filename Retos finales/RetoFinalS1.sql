-- Reto final

-- 1 Dentro del mismo servidor de bases de datos, conéctate al esquema classicmodels.
use classicmodels;

-- 2 Dentro de la tabla employees, obtén el apellido de todos los empleados.
select lastName from employees;

-- 3 Dentro de la tabla employees, obtén el apellido, nombre y puesto de todos los empleados.
select lastName, firstName, jobTitle from employees;

-- 4 Dentro de la tabla employees, obtén todos los datos de cada empleado.
select * from employees;

-- 5 Dentro de la tabla employees, obtén el apellido, nombre y puesto de todos los empleados que tengan el puesto Sales Rep.
select lastName, firstName, jobTitle from employees where jobTitle = "Sales Rep";

-- 6 Dentro de la tabla employees, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto Sales Rep y código de oficina 1.
select lastName, firstName, jobTitle, officeCode from employees where jobTitle = "Sales Rep" and officeCode = "1";

-- 7 Dentro de la tabla employees, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto Sales Rep o código de oficina 1.
select lastName, firstName, jobTitle, officeCode from employees where jobTitle = "Sales Rep" or officeCode = "1";

-- 8 Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados que tenga código de oficina 1, 2 o 3.
select lastName, firstName, jobTitle, officeCode from employees where  officeCode in (1, 2, 3);

-- 9 Dentro de la tabla employees, obten el apellido, nombre y puesto de todos los empleados que tengan un puesto distinto a Sales Rep.
select lastName, firstName, jobTitle from employees where jobTitle <> "Sales Rep";

-- 10 Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados cuyo código de oficina sea mayor a 5.
select lastName, firstName, officeCode from employees where officeCode > "5";

-- 11 Dentro de la tabla employees, obtén el apellido, nombre y código de oficina de todos los empleados cuyo cdigo de oficina sea menor o igual 4.
select lastName, firstName, officeCode from employees where officeCode <= "4"

-- 12 Dentro de la tabla customers, obtén el nombre, país y estado de todos los clientes cuyo país sea USA y cuyo estado sea CA.

DESCRIBE customers;
select contactFirstName, country, state from customers where country = "USA" AND state = "CA";

-- 13 Dentro de la tabla customers, obtén el nombre, país, estado y límite de crédito de todos los clientes cuyo país sea, USA, cuyo estado sea CA y cuyo límite de crédito sea mayor a 100000.
select contactFirstName, country, state, creditLimit from customers where country = "USA" AND state = "CA" and creditLimit > "100000";

-- 14 Dentro de la tabla customers, obtén el nombre y país de todos los clientes cuyo país sea USA o France.
select contactFirstName, country from customers where country in ("USA", "France");  

-- 15 Dentro de la tabla customers, obtén el nombre, pas y límite de crédito de todos los clientes cuyo país sea USA o France y cuyo límite de crédito sea mayor a 100000. Para este ejercicio ten cuidado con los paréntesis.
select contactFirstName, country, creditLimit from customers where country in ("USA", "France") and creditLimit > "100000";

-- 16 Dentro de la tabla offices, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que se encuentren en USA o France.
select officeCode, city, phone, country from offices where country in ("USA", "France");

-- 17 Dentro de la tabla offices, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que no se encuentren en USA o France.
select officeCode, city, phone, country from offices where country <> "USA" and country <> "France";

-- 18 Dentro de la tabla orders, obtén el número de orden, número de cliente, estado y fecha de envío de todas las órdenes con el número 10165, 10287 o 10310.
select orderNumber, customerNumber, status, shippedDate from orders where customerNumber in (10165, 10287, 10310);

-- 19 Dentro de la tabla customers, obtén el apellido de contacto y nombre de cada cliente y ordena los resultados por apellido de forma ascendente.
select contactLastName, customerName from customers order by contactLastName asc;

-- 20 Dentro de la tabla customers, obtén el apellido de contacto y nombre de cada cliente y ordena los resultados por apellido de forma descendente.
select contactLastName, customerName from customers order by contactLastName desc;

-- 21 Dentro de la tabla customers, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente y luego por nombre de forma ascendente.
select contactLastName, customerName from customers order by contactLastName desc, customerName asc;

-- 22 Dentro de la tabla customers, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más alto (top 5).
select customerNumber, customerName, creditLimit from customers order by creditLimit desc limit 5;
