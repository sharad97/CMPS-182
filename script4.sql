1.
SELECT 
  dv_customer.first_name, 
  dv_customer.last_name
FROM 
  public.dv_customer 
 
Inner join public.cb_customers
on dv_customer.first_name = cb_customers.first_name
And dv_customer.last_name = cb_customers.last_name

/*Selects all rows from both tables as long as there is a match between the columns in both tables.
First name and last name matches in both table. Thus,the first and last names of all people who are customers of both Downtown Video and
City Books are in the output.*/


2.

SELECT 
  dv_address.phone
FROM 

  public.cb_customers, 
  public.dv_address, 
  public.dv_customer
  
WHERE 
  cb_customers.last_name = dv_customer.last_name AND
  cb_customers.first_name = dv_customer.first_name AND
  dv_customer.address_id = dv_address.address_id;

 
/*The phone numbers of all people who are customers of both Downtown Video and
City Books are in the result*/


3.

SELECT 
  mg_customers.first_name, 
  mg_customers.last_name
  
FROM 
  public.dv_address, 
  public.mg_customers
  
WHERE 
 dv_address.address_id = mg_customers.address_id

group by 
  mg_customers.first_name, 
  mg_customers.last_name

 
order by
max(dv_address.district) asc
    OFFSET 58 ROWS
    FETCH NEXT 10 ROWS ONLY; 



/*The first and last names of all customers who live in the district having the
most customers are in the result*/


4.

SELECT 
  dv_film.rating, 
  count(dv_film.title) as "number of films"

FROM 
  public.dv_film

 group by
 dv_film.rating

order by
count(dv_film.title) limit 1;


/*The rating and the number offilms are in the result*/


5.

SELECT 
  cb_authors.first_name, 
  cb_authors.last_name, 
  count(cb_books.title) as "number of books"
  
FROM 
  
  public.cb_authors, 
  public.cb_books
  
WHERE 
  cb_authors.author_id = cb_books.author_id

 group by
  cb_authors.first_name, 
  cb_authors.last_name

  order by
  count(cb_books.title) desc

  limit 10;


/*The  first name the first and last names of the top 10 authors when ranked by the number of
books each has written are in the result*/
