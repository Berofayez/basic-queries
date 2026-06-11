USE northwind;


-- 02 Product list
SELECT productID
     , productName
     , unitPrice
FROM products;


-- 03 product list orderd
SELECT productID
     , productName
     , unitPrice
FROM products
order by unitPrice asc;


-- 04 products under 7.50
SELECT productID
     , productName
     , unitPrice
FROM products
where unitPrice <= 7.50;

-- 05 products 100 stocks
SELECT productID
     , productName
     , UnitsInStock
     , unitPrice
FROM products
where UnitsInStock >= 100
order by unitPrice desc;


-- 06 products 100 stocks ordered
SELECT productID
     , productName
     , UnitsInStock
     , unitPrice
FROM products
where UnitsInStock >= 100
order by unitPrice desc, productName asc;


-- 07 backordered products
SELECT productID
     , productName
     , UnitsInStock
     , unitsOnOrder
FROM products
where UnitsInStock = 0
and UnitsOnOrder > 0
order by productName;

-- 08 categories table

-- 09 categories query
select *
from categories;

-- 10 seafood products
select p.ProductName
from products p
join categories c
on p.CategoryID = c.CategoryID
where CategoryName = 'Seafood';

-- 11 employee names
select firstName
	, LastName
from Employees;

-- 12 mangers
select firstName
	, LastName
    , Title
from Employees
where title like '%Manager%';


-- 13 distinct titles
select distinct title
from Employees;

-- 14 salary range
select FirstName
	, LastName
    , Salary
from Employees
where Salary between 2000 and 2500;

-- 15 suppliers
select *
from Suppliers;


-- 16 tokyo traders products
select p.productName
from products p
join suppliers s
on p.SupplierId = s.SupplierID
where s.companyName like 'Tokyo Traders';