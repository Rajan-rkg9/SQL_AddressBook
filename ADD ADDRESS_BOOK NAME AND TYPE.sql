alter table Address_Book add address_name varchar(50) after last_name;
alter table Address_Book add address_type varchar(50) after  address_name;
update Address_Book set address_type = 'Family' where first_name = 'Rajan Kumar';
update Address_Book set address_type = 'Friend' where first_name = 'Sumit';
update Address_Book set address_type = 'Professional' where first_name = 'Shubham';
update Address_Book set address_name = concat(address_type , '_Book');