<%@page import="com.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/Customer.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
</head>
<body>
	<h1 class="text-light text-center mt-5">Customer Management</h1>
	<div class="container ">
	<div class="jumbotron mt-5">
		<h1 class="text-secondary text-center">Registration Form</h1>
				<form id="formItem" name="formItem">
				<div class="form-group col-md-6">	
					<label>NIC</label>						
  					<input id="nic" name="nic" type="text" class="form-control" placeholder="Insert NIC Here">
				</div>
				
				<div class="form-group col-md-6">	
					<label>Customer Name</label>						
  					<input id="name" name="name" type="text" class="form-control" placeholder="Insert Name Here">
				</div>
				
				<div class="form-group col-md-6">
					<label>Address</label>							
  					<input id="address" name="address" type="text" class="form-control" placeholder="Insert Address Here">
				</div>
				
				<div class="form-group col-md-6">		
					<label>Phone Number</label>						
  					<input id="phone" name="phone" type="number"  class="form-control" placeholder="Insert Phone Here">
				</div>
				
				<div class="form-group col-md-6">			
					<label>Gender</label>				
  					<input id="gender" name="gender" type="text" class="form-control"  placeholder="Insert Gender  Here">
				</div>
				
				<div class="form-group col-md-6">		
					<label>Age</label>					
  					<input id="age" name="age" type="number" class="form-control" placeholder="Insert Age Here">
				</div>
				
				<div class="form-group col-md-6">		
					<label>Email</label>					
  					<input id="email" name="email" type="email" class="form-control" placeholder="Insert Email Here">
				</div>
				
				<div class="text-center mt-2"> 
					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary" style="width:30%; height:50px;"> 
					<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">	
					</div>
				</form>
				<div id="alertSuccess" class="alert alert-success mt-5"></div>
				<div id="alertError" class="alert alert-danger mt-5"></div>
			</div>
			<h1 class="text-light text-center mt-5">Customer List</h1>
						<div id="divItemsGrid" class="float-right col-12  mt-5 text-white text-center">
					<%
					Customer CustomerAPIObj = new Customer();
														out.print(CustomerAPIObj.readCustomer());
					%>
			</div>
			</div>	
</body>
<style>
	body{
			background: rgb(2,0,36);
			background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
		}
</style>
</html>