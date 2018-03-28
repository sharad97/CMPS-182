




EXPLAIN ANALYZE 


SELECT 
  
mg_customers.first_name
  

FROM 
  
public.mg_customers


WHERE
  
mg_customers.first_name = 'John'
  

;









/*Explain analyze is done. Seq scan is used and it took 0.138 ms to execute.*/





CREATE INDEX firstlast 
on 

mg_customers
  (

customer_id, 
 
first_name,
 
last_name, 

email, 

address_id,

active
  )
;










/*Index is created*/





EXPLAIN ANALYZE 


SELECT 
  
mg_customers.first_name
  

FROM 
  
public.mg_customers


WHERE
  
mg_customers.first_name = 'John'


;

/*Explain analyze is done after index was created. 
Seq scan is used and it took 0.119 ms to execute.
After index was created, the scan didnot change however, 
the time required to execute did change. Query performed better 
after index was created. */
