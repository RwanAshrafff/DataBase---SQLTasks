use classicmodels;

create or replace view  salePerOrder
AS
select orderNumber,sum(quantityOrdered * priceEach) as totalsales
from  orderdetails
group by orderNumber;
select * from salePerOrder;

create view bigSalesOrder
AS
select *
from salePerOrder
where totalsales>60000;
select * from bigSalesOrder;

create view orderPayment 
AS
select orderNumber,checkNumber,amount 
from  orders,payments;
select * from orderPayment;

create view officeInfo
AS
select officecode,phone,city
from  offices;
select * from officeInfo;

update officeInfo
set phone = +33147235555
Where officecode=4; 
select * from officeInfo;