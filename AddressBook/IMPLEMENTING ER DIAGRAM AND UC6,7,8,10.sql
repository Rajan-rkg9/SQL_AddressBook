select first_name,last_name,phone_number,email_id,address_book_name,address,city,state,zip
from Contacts , Address where Contacts.person_id = Address.person_id and city = 'Panki';

select first_name,last_name,phone_number,email_id,address_book_name,address,city,state,zip
from Contacts , Address where Contacts.person_id = Address.person_id and state = 'Jharkhand';

select city , count(city) from Address group by city;

select state , count(state) from Address group by state order by state;

select first_name,last_name,phone_number,email_id,address_book_name,address,city,state,zip
from Contacts , Address where Contacts.person_id = Address.person_id and city = 'Panki'
order by first_name;

select first_name,last_name,phone_number,email_id,address_book_name,address,city,state,zip
from Contacts , Address where Contacts.person_id = Address.person_id and state = 'Jharkhand'
order by first_name;

select address_book_name , count(address_book_name) from Contacts group by address_book_name;