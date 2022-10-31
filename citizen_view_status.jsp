<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body style="background-color:#7cd1f9">

<% String name = request.getParameter("uname"); 
%>

<%


  try {
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaintdb","root","root");
	  PreparedStatement ps = con.prepareStatement ("select * from complains where uname=?");
	  ps.setString (1, name);
	  ResultSet rs = ps.executeQuery();
      java.sql.ResultSetMetaData rsmd=rs.getMetaData();

	 while(rs.next()){
		 %>
		 
<table border="1" class="table table-bordered">
<tr>
<th scope="col"> Id </th>
<th scope="col"> Name </th>
<th scope="col"> Email </th>
<th scope="col"> Mobile </th>
<th scope="col"> Address </th>
<th scope="col"> Department </th>
<th scope="col"> Complain </th>
<th scope="col"> Status </th>

</tr>

<tr>
		 <td scope="row"><%=rs.getInt("id")%></td>
		 		 <td scope="row"><%=rs.getString("uname")%></td>
		 		 <td scope="row"><%=rs.getString("uemail")%></td>
		 		 <td scope="row"><%=rs.getString("umobile")%></td>
		 		 <td scope="row"><%=rs.getString("uaddress")%></td>
		 		 <td scope="row"> <%=rs.getString("dept")%></td>
		 		 <td scope="row"><%=rs.getString("ucomplain")%></td>
		 		 <td scope="row"><%=rs.getString("status")%></td>
		 		 
		 </tr>
		 </table>
		 
	<%  }
	  
  } catch (Exception e) {
	  
  }

  %>
  

</body>
</html>