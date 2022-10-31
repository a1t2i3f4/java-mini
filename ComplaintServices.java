package com.municipal.services;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.apache.log4j.Logger;

import com.municipal.dao.ComplaintDao;
import com.municipal.model.Complaint;

public class ComplaintServices{

	public static int registerComplain(Complaint complaint){
		int flag=0;
		
		try {
			Connection con=ComplaintDao.getConnection(); //getting the connection method here from dbconnection
			PreparedStatement ps = con.prepareStatement("INSERT INTO complains" + " (uname, uemail,umobile,uaddress,dept,ucomplain,status) VALUES " + " (?, ?, ?, ?, ?, ?,?);");
			ps.setString(1, complaint.getName());
			ps.setString(2, complaint.getEmail());//sending up the values received from user to the database table
			ps.setString(3, complaint.getMobile());
			ps.setString(4, complaint.getAddress());
			ps.setString(5, complaint.getDept());
			ps.setString(6, complaint.getComplain());
			ps.setString(7, complaint.getStatus());

			//System.out.println(ps);
			flag=ps.executeUpdate();//value changes if it is executed
			con.close();
			
		} catch (Exception e) {
			
			//System.out.println("cannot able to insert");
        	Logger log = Logger.getLogger(ComplaintServices.class);
        	log.info("cannot able to insert");

		}
		
		return flag;
		
	}
}
