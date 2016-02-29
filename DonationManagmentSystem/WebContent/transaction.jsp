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
		.transaction-height{
			height:30px
			}
		#content-wrapper{
			margin-left:220px;
			margin-top:20px
			}
		.side-bar{
			background-color:blue;
			position:absolute;
			margin-top:20px;
			left: 20px;
			height:100%;
			width:190px
			}
	
		.padding1{
			padding :20px 20px 20px 20px
			}
		.top-margin{
			margin-top:25px
			}
		
		
		
		.transaction-details{
			display:inline
			}
		.navbar-elements-padding{
			padding-left:20px;
			
			}

		
		
	</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="60">
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
	<div class="container-fluid-full-width offset1 text-center">
	
		<p class="padding1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed dictum risus. Aliquam lacus nunc, luctus id ante at, eleifend malesuada velit. Cras eget felis a enim consequat dapibus. Pellentesque a nulla id nulla lobortis molestie eu scelerisque ex. Praesent sollicitudin nisi eu libero mollis tempor. Pellentesque euismod maximus purus, sit amet sodales sapien interdum sit amet. Aenean nec lacus et erat eleifend dignissim. Nam in vehicula neque. Cras lobortis cursus odio, eget commodo dui viverra ut. Donec tempus, ligula id posuere ultricies, mi est malesuada est, eget ullamcorper risus eros ac neque. Sed nisi ipsum, tempus et ligula sit amet, volutpat faucibus augue. Curabitur vitae suscipit elit. Suspendisse id eros vulputate, porttitor lorem quis, congue dui.

							Donec dictum libero nec felis malesuada, at aliquet quam molestie.</p>
		<button type="button" class="btn btn-success" onclick="location.href='donate-1.html'">
			Start a transaction
		</button>
		
		
	</div>
	<div class="container-fluid-full-width side-bar" data-spy="affix" data-offset-top="2" >
		<p>hello</p>
	</div>
	<div id="content-wrapper">
		<div class="container-fluid">
			
				
				<div class="panel panel-default">
					<div class="panel-heading">
					  <h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse5" >
							<div class="row">
								<div class="col-sm-4">
									<p class="transaction-details">Transaction id </p>
									<p class="transaction-details"> 24115121</p>
								</div>
								<div class="col-sm-4">
									<p class="transaction-details">Amount</p>
									<p class="transaction-details">2152</p>
								</div>
								<div class="col-sm-4">
									<p class="transaction-details">date</p>
									<date class="transaction-details"> 29/7/1995 </date>
								</div>
							</div>
							<div class="row" >
								<div class="col-sm-12">
								
									<span class="glyphicon glyphicon-chevron-down" style="float:right;right:20px" > </span>
								</div>
						
							</div>
						</a>
					  </h4>
					</div>
					<div id="collapse5" class="panel-collapse collapse">
					  <div class="panel-body">Panel Body</div>
					  <div class="panel-footer">Panel Footer</div>
					</div>
				</div>
		
		</div>
	</div>
	
				

		


</body>
</html>
























