use hotel_lab5;
START TRANSACTION;
UPDATE room SET Price_per_night =  Price_per_night*2 ;
commit;

select * from guest;

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
start transaction;
insert into guest values (9999999,"ahmed","cairo");
commit;