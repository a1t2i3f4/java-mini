<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

 * {
            margin: 0;
            padding: 0;
        }
 

 .navbar {
            display: flex;
            align-items: center;
            justify-content: center;
            position: sticky;
            top: 0;
            cursor: pointer;
            margin-top:-107px;
        }
        
         .background {
            background: darkblue;
            background-blend-mode: darken;
            background-size: cover;
        }
 
        .nav-list {
            width: 70%;
            display: flex;
            align-items: center;
        }
 
  .nav-list li {
            list-style: none;
            padding: 26px 30px;
        }
 
        .nav-list li a {
            text-decoration: none;
            color: white;
        }
 
        .nav-list li a:hover {
            color: grey;
        }
 
        .rightnav {
            width: 30%;
            text-align: right;
        }
        
        
        
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');

body{
  font-family: 'Poppins', sans-serif;
  background: #7cd1f9;
}
.udata-btn{
    padding: 10px 20px;
    font-size: 20px;
    font-weight: 500;
    color: white;
    cursor: pointer;
    background: rgba(255, 255, 255, 0.25);
}

.udata-btn{
    position: absolute;
    top: 45%;
    left: 30%;
    transform: translate(-50%, -50%);
}
.ucomplaint-btn{
    padding: 10px 20px;
    font-size: 20px;
    font-weight: 500;
    color: white;
    cursor: pointer;
    background: rgba(255, 255, 255, 0.25);
}

.ucomplaint-btn{
    position: absolute;
    top: 45%;
    left: 30%;
    transform: translate(-50%, -50%);
}
.ustatus-btn{
    padding: 10px 20px;
    font-size: 20px;
    font-weight: 500;
    color: white;
    cursor: pointer;
    background: rgba(255, 255, 255, 0.25);
}

.ustatus-btn{
    position: absolute;
    top: 45%;
    left: 30%;
    transform: translate(-50%, -50%);
}



input[type="checkbox"]{
    display: none;
}

#udata:checked ~ .profile{
    display: block;
}

.profile{
    display: none;
    width: 350px;
    padding: 20px;
    border-radius: 4px;
    background: rgba(255, 255, 255, 0.25);
    border: 1px solid rgba(255, 255, 255, 0.18);

}
.profile{
    position: absolute;
    top: 388%;
    left: 50%;
    transform: translate(-50%, -50%)
}
.profile .close-btn{
    position: absolute;
    right: 20px;
    top: 15px;
    font-size: 25px;
    cursor: pointer;
}


#ucomplaint:checked ~ .complaint{
    display: block;
}

.complaint{
    display: none;
    width: 350px;
    padding: 20px;
    border-radius: 4px;
    background: rgba(255, 255, 255, 0.25);
    border: 1px solid rgba(255, 255, 255, 0.18);

}
.complaint{
    position: absolute;
    top: 388%;
    left: 50%;
    transform: translate(-50%, -50%)
}
.complaint .close-btn{
    position: absolute;
    right: 20px;
    top: 15px;
    font-size: 25px;
    cursor: pointer;
}

#ustatus:checked ~ .status{
    display: block;
}

.status{
    display: none;
    width: 350px;
    padding: 20px;
    border-radius: 4px;
    background: rgba(255, 255, 255, 0.25);
    border: 1px solid rgba(255, 255, 255, 0.18);

}
.status{
    position: absolute;
    top: 388%;
    left: 50%;
    transform: translate(-50%, -50%)
}
.status .close-btn{
    position: absolute;
    right: 20px;
    top: 15px;
    font-size: 25px;
    cursor: pointer;
}


.close-btn:hover{
    color: red;
}

h1{
    text-align: center;
    color: white;
    text-transform: uppercase;
}

form{
    margin: 20px;
}
label{
    display: block;
    color: white;
    font-size: 18px;
    margin-top: 10px;
}

input{
    display: block;
    width: 90%;
    background: transparent;
    border: none;
    outline: none;
    border-bottom: 1px solid white;
    padding: 10px;
    color: white;
}

button{
    display: block;
    width: 95%;
    padding: 8px;
    border: none;
    outline: none;
    background: linear-gradient(to right, #cbb4d4, 
    #20002c);
    color: white;
    font-size: 18px;
    cursor: pointer;
    margin-top: 20px;

}

a{
    text-decoration: none;
    color: #20002c;

}

.link{
    margin-top: 30px;
    text-align: center;
    color:white;
}

a:hover{
    text-decoration: underline;
}

textarea {
   resize: none;
}
        
 


</style>


<body>
 

        <marquee width="100%" direction="left" height="150px" style="padding:0px; margin-top:20px;" >
<h1>Welcome to Pune Water Department</h1>
</marquee>


<nav class="navbar background">
        <ul class="nav-list">
        
          <input type="checkbox" id="udata">
            
    <li><label for="udata">Profile</label></li>
    
    <div class="profile">
        <label for="udata" class="close-btn" title="close"></label>
        
        <form action="<%= request.getContextPath() %>/pdata" method="get">
        <label>Enter your name for verification purpose</label>
        <input type="text" name="uname">
        <button type="submit" value="Submit">Submit</button>          
        </form>
    </div>
    
            <div>
         <form action="../views/SolidWaste_dept_complaints.jsp" method="get"> 
            <li><button type="submit" style="background: darkblue;">View Complaints</button></li>
            </form>
            
            </div>
    <div class="complaint">
            </div>
            
            
            
            
             
              <input type="checkbox" id="ustatus">
    
            <li><label for="ustatus">View Status</label></li>
            
    

    <div class="status">
        <label for="ustatus" class="close-btn" title="close">×</label>
        <form action="#">
            <label>Your Status</label>
             <input type="text">
            
               
        </form>
    </div>
            
            <li><a href="#info">Logout</a></li>
            
            
            
        </ul>
 
        
    </nav>
 
  
 
 
 
 
 

</body>
</html>