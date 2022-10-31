
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/adminstyle.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    

</head>
<body>

  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">P M C</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="login.jsp" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <br><br>
        <li>
          <a href="citizen_login.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name">Sent Credentials</span>
          </a>
        </li>
                <br><br>
        
        <li>
          <a href="citizen_login.jsp">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Add Department</span>
          </a>
        </li>
        <li>
        <br><br> 	
          <a href="citizen_login.jsp">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Update Department</span>
          </a>
        </li>
        
        <br><br><br><br>
        <li>
          <a href="citizen_login.jsp">
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">Delete Department</span>
          </a>
        </li>
        <li>
        <br><br>
          <a href="citizen_login.jsp">
            <i class='bx bx-book-alt' ></i>
            <span class="links_name">Logout</span>
          </a>
        </li>
        
        
        
        
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>
      
      <div>
      <i>Good Morning  <%=session.getAttribute("user") %> </i>
      
      </div>
      
      
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
      
    </nav>

 <br><br><br>
 <table border="1" class="table table-bordered">

<tr>
<th scope="col"> Id </th>
<th scope="col"> Name </th>
<th scope="col"> Email </th>
<th scope="col"> Password </th>
<th scope="col"> Contact </th>
<th scope="col"> Date </th>
<th scope="col"> Time </th>


</tr>


<%
  
  try {
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/citizendb","root","root");
	  Statement st = con.createStatement();
	  String str = "select * from citizens";
	  ResultSet rs = st.executeQuery(str);
	 while(rs.next()){
		 %>
		 
		 <tr>
		 
		 <td scope="row"><%=rs.getInt("id")%></td>
		 <td scope="row"><%=rs.getString("uname")%></td>
		 <td scope="row"><%=rs.getString("uemail")%></td>
		 <td scope="row"><%=rs.getString("upass")%></td>
		 <td scope="row"><%=rs.getString("ucontact")%></td>
		 <td scope="row"><%=rs.getString("date")%></td>
		 <td scope="row"><%=rs.getString("time")%></td>
		 
	
		 </tr>
		 
	<%  }
	  
  } catch (Exception e) {
	  
  }

  %>
  </table>
  </center>

 
     

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>





</body>
</html>