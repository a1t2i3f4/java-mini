package com.municipal.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.municipal.dao.ComplaintDao;
import com.municipal.model.Complaint;
import com.municipal.services.ComplaintServices;

@WebServlet("/complaint")
public class CitizensComplaints extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ComplaintDao compaintDao;
    private ComplaintServices citizensComplaint;

       
   
	
	public CitizensComplaints() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("uname");
        String email = request.getParameter("uemail");
        String mobile = request.getParameter("umobile");
        String address = request.getParameter("uaddress");
        String dept = request.getParameter("dept");
        String complain = request.getParameter("ucomplain");
        String status = request.getParameter("status");


        
		RequestDispatcher dispatcher =null;
        Complaint complaint = new Complaint();
        complaint.setName(name);
        complaint.setEmail(email);
        complaint.setMobile(mobile);
        complaint.setAddress(address);
        complaint.setDept(dept);
        complaint.setComplain(complain);
        complaint.setStatus(status);


        try {
        	citizensComplaint.registerComplain(complaint);
    		dispatcher = request.getRequestDispatcher("/views/citizen.jsp");

            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		dispatcher.forward(request, response);	

    }

}
