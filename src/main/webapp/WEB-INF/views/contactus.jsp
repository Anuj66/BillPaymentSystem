<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Contact Us</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	box-sizing: border-box;
	font-family: "Roboto", sans-serif
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
<body
	background="https://securionpay.com/wp-content/uploads/2016/09/Everything-You-Have-to-Know-About-Payment-Security.svg">
<jsp:include page="header2.jsp" />
	<br>
	<br>
	<br>
	<br>



	<div class="row">
	
		<div class="column">

			<div class="card" style="background-color: #aaa;">
				<img
					src="https://avatars2.githubusercontent.com/u/35145472?s=460&v=4"
					alt="John" style="width: 100%" height=230px>
				<h1>Abhijeet J Patil</h1>
			
				<div style="margin: 24px 0;">
					<a href="#"><i class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-linkedin"></i></a> 
						<a href="https://www.facebook.com/ThisAbhijeet">
						<i class="fa fa-facebook"></i>
						</a>
				</div>
				<p>
					<button>abhijeetpatil.official@gmail.com</button>
				</p>
			</div>

		</div>
	
	<div class="column">

			<div class="card" style="background-color: #aaa;">
				<img
					src="https://avatars3.githubusercontent.com/u/47737640?s=400&u=a2ecf160e167036417c78ed8c268cc673b05f4c6&v=4"
					alt="John" style="width: 100%" height=230px>
				<h1>Anuj Saraogi</h1>
				
				<div style="margin: 24px 0;">
					<a href="#"><i class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-linkedin"></i></a> 
						<a href="https://www.facebook.com/anuj.saraogi.9">
							<i class="fa fa-facebook"></i>
						</a>
				</div>
				<p>
					<button>saraogi.anuj9@gmail.com</button>
				</p>
			</div>

		</div>
	
		
	
		<div class="column">

			<div class="card" style="background-color: #aaa;">
				<img
					src="https://chiraggupta21.github.io/images/profilepic.jpg"
					alt="John" style="width: 100%" height=230px>
				<h1>Chirag Gupta</h1>
				<div style="margin: 24px 0;">
					<a href="#"><i class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-linkedin"></i></a> <a href="#"><i
						class="fa fa-facebook"></i></a>
				</div>
				<p>
					<button>guptachirag1234@gmail.com</button>
				</p>
			</div>

		</div>

		<div class="column">

			<div class="card" style="background-color: #aaa;">
				<img
					src="https://saur1234.github.io/images/profile-pic.png"
					alt="John" style="width: 100%" height=230px>
				<h1>Saurabh Kumar</h1>
				
				<div style="margin: 24px 0;">
					<a href="#"><i class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href=""><i
						class="fa fa-linkedin"></i></a> <a href="https://www.facebook.com/saurabh344">
						<i class="fa fa-facebook"></i></a>
				</div>
				<p>
					<button>saurabhsngh344@gmail.com</button>
				</p>
			</div>

		</div>
		
		<div class="column">

			<div class="card" style="background-color: #aaa;">
				<img
					src="https://vansh3.github.io/img/profile.jpg"
					alt="John" style="width: 100%" height=230px>
				<h1>Vansh Madan</h1>
				
				<div style="margin: 24px 0;">
					<a href="#"><i class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-linkedin"></i></a> 
						<a href="https://www.facebook.com/madan.vansh">
						<i class="fa fa-facebook"></i>
						</a>
				</div>
				<p>
					<button>madan.vansh96@gmail.com</button>
				</p>
			</div>


		</div>
		
	</div>


</body>
</html>
