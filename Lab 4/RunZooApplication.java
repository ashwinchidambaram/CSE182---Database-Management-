import java.sql.*;
import java.io.*;
import java.util.*;

/**
 * A class that connects to PostgreSQL and disconnects.
 * You will need to change your credentials below, to match the usename and password of your account
 * in the PostgreSQL server.
 * The name of your database in the server is the same as your username.
 * You are asked to include code that tests the methods of the ZooApplication class
 * in a similar manner to the sample RunFilmsApplication.java program.
*/


public class RunZooApplication {
  public static void main(String[] args) {

    Connection connection = null;
    try {

      //Register the driver
      Class.forName("org.postgresql.Driver");
      connection = DriverManager.getConnection("jdbc:postgresql://cse182-db.lt.ucsc.edu/achidam1", "achidam1", "consistency77cache");

      if (connection != null)
        System.out.println("Connected to the database!");

            /* Include your code below to test the methods of the ZooApplication class.
             * The sample code in RunFilmsApplication.java should be useful.
             * That code tests other methods for a different database schema.
             * Your code below: */




            /*******************
            * Your code ends here */

    	}

      catch (SQLException | ClassNotFoundException e) {
    		System.out.println("Error while connecting to database: " + e);
    		e.printStackTrace();
    	}
    	finally {
    		if (connection != null) {
    			// Closing Connection
    			try {
					connection.close();
				} catch (SQLException e) {
					System.out.println("Failed to close connection: " + e);
					e.printStackTrace();
				}
    		}
    	}
    }
}
