/*Foreign Keys*/



/*
1.
*/


DELETE FROM dv_address 

WHERE
dv_address.address_id = 10
;




/*
2.
*/


DELETE FROM cb_authors

WHERE
cb_authors.author_id = 11
;













/*General Constraints*/



/*
1.
*/



/*
a. 
*/


INSERT INTO dv_film (film_id, title, description, length, rating)

VALUES (1111111,'asdfa','dafa',-1,'G');



/*
b. 
*/

INSERT INTO dv_film (film_id, title, description, length, rating)

VALUES (1111111,'asdfa','dafa',1,'G');





/*
2.
*/



/*
a. 
*/

INSERT INTO mg_customers (customer_id, first_name, last_name, email, address_id)

VALUES (1111111,'asdfa','dafa','asdf@hotmail.com',null);



/*
b. 
*/

INSERT INTO dv_address (address_id, address, city_id, postal_code)

VALUES (12121, 'land Way', 707000, 9054022);



INSERT INTO mg_customers (customer_id, first_name, last_name, email, address_id)

VALUES (1111111,'asdfa','dafa','asdf@hotmail.com',12121);





/*
3.
*/



/*
a. 
*/

INSERT INTO dv_address (address_id, address, address2, district)

VALUES (1111112,null,'Clark Way','Santa Fe');



/*
b. 
*/

INSERT INTO dv_address (address_id, address, address2, district)

VALUES (1111112,'Wanda Way','Clark Way','Santa Fe');
