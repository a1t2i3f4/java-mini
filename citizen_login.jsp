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

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>"> 

<form action="<%= request.getContextPath() %>//login" method="post">

Enter your Email <input type="email" name="uemail"><br>
Enter your Password <input type="password" name="upass"><br>
<input type="submit" value="Login">

</form>

<p><a href='citizen_registration.jsp'>Not a member ? Create Account</a></body>

 -->
 
 
 
 <!DOCTYPE html
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="../css/loginstyle.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<script src="../js/login.js"></script>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>"> 

  <div class="wrapper">
    <header>Login</header>
<form action="<%= request.getContextPath() %>//login" name="RegForm" onsubmit="return Validation()" method="post">
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
      <div class="pass-txt"><a href="#">Forgot password?</a></div>
      <input type="submit" value="Login">
    </form>
    <div class="sign-txt">Not yet member? <a href="citizen_registration.jsp">Signup now</a></div>
  </div>


  <script src="script.js"></script>


</body>
</html>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

<!-- JS --> 


<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel ="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">

var status = document.getElementById("status").value;
if(status == "failed") {
	swal("Sorry", "Wrong Email or Password", "error");
}


</script>









</body>
</html>