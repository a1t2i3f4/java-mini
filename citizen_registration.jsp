<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 
 <!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="<%= request.getContextPath() %>//register" method="post">
   
    
Enter your Name <input type="text" name="uname"><br>
Enter your Email <input type="email" name="uemail"><br>
Enter your Password <input type="password" name="upass"><br>
Enter you Confirm password <input type="password" name="reupass"><br>
Enter your Mobile number <input type="text" name="ucontact"><br>

<input type="submit" value="Register">

</form>
 
</body>
</html>

 -->
 
 
  <!DOCTYPE html
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration</title>
  <link rel="stylesheet" href="../css/registrationstyle.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<script src="../js/registration.js"></script>
</head>
<body>

  <div class="wrapper">
    <header>Registration</header>
<form action="<%= request.getContextPath() %>//register" name="RegForm" onsubmit="return Validation()" method="post">
<div class="field name">
        <div class="input-area">
          <input type="text" name="uname" placeholder="Name">
          <i class="icon fas fa-envelope"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>
        <div class="error error-txt">Name can't be blank</div>
      </div>
      

      <div class="field email">
        <div class="input-area">
          <input type="email" name="uemail" placeholder="Email Address">
          <i class="icon fas fa-envelope"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>
        <div class="error error-txt">Email can't be blank</div>
      </div>
      <div class="field password">
        <div class="input-area">
          <input type="password" name="upass" placeholder="Password">
          <i class="icon fas fa-lock"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>
        <div class="error error-txt">Password can't be blank</div>
      </div>
      
      <div class="field password">
        <div class="input-area">
          <input type="password" name="reupass" placeholder="Password">
          <i class="icon fas fa-lock"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>
        <div class="error error-txt">Confirm Password can't be blank</div>
      </div>
      <div class="field mobile">
        <div class="input-area">
          <input type="text" name="ucontact" placeholder="Mobile">
          <i class="icon fas fa-envelope"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>
        <div class="error error-txt">Mobile Number can't be blank</div>
      </div>
      <input type="submit" value="Register" >
    </form>
    <div class="sign-txt"><a href="citizen_login.jsp">Login</a></div>
  </div>


  <script src="script.js"></script>


</body>
</html>
 