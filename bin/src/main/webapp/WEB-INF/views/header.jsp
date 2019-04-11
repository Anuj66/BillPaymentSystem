<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

 <style type="text/css">
  a.button {
    background-color: #e7e7e7; color: black;
    font-size: 12px;
    border-radius: 12px;
    appearance: button;
    background-color: #e7e7e7; color: black;
    padding: 10px 24px;
    box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24), 0 8px 25px 0 rgba(0,0,0,0.19);
    float: Right; 
      
}
a.btn{
	background-color: #A6A4A1; color: black;
	appearance: button;
	
	padding: 18px,24px;
	box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24), 0 8px 25px 0 rgba(0,0,0,0.19);
	float: Right;
	}
  </style>

<div style="padding:10px;width:100%;background-color:#f2f2f2;height:5.5em;border-radius:10px;">
<table style="width:100%;">
<tr>

<td><a href="back"><img src="https://as1.ftcdn.net/jpg/01/57/31/10/500_F_157311014_uHd4gDrOBVZ6bJfNx8kA5ommJUxukyvU.jpg" height="40" width="40"></a></td>

<td><h3 style="width:100%;">Bill Payment System</h3></td>

<td><h3>Welcome , ${pageContext.request.userPrincipal.name}</h3></td>
<td><a href="/BillingSystem/help" style="color: black; text-indent: 25px;">Contact Us <img src="https://cdn3.iconfinder.com/data/icons/ui-icon-part-2/128/notification-512.png" height="30" width="30"></a></td>


<td><a href="logout" class="btn" align="right" role="button">Logout</a></td>


</tr>
</table>
</div>

