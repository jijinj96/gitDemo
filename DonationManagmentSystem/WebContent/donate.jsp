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
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/design.css">
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



<!-- Services Section -->
    <section  class="donate-form1" id="enter">
        <div class="container" > 
            
			<div class="block">
			<div class="row">
			<div class="col-lg-4 text-centre">
			Name:<%=session.getAttribute("fname") %>&nbsp;<%=session.getAttribute("lname") %></div>
			
			 <div class="col-lg-4 text-centre">Contact:<%=session.getAttribute("contact") %></div>
			 <div class="col-lg-4 text-centre"> Country:<%=session.getAttribute("country") %></div></div>
			 
			 
			<div class="row" style="padding-top:100px;"> 
			 <div class="col-lg-4 text-centre">
			  Purpose<select>
			   <option>Social</option>
			   <option>Orphanage</option>
			   </select>
			</div>
			 <div class="col-lg-8 text-centre" style="text-align:inline">
			
		       <div style="align:top ;text-align:right" class="col-lg-2"> Remark: </div><div style="align:left" class="col-lg-6"><textarea ></textarea></div>
			 
			</div>
			</div>
			<br><br>
			<div class="row">
		        <div class="col-lg-4 text-centre" style="align:left;font-size:30">
                <p> </p><label for="usr">Amount  :</label><input type="number" min="500" step="100" id="mySelect" onkeyup="myFunction()" style="width:100px;height:50px;font-size:32"   required="true"> 
                </div>
                
                <div class="col-lg-8 text-centre" style="padding-right:300px;font-size:30">
                <p> </p>
				<label for="crr" style="width:300px;height:50px;font-size:32" />Currency  :<select style="width:100px;height:50px">
                <option>1</option>
				<option>2</option>
				</select>
				</div>
                </div>
           </div>
		   </div>
			</section>
			
			<section  class="donate-form2"> 
			 <div class="container" > 
            <div class="row text-center">
                <div class="col-md-6">  
                    <h4 class="service-heading">Payment Methods</h4>
                   <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Credit</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
         <h4>credit</h4>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Debit</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">Debit</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">NFET</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body"></div>
      </div>
    </div>
      <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Cheque</a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse">
        <div class="panel-body">
		
		 <form role="form" id="payment-form">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="cardNumber" placeholder="Valid Card Number" required autofocus data-stripe="number" />
                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                </div>                            
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group">
                                    <label for="expMonth">EXPIRATION DATE</label>
								<div class="input-group" style="padding-right:10px">
                                    <div class="col-xs-6 col-lg-6 pl-ziro">
                                        <input type="text" class="form-control" name="expMonth" placeholder="MM" required data-stripe="exp_month" />
                                    </div>
                                    <div class="col-xs-6 col-lg-6 pl-ziro">
                                        <input type="text" class="form-control" name="expYear" placeholder="YY" required data-stripe="exp_year" />
                                    </div>
                                </div>
							  </div>
                            </div>
						</div>
					
						<div class="row">
                            <div class="col-xs-6 col-md-6 pull-center">
                                <div class="form-group">
                                    <label for="cvCode">CV CODE</label>
                                    <input type="password" class="form-control" name="cvCode" placeholder="CV" required data-stripe="cvc" />
                                </div>
                            </div>
						</div>
                  
                        <div class="row">
                            <div class="col-xs-12">
                                <button class="btn btn-success btn-lg btn-block" type="submit">DONATE</button>
                            </div>
                        </div>
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </form>
		
		</div>
      </div>
    </div>
  </div> 
</div>            
     <br><br>
	
	<div class="container col-md-6">
		<div class="donate-box" style="margin-left:10px;display: block;">
				<h3>your donation amount in Indian Rupees</h3>
				<div class="value">
					<span id="x">`</span>
					<label id="demo" class="largeamount">500</label>
				</div><!-- end value -->
				<div class="text-holder">
				<p>Fr.Agnel Donation policy
</p>
				    <p></p>
					<p><strong>Note:</strong> • Please avoid making a donation of less than Rs.100/- as the processing costs make it unviable for us. • You can increase/ decrease your donation amount by clicking on the arrows next to the amount stated. </p>
					<p><strong>Disclaimer:</strong>  All funds/donations raised by Fr.agnel are allocated to other child rights endeavours depending on the need on the ground.</p>
			  </div><!-- end text-holder -->
			</div>
	</div>
</div>
</div>
		</section>

<script>
function myFunction() {
    var x = document.getElementById("mySelect").value;
    document.getElementById("demo").innerHTML = x;
}
</script>
</body>

</html>