USE hotel_lab5;

SELECT Type
FROM room
WHERE (Type = 'double' OR Type = 'family') AND Price_per_night > 40.00
ORDER BY Price_per_night;

select Name,address
FROM guest
Where address='London'
order by Name;

select count(Hotel_No)
from hotel;

select avg(Price_per_night)
from room;


select sum(Price_per_night) as total_revenue
from room
where Type='double';

