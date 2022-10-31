package com.municipal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.municipal.controller.CitizenLogin;
import com.municipal.model.Citizen;



//public class RegisterDao {
//
//    public int registerCitizen(Citizen citizen) throws ClassNotFoundException {
//        String INSERT_USERS_SQL = "INSERT INTO citizens" +
//            "  (uname, uemail,upass,ucontact) VALUES " +
//            " (?, ?, ?, ?);";
//
//        int result = 0;
//
//        Class.forName("com.mysql.jdbc.Driver");
//
//        try (Connection connection = DriverManager
//            .getConnection("jdbc:mysql://localhost:3306/citizendb?useSSL=false", "root", "root");
//
//            // Step 2:Create a statement using connection object
//            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
//            preparedStatement.setString(1, citizen.getName());
//            preparedStatement.setString(2, citizen.getEmail());
//            preparedStatement.setString(3, citizen.getPass());
//            preparedStatement.setString(4, citizen.getContact());
//
//            System.out.println(preparedStatement);
//            // Step 3: Execute the query or update query
//            result = preparedStatement.executeUpdate();
//
//        } catch (SQLException e) {
//            // process sql exception
//            printSQLException(e);
//        }
//        return result;
//    }
//
//    private void printSQLException(SQLException ex) {
//        for (Throwable e: ex) {
//            if (e instanceof SQLException) {
//                e.printStackTrace(System.err);
//                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
//                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
//                System.err.println("Message: " + e.getMessage());
//                Throwable t = ex.getCause();
//                while (t != null) {
//                    System.out.println("Cause: " + t);
//                    t = t.getCause();
//                }
//            }
//        }
//    }
//}


public class CitizenDao {

	public static Connection getConnection(){ //making a static connection,shares to all classes
		Connection con=null; // creating connection
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/citizendb","root","root");
						
		} catch (Exception e) {
			//throws an error if at all its unable to create an connection
//System.out.println("unable to connect to the database");
Logger logger=Logger.getLogger(CitizenDao.class);

logger.info("unable to connect to the database");
		}
		return con; // we return the connection and we can get the connection wherever needed.
	}
	
}