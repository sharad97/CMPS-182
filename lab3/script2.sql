Alter Table mg_customers 
ADD FOREIGN KEY (address_id)

REFERENCES dv_address(address_id) 
;


Alter Table cb_books 
ADD FOREIGN KEY (author_id) 

REFERENCES cb_authors (author_id) 
;