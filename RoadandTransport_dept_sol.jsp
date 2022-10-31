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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<title>Road and Transport Department</title>
</head>
<body style="background-color:#7cd1f9">

 
<%

  String id = request.getParameter("id");

  try {
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaintdb","root","root");
	  Statement st = con.createStatement();
	  String str = "select * from complains where id="+id;
	  ResultSet rs = st.executeQuery(str);
	 while(rs.next()){
		 %>
		 
<form method="post" action="RoadandTransport_dept_status_updation.jsp">
<table class= "table table-bordered">
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

<tr>
<!-- <td><input type="hidden" name="id" value="<%=rs.getInt("id") %>"style="width:50px; height:20px;"/></td>
<td><input type="text" name="id" value="<%=rs.getInt("id") %>"style="width:50px; height:20px;"/></td>  -->

		 <td scope="row"><input type="text" name = "id" value= "<%=rs.getInt("id")%>" style="width:60px; height:40px; background-color: #7cd1f9;border: none;outline: none;"/></td>
		 		 <td scope="row"><input type="text" name = name value= <%=rs.getString("uname")%> style="width:130px; height:40px; background-color: #7cd1f9;border: none;outline: none;"/></td>
		 		 <td scope="row"><input type="email" name = email value= <%=rs.getString("uemail")%> style="width:130px; height:40px; background-color: #7cd1f9;border: none;outline: none;"/></td>
		 		 <td scope="row"><input type="text" name = mobile value= <%=rs.getString("umobile")%> style="width:130px; height:40px; background-color: #7cd1f9;border: none;outline: none;"/></td>
		 		 <td scope="row"><input type="text" name = address value= <%=rs.getString("uaddress")%> style="width:130px; height:40px; background-color: #7cd1f9;border: none;outline: none;"/></td>
		 		 <td scope="row"><input type="text" name = dept value= <%=rs.getString("dept")%> style="width:130px; height:40px; background-color: #7cd1f9;border: none;outline: none;"/></td>
		 		 <td scope="row"><input type="text" name = complain value= <%=rs.getString("ucomplain")%> style="width:130px; height:40px; background-color: #7cd1f9;border: none;outline: none;"/></td>
		 		 <td scope="row"><input type="text" name = status value= <%=rs.getString("status")%> style="width:130px; height:40px; background-color: #7cd1f9;border: none;outline: none;"/></td>
		 		 <td scope="row"><input type="submit" value="Resolve" style= "background-color: #7cd1f9;"></td>
		 </tr>
		 </table>
		 
		 
		 </form>
	<%  }
	  
  } catch (Exception e) {
	  
  }

  %>
  

</body>
</html>