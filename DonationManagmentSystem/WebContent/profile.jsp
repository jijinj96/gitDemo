<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
	if(session.getAttribute("email") == null){
		request.getRequestDispatcher("login.jsp").forward(request,response);
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> fr agnel trust | donation </title>
		<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<link rel="stylesheet" type="text/css" href="css/design.css">
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style>
		
		

.sub-head{
font-size: large
}
	.value{
	font-size: small
	}	
		
	</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
	<div class="container-fluid-full-width "  >
		<nav class="navbar navbar-default navbar-fixed-top"  >
			
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span> 
			  </button>
			  <a class="navbar-brand" href="index.html#myPage">
			<img src="img/a.jpg" class="img-circle"  height="80">
				</img>
				
			  </a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
			  <ul class="nav navbar-nav" >
				<li class="dropdown"  >
					<a class="dropdown-toggle" data-toggle="dropdown" href="index.html#campus">Campuses
					<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Mumbai</a></li>
						<li><a href="#">Goa</a></li>
						<li><a href="#">Kerala</a></li> 
					</ul>
				</li>
				<li ><a href="index.html#mission">Mission</a></li>
				<li><a href="index.html#aboutus">about us</a></li> 
				
				
				<li><a href="index.html#contact">contact us</a></li> 
			  </ul>
			  <ul class="nav navbar-nav navbar-right">
			  <li>
					<a onclick="location.href='<%=request.getContextPath() %>/Controller?action=donate'" >
						Donation
					</a>
				</li>
				<li>
					<a onclick="location.href='<%=request.getContextPath() %>/Controller?action=transaction'" >
						Transactions
					</a>
				</li>
				<li>
					<a onclick="location.href='<%=request.getContextPath() %>/Controller?action=profile'" >
						Profile
					</a>
				</li>
				<li><a onclick="location.href='<%=request.getContextPath() %>/Controller?action=logout'" > Logout</a></li>
			  </ul>
			</div>
  
		</nav>
	</div>

	<div class="container-fluid-full-width " style="margin-top:100px">
		<div class="panel panel-default">
		
  <div class="panel-heading"><h1><center><%=session.getAttribute("fname") %>&nbsp;<%=session.getAttribute("lname") %><center></h1>	 </div>
    <div class="panel-body">

<div class="container">
<DIV align="right"><a href="<%=request.getContextPath() %>/Controller?action=edit-profile" class="btn btn-info"  role="button"><span class="glyphicon glyphicon-pencil">Edit</span></a></DIV>
 <div class="row">
    <div class="col-sm-6">
	</br>
     <span class="sub-head">Email:</span>
		</br>
	<span class="val">	<%=session.getAttribute("email") %></span>
	</div>
	<div class="col-sm-6">
	</br>
     <span class="sub-head">Date of Birth</span>
		</br>
	<span class="val"><%=session.getAttribute("dob") %></span>
	</div>
	</div>
	 <div class="row">
    <div class="col-sm-6">
	</br>
     <span class="sub-head">Gender:</span>
		</br>
	<span class="val"><%=session.getAttribute("gender") %></span>
	</div>
	<div class="col-sm-6">
	</br>
     <span class="sub-head">User Type:</span>
		</br>
	<span class="val">Primary</span>
	</div>
	</div>
	 <div class="row">
    <div class="col-sm-6">
	</br>
     <span class="sub-head">Address:</span>
		</br>
	<span class="val"><%=session.getAttribute("address") %></span>
	</div>
	<div class="col-sm-6">
	</br>
     <span class="sub-head">No.of donations made</span>
		</br>
	<span class="val">5</span>
	</div>
	</div>
	 <div class="row">
    <div class="col-sm-6">
	</br>
     <span class="sub-head">Proof of identity:</span>
		</br>
	<span class="val">	<%=session.getAttribute("identification") %></span>
	</div>
	<div class="col-sm-6">
	</br>
	
     <span class="sub-head">Country</span>
		</br>
	<span class="val"><%=session.getAttribute("country") %> </span>
	
	
	</div>
	</div>
		</div>
		</div>
		</div>
		</div>
		
		
		</body>

</html>