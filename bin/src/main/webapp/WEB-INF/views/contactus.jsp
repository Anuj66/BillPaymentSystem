<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

* {
  box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
	
  float: left;
  width: 20.00%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  text-align: center;
  font-family: arial;

}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>
</head>
<body background="https://images.pexels.com/photos/1020320/pexels-photo-1020320.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">

<h1 style="text-align:center">Developer Profile</h1>



<div class="row" >
  <div class="column" >
  
<div class="card" style="background-color:#aaa;">
  <img src="https://www.bitdegree.org/tutorials/wp-content/uploads/2018/08/what-is-a-web-developer.jpg" alt="John" style="width:100%">
  <h1>Vansh Madan </h1>
  <p class="title">Back-end Developer</p>
  <p>Jaypee University Of Engineering and Technology</p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button>Email  vanshmadan@gmail.com</button></p>
</div>

    
  </div>
  <div class="column"  >
    
<div class="card" style="background-color:#aaa;">
  <img src="https://www.bitdegree.org/tutorials/wp-content/uploads/2018/08/what-is-a-web-developer.jpg" alt="John" style="width:100%">
  <h1>Anuj Sarogi</h1>
  <p class="title">CEO & Founder, Example</p>
  <p>Jaypee University Of Engineering and Technology</p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button>Email  vanshmadan@gmail.com</button></p>
</div>

  </div>
  <div class="column" >
   
<div class="card" style="background-color:#aaa;">
  <img src="https://www.bitdegree.org/tutorials/wp-content/uploads/2018/08/what-is-a-web-developer.jpg" alt="John" style="width:100%">
  <h1>John Doe</h1>
  <p class="title">CEO & Founder, Example</p>
  <p>Jaypee University Of Engineering and Technology</p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button>Email  vanshmadan@gmail.com</button></p>
</div>

  </div>
   <div class="column">
   
<div class="card" style="background-color:#aaa;">
  <img src="https://www.bitdegree.org/tutorials/wp-content/uploads/2018/08/what-is-a-web-developer.jpg" alt="John" style="width:100%">
  <h1>John Doe</h1>
  <p class="title">CEO & Founder, Example</p>
  <p>Jaypee University Of Engineering and Technology</p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button>Email  vanshmadan@gmail.com</button></p>
</div>

  </div>
  
  <div class="column" >
    
<div class="card" style="background-color:#aaa;">
  <img src="https://www.bitdegree.org/tutorials/wp-content/uploads/2018/08/what-is-a-web-developer.jpg" alt="John" style="width:100%">
  <h1>John Doe</h1>
  <p class="title">CEO & Founder, Example</p>
  <p>Jaypee University Of Engineering and Technology</p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button>Email  vanshmadan@gmail.com</button></p>
</div>

  </div>
</div>


</body>
</html>
