
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/BillingSystem/src/main/webapp/resources/css/registeration.css" rel="stylesheet" id="bootcss">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
.form-control:focus{border-color: #7a7a7a;  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3); -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);;} 
.has-error .form-control:focus{box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3); -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);} 


/* STRUCTURE */

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: auto;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}



/* TABS */

h2.inactive {
  color: #e7e7e7;
}

h2.active {
  color: #e7e7e7;
  border-bottom: 2px solid #e7e7e7;
}



/* FORM TYPOGRAPHY*/





/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s;
  -moz-animation-delay: 0.4s;
  animation-delay: 0.4s;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s;
  -moz-animation-delay: 0.6s;
  animation-delay: 0.6s;
  color: #686868;
    
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s;
  -moz-animation-delay: 0.8s;
  animation-delay: 0.8s;
  color: #686868;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s;
  -moz-animation-delay: 1s;
  animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block;
  left: 0;
  bottom: -10px;
  width: 0;
  height: 2px;
  background-color: #e7e7e7; color: black;
  content: "";
  transition: width 0.2s;
}

.underlineHover:hover {
  color: #e7e7e7; color: black;
}

.underlineHover:hover:after{
  width: 100%;
}



/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
  width:60%;
}

* {
  box-sizing: border-box;
}



.register{
    background: -webkit-linear-gradient(left, #7a7a7a, #e7e7e7);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #7a7a7a;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.btnRegister2{
   
  
    border: none;
    border-radius: 1.5rem;
    padding: 1%;
    background: #7a7a7a;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #7a7a7a;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #7a7a7a;
    border: 2px solid #7a7a7a;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}

	
</style>
</head>
<body>
<script>
function validateFirstName(){
	var x,text;
	x = document.getElementById("firstName").value;
	var letters = /^[A-Za-z]+$/;
	if(x.match(letters)){
	document.getElementById("validfirstName").innerHTML = "";
	}else{
		text = "Should contain only alphabets";
		document.getElementById("validfirstName").innerHTML=text;
		}
	}
	
function validateLastName(){
	var x,text;
	x = document.getElementById("lastName").value;
	var letters = /^[A-Za-z]+$/;
	if(x.match(letters)){
	document.getElementById("validLastName").innerHTML = "";
	}else{
		text = "Should contain only alphabets";
		document.getElementById("validLastName").innerHTML=text;
		}
	}
	
function validateAadhar(){
	var x,text;
	x = document.getElementById("aadhar").value;
	
	if(isNaN(x) || x.length!=12){
	text = "Should be 12 digit number";
	document.getElementById("validAadhar").innerHTML = text;
	}else{
		document.getElementById("validAadhar").innerHTML="";
		}
	}
	
function validateAge(){
	var x,text;
	x = document.getElementById("age").value;
	
	if(isNaN(x) || (x.length>0 && x.length<=100)){
	text = "Should be numerical value";
	document.getElementById("validAge").innerHTML = text;
	}else{
		document.getElementById("validAge").innerHTML="";
		}
	}
	
function validateEmailId(){
	var x,text,check;
	x = document.getElementById("emailId").value;
	check="false";
	if(x.match('@'))
	check="true";
	
	if(check.match("false")){
	text = "Should be valid email address";
	document.getElementById("validEmailId").innerHTML = text;
	}else{
		document.getElementById("validEmailId").innerHTML="";
		}
	}
	
function validatePan(){
	var x,text;
	x = document.getElementById("pan").value;
	
	if(x.length!=10){
	text = "Should be 10 character string";
	document.getElementById("validPan").innerHTML = text;
	}else{
		document.getElementById("validPan").innerHTML="";
		}
	}
	

function validateContactNo(){
	var x,text;
	x = document.getElementById("contactNo").value;
	
	if(isNaN(x) || x.length<10){
	text = "Should be 10 digit number";
	document.getElementById("validContactNo").innerHTML = text;
	}else{
		document.getElementById("validContactNo").innerHTML="";
		}
	}
</script>

<!------ Include the above in your HEAD tag ---------->

<div class="wrapper fadeInDown">
 <div id="formContent">
  <form action="registerUser" method="post" modelAttribute="user" modelAttribute="userRole" class="register">
 
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>You are 30 seconds away from registering your details!</p>
                      
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li >
                               
                            </li>
                            <li >
                                <input type="reset" class="nav-link active" id="reg" value="Reset"/>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Resister as a User</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">                                         
                                            <input id="firstName" name="firstName" type="text" maxlength="50" class="form-control" placeholder="First Name *" onkeyup="validateFirstName()" required/>
                                       		<label id="validfirstName" name="validfirstName" type="text" maxlength="50" > </label>
                                        </div>
                                        <div class="form-group">
                                              <input  id="aadhar"name="aadhar" type="text" maxlength="15" class="form-control" placeholder=" Aadhar Number " onkeyup="validateAadhar()" required/>
                                              <label id="validAadhar" name="validAadhar" type="text" maxlength="50" > </label>
                                        </div>
                                        <div class="form-group">
                        
                                                <input id="age" name="age"  type="text" maxlength="2" class="form-control" onkeyup="validateAge()" placeholder=" Age" required/>
                                        		 <label id="validAge" name="validAge" type="text"  > </label>
                                        </div>
                                        <div class="form-group">
                                           <input id="contactNo" name ="contactNo" type="text" class="form-control" onkeyup="validateContactNo()" maxlength="10" placeholder="Contact Number" />
                                        	 <label id="validContactNo" name="validContactNo" type="text" > </label>
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                           					<input id="lastName" name="lastName" type="text" maxlength="50" class="form-control" onkeyup="validateLastName()" placeholder="Last Name *" required/>
                                           <label id="validLastName" name="validLastName" type="text" > </label>
                                        </div>
                                        <div class="form-group">
                                            
                                            <input id="pan" name="pan"  type="text" maxlength="15" class="form-control" onkeyup="validatePan()" placeholder=" PAN Number " required/>
                                            <label id="validPan" name="validPan" type="text"  > </label>
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" name="gender" required>
                                                <option class="hidden"  selected disabled>Gender</option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                
                                            </select>
                                        </div>
                                       
                                        <div class="form-group">
                                        <input name="username"  type="text" maxlength="15" class="form-control" placeholder=" User ID " required/>
                                       
                                       
                                        </div>
                                        
                                        <div class="form-group">
                                        <input id="emailId" name="emailId" onkeyup="validateEmailId()" type="email"  maxlength="30" class="form-control" placeholder="Email Id" required/>
                                           <label id="validEmailId" name="validEmailId" type="text"  > </label>
                                         </div>
                                         
                                         <div class="form-group">
                                                        <input name="password" type="password" class="form-control"  placeholder="Password *" value="" />
										 </div>
                                       
                                     <input name="role" type="hidden" value="ROLE_USER" required/>
                                       
                                        <input type="submit" class="btnRegister" value="Register" required/>
                                       
                  						
                                    </div>
                                    
                                </div>
                            </div>
                              </div>
                                </div>
                            </div>
</div>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
 </form>
</div>
</div>
                         
</body>
</html>