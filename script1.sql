
CREATE TYPE mpaa_rating AS ENUM (
 
'G',

'PG',

'PG-13',

'R',

'NC-17'

);





create table dv_customer (

customer_id int, 

first_name character varying(50), 

last_name character varying(50), 

email character varying(50), 

address_id int,
active boolean

);



create table dv_address (

address_id int, 

address character varying(50), 

address2 character varying(50), 

district character varying(50), 

city_id int, 

postal_code character varying(50), 

phone character varying(50)

);



create table dv_film (

film_id int, 

title character varying(50), 

description text, 

length smallint, 

rating mpaa_rating

);




create table cb_customers (

last_name character varying(50), 

first_name character varying(50)

);



create table cb_books (

title varchar(50), 

author_id int

);



create table cb_authors (

author_id int, 

first_name character varying(50), 

last_name character varying(50)

);




create table mg_customers (

customer_id int, 

first_name character varying(50), 

last_name character varying(50), 

email character varying(50), 

address_id int,

active boolean

);
