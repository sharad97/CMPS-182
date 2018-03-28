ALTER TABLE dv_film
ADD CONSTRAINT positive_length 
CHECK (length > 0);










UPDATE mg_customers 
SET address_id = 20 
WHERE  address_id IS NULL;


ALTER TABLE mg_customers 
ALTER COLUMN address_id 
SET NOT NULL;


ALTER TABLE dv_address 
ALTER COLUMN address_id 
SET NOT NULL;










UPDATE dv_address 
SET address = 'NotKnown' 
WHERE address IS NULL;


ALTER TABLE dv_address 
ALTER COLUMN address 
SET NOT NULL;


ALTER TABLE dv_address 
ALTER COLUMN address 
SET DEFAULT 'NotKnown';