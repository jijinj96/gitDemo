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
<div class="container">
    
	
      <!-- edit form column -->
     <!-- <div class="col-md-9 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
          This is an <strong>.alert</strong>. Use this to show important messages to the user.
        </div> -->	<div class="container-fluid-full-width " style="margin-top:100px">
		<div class="panel panel-default">
  <div class="panel-heading"><h1><center>Edit Profile</h1>	 </div>
    <div class="panel-body">

<div class="container">
                <div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
          <img src="img/avtar.png" class="avatar img-circle" alt="avatar">
          <h6>Upload a different photo...</h6>
          
          <input type="file" class="form-control">
        </div>
      </div>
	  <div class="col-md-8">
	<div class="container">
	
        <form class="form-horizontal" role="form">
	
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
              <input class="form-control" style="width: 40%" type="text" value="<%=session.getAttribute("fname") %>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
              <input class="form-control" style="width: 40%"  type="text" value="<%=session.getAttribute("lname") %>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Date of birth:</label>
            <div class="col-lg-8">
              <input class="form-control" style="width: 40%"  type="text" value="<%=session.getAttribute("dob") %>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" style="width: 40%"  value="<%=session.getAttribute("email") %>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Proof of Identification:</label>
            <div class="col-lg-8">
			  <input class="form-control" type="text" style="width: 40%" value="ADHAR CARD">
			  <input class="form-control" type="text" style="width: 40%" placeholder="card number" >
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Password:</label>
            <div class="col-md-8">
              <input class="form-control" type="password" style="width: 40%"  value="<%=session.getAttribute("password") %>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Confirm password:</label>
            <div class="col-md-8">
              <input class="form-control" style="width: 40%"  type="password" value="">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
              <input type="button" class="btn btn-primary" onclick="location.href='profile1.html'" value="Save Changes">
              <span></span>
              <input type="reset" class="btn btn-default"  onclick="location.href='profile1.html'" value="Cancel">
            </div>
          </div>
        </form>
	</div>
	
      </div>
	  </div>
</div>
</div>
</div>
</div>
  
  </div>
</div>
<hr>
</BODY>
</html>