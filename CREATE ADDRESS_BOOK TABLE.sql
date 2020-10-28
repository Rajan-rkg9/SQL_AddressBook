create table Address_Book
( 
id              INT unsigned NOT NULL AUTO_INCREMENT,
first_name      VARCHAR(20) NOT NULL,
last_name       VARCHAR(20),
address         VARCHAR(200) NOT NULL,
city            VARCHAR(20) NOT NULL,
state           VARCHAR(20) NOT NULL,
zip             VARCHAR(6) NOT NULL,
phone_number    VARCHAR(10) NOT NULL,
email           VARCHAR(20) NOT NULL,
PRIMARY KEY (id)
);