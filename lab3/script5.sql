/*1*/
CREATE VIEW Customer_City AS 

SELECT dv_customer.first_name,dv_customer.last_name,dv_address.city_id

FROM dv_customer,  dv_address, cb_customers

WHERE dv_customer.first_name = cb_customers.first_name

AND dv_customer.last_name = cb_customers.last_name

AND dv_address.address_id = dv_customer.address_id
;





/*2*/



CREATE VIEW district_stat AS 

SELECT dv_address.district, count(dv_customer.customer_id)

FROM dv_address,dv_customer

WHERE dv_customer.address_id = dv_address.address_id

GROUP BY dv_address.district

ORDER BY count(dv_customer.customer_id) ASC
;


/*3*/



CREATE VIEW author_title AS 

SELECT cb_authors.first_name, cb_authors.last_name, cb_books.title

FROM cb_authors,cb_books

WHERE cb_authors.author_id = cb_books.author_id
;





/*4*/



SELECT author_title.title

FROM author_title

WHERE author_title.first_name = 'Stephen' 

AND author_title.last_name = 'Fry'
;





/*5*/



SELECT district_stat.district, district_stat.count

FROM district_stat

GROUP BY 
district_stat.district, district_stat.count

ORDER BY district_stat.count ASC

LIMIT 5
;





/*6*/



ALTER VIEW customer_city 
RENAME TO consumer
;