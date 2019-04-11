<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Poppins" >

<!------ Include the above in your HEAD tag ---------->

<html lang='en' class=''>
<head>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
/* ~~~~~~~ INIT. BTN ~~~~~~~ */

.btn {		
	position: relative;	
	padding: 1.4rem 4.2rem;
	padding-right: 3.1rem;
	font-size: 1.4rem; 
	color: var(--inv);
	letter-spacing: 1.1rem;
	text-transform: uppercase;
	transition: all 600ms cubic-bezier(0.77, 0, 0.175, 1);	
	user-select: none;
}
.btn:before, .btn:after {
	content: '';
	position: absolute;	
	transition: inherit;
	z-index: -1;
}

.btn:hover {
	color: var(--def);
	transition-delay: .6s;
}

.btn:hover:before {
	transition-delay: 0s;
}

.btn:hover:after {
	background: var(--inv);
	transition-delay: .4s;
}

/* From Top */

.from-top:before, 
.from-top:after {
	left: 0;
	height: 0;
	width: 100%;
}

.from-top:before {
	bottom: 0;	
	border: 1px solid var(--inv);
	border-top: 0;
	border-bottom: 0;
}

.from-top:after {
	top: 0;
	height: 0;
}

.from-top:hover:before,
.from-top:hover:after {
	height: 100%;
}

/* From Left */

.from-left:before, 
.from-left:after {
	top: 0;
	width: 0;
	height: 100%;
}

.from-left:before {
	right: 0;
	border: 1px solid var(--inv);
	border-left: 0;
	border-right: 0;	
}

.from-left:after {
	left: 0;
}

.from-left:hover:before,
.from-left:hover:after {
	width: 100%;
}

/* From Right */

.from-right:before, 
.from-right:after {
	top: 0;
	width: 0;
	height: 100%;
}

.from-right:before {
	left: 0;
	border: 1px solid var(--inv);
	border-left: 0;
	border-right: 0;	
}

.from-right:after {
	right: 0;
}

.from-right:hover:before,
.from-right:hover:after {
	width: 100%;
}

/* From Middle */

.from-middle:before {
	top: 0;
	left: 50%;
	height: 100%;
	width: 0;
	border: 1px solid var(--inv);
	border-left: 0;
	border-right: 0;
}

.from-middle:after {
	bottom: 0;
	left: 0;
	height: 0;
	width: 100%;
	background: var(--inv);
}

.from-middle:hover:before {
	left: 0;
	width: 100%;
}

.from-middle:hover:after {
	top: 0;
	height: 100%;
}

/* From Bottom */

.from-bottom:before, 
.from-bottom:after {
	left: 0;
	height: 0;
	width: 100%;
}

.from-bottom:before {
	top: 0;	
	border: 1px solid var(--inv);
	border-top: 0;
	border-bottom: 0;
}

.from-bottom:after {
	bottom: 0;
	height: 0;
}

.from-bottom:hover:before,
.from-bottom:hover:after {
	height: 100%;
}


/* ~~~~~~~~~~~~ GLOBAL SETTINGS ~~~~~~~~~~~~ */

*, *:before, *:after {
	box-sizing: border-box;
}

body {
	--def: #96B7C4; 	
	--inv: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	height: 100;
	width: 100%;
	background-image: linear-gradient(-25deg, #616161 0%, #96B7C4 100%);
}

 html { 
	font-size: 12px; 
	font-family: 'Playfair Display', serif; 
 } 

div {margin-bottom: 3rem;}
div:last-child {margin-bottom: 0;}

a {
    
  color: none;

  position: relative;
  text-decoration: none;
  text-transform: uppercase;
}
a:hover {
 
  cursor: pointer;
}

a:active {
  box-shadow: none;
  top: 5px;
}

</style>







<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />
	<c:set value="${pageContext.request.queryString}" var="alert"></c:set>

	<c:if test="${alert == 'success'}">
		<script type="text/javascript">
	alert("Vendor Registration Successfull");
	</script>
	</c:if>
	
	<div class="w3-content w3-margin-top" style="max-width: 1400px;">

		<!-- The Grid -->
		<div class="w3-row-padding">

			<!-- Left Column -->
			<div class="w3-third">

				  <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
        <center>
          	<img src="data:image/png;base64,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" style="width:60%" alt="Avatar">
          </center>
          <br><br>
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2>${user.firstName} ${user.lastName}</h2>
          </div>
        </div>
        <div class="w3-container">
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>${user.aadhar}</p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${user.emailId}</p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${user.contactNo}</p>
     <!-- <center><a href="/BillingSystem/user/showUserUpdateForm"><button type="button" class="btn btn-warning">Update Details</button></a></center> -->
          
       
          <br>
         </div>
         </div>
		</div>
			<div class="w3-twothird">

<form modelAttribute="users">
<a href="/BillingSystem/user/userList"><div class="btn from-top">User Details</div></a>
<a href="/BillingSystem/vendor/showVendorForm"><div class="btn from-left">Vendor Registration</div></a>
<a href="/BillingSystem/vendor/vendorList"><div class="btn from-right">Vendor Details</div></a>
<a href="/BillingSystem/paidBills"><div class="btn from-middle">All Transactions</div></a>



<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	</div>
	</div>
	</div>
</body>
</html>