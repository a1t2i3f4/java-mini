package com.municipal.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.municipal.dao.CitizenDao;
import com.municipal.model.Citizen;

public class CitizenServices{

	public static int registerCitizen(Citizen citizen){
		int flag=0;
		
		try {
			Connection con=CitizenDao.getConnection(); //getting the connection method here from dbconnection
			java.util.Date date=new java.util.Date();
			//System.out.println(date);
			java.sql.Date sqlDate=new java.sql.Date(date.getTime());
			java.sql.Timestamp sqlTime=new java.sql.Timestamp(date.getTime());
			PreparedStatement ps = con.prepareStatement("INSERT INTO citizens" + " (uname, uemail,upass,ucontact,date,time) VALUES " + " (?, ?, ?, ?,?,?);");
			ps.setString(1, citizen.getName());
			ps.setString(2, citizen.getEmail());//sending up the values received from user to the database table
			ps.setString(3, citizen.getPass());
			ps.setString(4, citizen.getContact());
//			ps.setString(5, citizen.getDate());
//			ps.setString(6, citizen.getTime());
			ps.setDate(5,sqlDate);
			ps.setTimestamp(6,sqlTime);

			flag=ps.executeUpdate(); //value changes if it is executed
			con.close();
		} catch (Exception e) {
		System.out.println("cannot able to insert");
		}
		return flag;
		
	}
	
	public boolean validate(Citizen citizen) throws ClassNotFoundException {
        boolean status = false;

        try {
        	
        	Connection con = CitizenDao.getConnection();
        	PreparedStatement ps = con.prepareStatement("select * from citizens where uemail = ? and upass = ? ");             
            ps.setString(1, citizen.getEmail());
            ps.setString(2, citizen.getPass());

            //System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
             // System.err.println("SQLState: " + ((SQLException) e).getSQLState());
            	Logger log = Logger.getLogger(CitizenServices.class);
            	
            	log.info("SQLState: " + ((SQLException) e).getSQLState());
                //System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                log.info("Error Code: " + ((SQLException) e).getErrorCode());
                //System.err.println("Message: " + e.getMessage());
                log.info("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                  //System.out.println("Cause: " + t);
                    log.info("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
	

