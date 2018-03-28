
/*1*/

UPDATE mg_customers
SET active = true

WHERE mg_customers.last_name like 'B%' OR mg_customers.last_name like 'C%'

And mg_customers.active = NULL
;





/*2*/







INSERT INTO dv_address (address_id, address, city_id, postal_code)

VALUES (700, 'Koshland Way', 654, 95064);




INSERT INTO mg_customers (first_name, last_name, address_id)

VALUES ('John', 'Smith', 700);










/*3*/
SELECT dv_film.title

FROM dv_film

WHERE dv_film.length > all 
(

SELECT avg( dv_film.length)

FROM dv_film
)
;









/*4*/
SELECT MAX(dv_film.length), MIN(dv_film.length), AVG(dv_film.length), dv_film.rating

FROM
 dv_film

GROUP BY 
dv_film.rating

Order by 
MAX(dv_film.length) ASC,

MIN(dv_film.length) ASC
;





/*5*/






DELETE FROM cb_books

WHERE cb_books.author_id = (
select cb_authors.author_id
 
FROM cb_authors
 
where 
cb_authors.first_name = 'Nevil'

AND cb_authors.last_name = 'Shute'
);