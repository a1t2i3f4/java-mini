package com.municipal.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.municipal.dao.CitizenDao;
import com.municipal.model.Citizen;
import com.municipal.services.CitizenServices;


@WebServlet("/register")
public class CitizenRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CitizenDao registerDao;
    private CitizenServices registerCitizen;

    public void init() {
        registerDao = new CitizenDao();
        registerCitizen = new CitizenServices();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String name = request.getParameter("uname");
        String email = request.getParameter("uemail");
        String pass = request.getParameter("upass");
        String contact = request.getParameter("ucontact");
        
        
        Citizen citizen = new Citizen();
        citizen.setName(name);
        citizen.setEmail(email);
        citizen.setPass(pass);
        citizen.setContact(contact);
        RequestDispatcher dispatcher = null;

        try {
        	if(email.equals("")) {
        		
        		dispatcher = request.getRequestDispatcher("/views/citizen_registration.jsp");
        		
        }else if (pass.equals("")) {
    		dispatcher = request.getRequestDispatcher("/views/citizen_registration.jsp");
    			
		}else if (name.equals("")) {
    		dispatcher = request.getRequestDispatcher("/views/citizen_registration.jsp");

			
		}else if (contact.equals("")) {
    		dispatcher = request.getRequestDispatcher("/views/citizen_registration.jsp");

			
		}else {
        	
            registerCitizen.registerCitizen(citizen);
            
            response.sendRedirect("../views/citizen_login.jsp");

			
		}
    	dispatcher.forward(request, response);	
	
             

            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
