package com.municipal.model;

import java.io.Serializable;

public class Citizen implements Serializable {
    
	
	private static final long serialVersionUID = 1L;
    private String name;
    private String email;
    private String pass;
    private String contact;
    private String date;
    private String time;

    
    
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }
    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }
    
    
}