import java.sql.*;

import java.io.*;

import java.util.*;



/**
 
* A sample class that connects to PostgreSQL and runs a simple query.
 
*
 * Note: Your database name is your login name, so for login jsmith,
 
* you would have
 
* getConnection
*(
*"jdbc:postgresql://cmps182-db.lt.ucsc.edu/jsmith", 
 
*"jsmith",
*"password"
*);
 
*/

public class Driver

{

	public static void main(String[] args) throws
 
	ClassNotFoundException, FileNotFoundException, IOException,
 SQLException 
		{
       
			Connection connection;

 
			int i; 	
			Class.forName("org.postgresql.Driver"); //Registering the driver
  
			connection = DriverManager.getConnection(
"jdbc:postgresql://cmps182-db.lt.ucsc.edu/sshrest3",
 "sshrest3", "sharad");  //Making the Connection 
			StoreApplication app = new StoreApplication();

 
        		


			
				System.out.println("\nTesting Get phone number function");
        			System.out.println("---------------------------------");  

				List<String> phoneNumbers = app.getCustomerPhoneFromFirstLastName(connection, "Mary", "Smith");
				for(i=0;i<phoneNumbers.size();i++)
				{
            			System.out.println("The Phone number of Mary Smith is: "+phoneNumbers.get(i));
				}
            	
    				phoneNumbers = app.getCustomerPhoneFromFirstLastName(connection,  "Kathleen", "Adams");
             			for(i=0;i<phoneNumbers.size();i++)
				{
           			System.out.println("The Phone number of Kathleen Adams is: "+phoneNumbers.get(i));
				}

   	 			phoneNumbers = app.getCustomerPhoneFromFirstLastName(connection, "Jennifer", "Davis");
				for(i=0;i<phoneNumbers.size();i++)
				{
           			System.out.println("The Phone number of Jennifer Davis is: "+phoneNumbers.get(i));
				}
		


			
				System.out.println("\nTesting Get film titles function(Title length 95 - 105)");
        			System.out.println("--------------------------------------------------------");

				List<String> filmTitles =
 app.getFilmTitlesBasedOnLengthRange (connection, 95, 105);
  
  
    				for(i=0;i<filmTitles.size();i++)
				{
            			System.out.println("Film Title "+(i+1)+" is: "+filmTitles.get(i));
				}
			


			
				System.out.println("\nTesting Get customer count function");
        			System.out.println("-------------------------------------");

				int count = app.countCustomersInDistrict(connection, "Buenos Aires",
 true);
				{
				System.out.println("The number of active customers in District Buenos Aires is "+count);
				}
        	
				count = app.countCustomersInDistrict(connection, "California", true);
				{
        			System.out.println("The number of active customers in District California is "+count);
				}
			

			app.insertFilmIntoInventory(connection, "Sequel to the Prequel",
 "Memorable", 98, "PG-13");

    

			connection.close(); //Closing Connection
    
		}	
}
