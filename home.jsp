<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
 
        .logo {
            display: flex;
            justify-content: center;
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
 
        #search {
            padding: 5px;
            font-size: 17px;
            border: 2px solid grey;
            border-radius: 9px;
        }
 
      
       
        .box-main {
            display: flex;
            justify-content: center;
            align-items: center;
            color: black;
            max-width: 80%;
            margin: auto;
            height: 80%;
        }
 
        .firsthalf {
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
 
      
        .text-big {
            font-family: 'Piazzolla', serif;
            font-weight: bold;
            font-size: 35px;
        }
 
        .text-small {
            font-size: 18px;
        }
 
        .btn {
            padding: 8px 20px;
            margin: 7px 0;
            border: 2px solid white;
            border-radius: 8px;
            background: none;
            color: white;
            cursor: pointer;
        }
 
        .btn-sm {
            padding: 6px 10px;
            vertical-align: middle;
        }
 
       
 
       
        .paras {
            padding: 0px 65px;
        }
 
      
        .center {
            text-align: center;
        }
 
        .text-footer {
            text-align: center;
            padding: 25px 0;
            font-family: 'Ubuntu', sans-serif;
            display: flex;
            justify-content: center;
            color: white;
        }
        
        
        * {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}


/* Slideshow container */
.slideshow-container {
  max-width: 400px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
             
</style>

<body>

<nav class="navbar background">
        <ul class="nav-list">
            
            <li><a href="city">The City</a></li>
            <li><a href="departments.jsp">Departments</a></li>

            
            <li><a href="citizen_login.jsp">Citizens</a></li>
            <li><a href="#info">Information</a></li>
            <li><a href="#contacts">Contacts</a></li>
            <li><a href="citizen_login.jsp">Admin</a></li>
            
            
            
        </ul>
 
        <div class="rightNav">
            <input type="text" name="search" id="search">
            <button class="btn btn-sm">Search</button>
        </div>
    </nav>
    
    
    
    
        
 
    <section class="firstsection">
        

<div class="mySlides fade" style="display: block;">
  
  <img src="../images/ist_image.jfif" style="width:1350px; height:294px;">
  
</div>

<div class="mySlides fade" style="display: none;">
  <img src="../images/second_image.jfif" style="width:1350px; height:294px;">
</div>

<div class="mySlides fade" style="display: none;">
  <img src="../images/third_image.jfif" style="width:1350px; height:294px;">
</div>


<br>

<div style="text-align:center">
  <span class="dot active"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
</section>

    <section class="secondsection">
        <div class="box-main">
          <img src="https://www.researchgate.net/profile/Sulochana-Shekhar/publication/278032420/figure/tbl1/AS:645342865403904@1530873137804/Pune-Population-Ward-Wise.png" style="width:600px;height:400px; margin-left:750px; margin-bottom:-40px;">
        </div>
            
    <!-- Adding a List on a page -->
    <div class="w3-container" style="margin-left:-1px; margin-top:-255px;">
    
        <!-- List -->
        <ul class="w3-ul"> 
            <!-- List Content -->
            <li><a href="#">PROFESSIONAL TAXES</a></li> 
            <li><a href="#">PROPERTY TAXES</a></li> 
            <li><a href="#">BIRTH AND DEATH RATES</a></li>
            <li><a href="#">HEALTH</a></li> 
            <li><a href="#">MARRIAGE REGISTRATION</a></li> 
            <li><a href="#">WATER TAXES</a></li> 
                
        </ul>
    </div>
        
        
    </section>
 
    <section class="section">
    <div>
        <marquee width="100%" direction="left" height="150px" style="padding:144px;" >
<h2>Welcome to Pune Municipal Corporation</h2>
</marquee>
</div>
    
</section>
 
    <footer class="background">
        <p class="text-footer" style="margin:-83px; ">
            Copyright ©-All rights are reserved
        </p>
    </footer>
    
    
    
    <script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>

</body>
</html>