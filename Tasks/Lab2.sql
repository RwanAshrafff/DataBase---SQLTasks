USE hotel_lab5;

update room
set Price_per_night =Price_per_night* 2;

select * 
from hotel;

select *
from hotel
where Address='London';

select *
from booking
where date_to is null;

select room.Room_No,room.Type,room.Price_per_night,hotel.Name
from room inner join hotel
on hotel.Hotel_No=room.Hotel_No ;

select guest.Name,room.Type,hotel.Name
from guest 
inner join booking on guest.guest_no=booking.Guest_no
inner join room on room.Room_No=booking.Room_no and booking.Room_no=room.Room_no
inner join hotel on hotel.Hotel_No=booking.Hotel_No;

select hotel.Name,room.Room_No,room.Type
from hotel left join room
on hotel.Hotel_No=room.Hotel_No;

select guest.Name,hotel.Name,booking.Date_from
from booking
 right join guest on booking.Guest_no=guest.guest_no
 left join hotel on hotel.Hotel_No=booking.Hotel_No;



