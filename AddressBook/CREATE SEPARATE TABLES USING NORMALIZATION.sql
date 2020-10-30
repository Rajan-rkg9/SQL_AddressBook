create table Address_Book_Record
(
address_book_name varchar(50) not null primary key,
address_type varchar(50) not null
);
insert into Address_Book_Record (address_book_name,address_type) values
								('Family_Book','Family'),
                                ('Friend_Book','Friend'),
                                ('Professional_Book','Professional');
 desc Address_Book_Record;
select * from Address_Book_Record;
create table Contacts
(
   person_id int not null primary key,
   first_name varchar(50) not null,
   last_name varchar(50) not null,
   phone_number varchar(15) not null,
   email_id varchar(50) not null,
   address_book_name varchar(50) not null,
   foreign key (address_book_name) references Address_Book_Record(address_book_name)
   );
   insert into Contacts (person_id,first_name,last_name,phone_number,email_id,address_book_name) values
				 (1001,'Rajan Kumar','Gupta','9876543201','rajangupta@gmail.com','Family_Book'),
				 (1002,'Rohan','Kumar','9876543201','irohapta@gmail.com','Friend_Book'),
                 (1003,'Sumit','Kumar','9897654301','sumit@gmail.com','Family_Book'),
                 (1004,'Shubham','Tiwari','7896543201','tiwrijii@gmail.com','Professional_Book'),
				 (1005,'Pankaj','Gupta','9873453201','pkg@gmail.com','Family_Book'),
				 (1006,'Sandeep','Soni','9871113201','soni@gmail.com','Friend_Book'),
				 (1007,'Gaurav','Kumar','9887553201','ASE@gmail.com','Professional_Book');

   create table Address
   (
   person_id int not null ,
   address varchar(200) not null ,
   city varchar(50) not null,
   state varchar(50) not null,
   zip varchar(10) not null,
   foreign key (person_id) references Contacts(person_id)
   );
   insert into Address (person_id,address,city,state,zip) values
				(1001,'Panki','Panki','Jharkhand','822122'),
                (1002,'Patan','Palamu','Jharkhand','823322'),
                (1003,'Daltongunj','Daltongunj','Jharkhand','820022'),
                (1004,'Etawah','Balliya','Uttar Pradesh','800122'),
                (1005,'Obra','Aurangabad','Bihar','865122'),
                (1006,'Garhwa','Garhwa','Jharkhand','822086'),
                (1007,'Dumka','Milap','Jharkhand','800452');
