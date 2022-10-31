<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Road and Transport Department</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body style="background-color:#7cd1f9">
<center>
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
<th scope="col"> Action </th>

</tr>


<%
  
  try {
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaintdb","root","root");
	  Statement st = con.createStatement();
	  String str = "select * from complains where dept='Road' and status='Pending'";
	  ResultSet rs = st.executeQuery(str);
	 while(rs.next()){
		 %>
		 
		 <tr>
		 
		 <td scope="row"><%=rs.getInt("id")%></td>
		 <td scope="row"><%=rs.getString("uname")%></td>
		 <td scope="row"><%=rs.getString("uemail")%></td>
		 <td scope="row"><%=rs.getString("umobile")%></td>
		 <td scope="row"><%=rs.getString("uaddress")%></td>
		 <td scope="row"><%=rs.getString("dept")%></td>
		 <td scope="row"><%=rs.getString("ucomplain")%></td>
		 <td scope="row"><%=rs.getString("status")%></td>
		 
		 <td><a href="RoadandTransport_dept_sol.jsp?id=<%=rs.getString("id")%>">Resolve</a></td>
		 
		 
		 </tr>
		 
	<%  }
	  
  } catch (Exception e) {
	  
  }

  %>
  </table>
  </center>




</body>
</html>