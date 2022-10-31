package com.municipal.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import org.apache.log4j.Logger;

import com.municipal.controller.CitizenLogin;

public class ComplaintDao {

	public static Connection getConnection(){ //making a static connection,shares to all classes
		Connection con=null; // creating connection
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/complaintdb","root","root");
						
		} catch (Exception e) {
			//throws an error if at all its unable to create an connection
//System.out.println("unable to connect to the database");
Logger logger=Logger.getLogger(ComplaintDao.class);

logger.info("unable to connect to the database");

		}
		return con; // we return the connection and we can get the connection wherever needed.
	}
	
}