<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--     to exicute the form action -->
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CNC-SIGN UP</title>
<!--  CDN include for enable bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#rcorners1 {
    border-radius: 25px;
    background: #737373;
    padding: 20px;
    height: 250px;
}

</style>
</head>
<body style="background-color: #463939">
<div class="content-fluid " >
	<div class="row" style="margin-top: 50px; ;">
		<div class=" col-lg-1 col-md-1   col-sm-1  col-xs-1 " >
		</div>
		<div class=" col-lg-10 col-md-10   col-sm-10  col-xs-10 " >
			<div   style="background: linear-gradient( #fefeff,#d4d9e8); height: 600px;">
<!-- 				<div class="row"> -->
<!-- 					<div class=" col-lg-5 col-md-5   col-sm-5  col-xs-5 text-right "  style=" background: linear-gradient( 	#404040,#bfbfbf);" > -->
<!-- 						<div style="margin-top: 17px"> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class=" col-lg-12 col-md-12   col-sm-12  col-xs-12 text-center "  style=" background: linear-gradient( #404040,#bfbfbf);" > -->
<!-- 						<div style="margin-top: 17px"> -->
<!-- 								<label style="font-size: 40px; color: white;  " ><b>CNC THEATRES </b></label> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<!-- NAVIGATION BAR -->
				<nav class="navbar navbar-inverse">
				  <div class="container-fluid">
				    <div class="navbar-header">
				      <a class="navbar-brand" href="#">CNC THEATRES </a>
				    </div>
				    <ul class="nav navbar-nav">
				      <li ><a href="#">HOME</a></li>
				      <li><a href="#">GALARY</a></li>
				      <li><a href="#">CONTACT</a></li>
				      <li><a href="#">ABOUT US</a></li>
				    </ul>
				     <ul class="nav navbar-nav navbar-right">
				      <li class="active" ><a href="signup-page"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				      <li ><a href="login-page"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				    </ul>
				  </div>
				</nav>
				<!-- END OF NAVIGATION -->
				<!-- CONTENT PART -->
				<div class="row" style="height: 475px;">
					<div class=" col-lg-3 col-md-3   col-sm-3  col-xs-3 " style="margin: 140px 0px 0px 0px;" >
					</div>
					<div class=" col-lg-6 col-md-6   col-sm-6  col-xs-6 " style="margin: 60px 0px 0px 0px;" >
						<form:form name="signup" id="signup" action="signup" method="POST" class="form-horizontal" onsubmit="return regvalidation();"  >
							<div id="name_div" class="  form-group  "  >
								<label class="col-sm-2 control-label" for="str_name">Name</label>
								<div class="col-sm-10">
									<input type="text" id="str_name" name="str_name" class="form-control" placeholder="Name" required=""   />
								</div>
							</div>
							<div id="mobile_div" class="form-group "   >	
								<label class="col-sm-2 control-label" for="str_mobile">Mobile</label>
								<div class="col-sm-10">
									<input type="text" id="str_mobile" name="str_mobile" class="form-control" placeholder="Mobile" required=""/>
								</div>
							</div>
							<div id="email_div" class=" form-group " >
								<label class="col-sm-2 control-label" for="str_email">Email</label>
								<div class="col-sm-10">
									<input type="text" name="str_email" id="str_email" class="red-tooltip form-control" data-placement="right" data-toggle="tooltip" title="Hooray!"  placeholder="Email address" required="" />
								</div>
							</div>
							<div id="password_div" class="form-group " >
								<label class="col-sm-2 control-label" for="password">Password</label>
								<div class="col-sm-10">
									<input type="password"  name="str_password" id="str_password" class="red-tooltip form-control" data-placement="right auto" data-toggle="tooltip" required="" placeholder="New password"/>
								</div>
							</div>
							<div id="file_div" class=" form-group " >
								<label class="col-sm-2 control-label" for="str_conpass">Conform password</label>
								<div class="col-sm-10">
									<input type="password" name="str_conpass" id="str_conpass"  class="form-control "  placeholder="Conform password"/>
								</div>
							</div>
							<div class="form-group  " >
								<div class="col-sm-2">
								</div>
								<div class="col-sm-10">
									<input type="submit" id="bt" class="btn btn-success col-lg-offset-3 col-md-offset-3 col-lg-6 col-md-6   col-sm-6  col-xs-6 " name="bt" value="Submit"  />
								</div>
							</div>
						</form:form>
					</div>
					<div class=" col-lg-3 col-md-3   col-sm-3  col-xs-3 " style="margin: 140px 0px 0px 0px;" >
					
					</div>
					
				</div>
				<!-- CONTENT PART END-->
				<!-- FOOTER PART -->
				<div class="col-xs-12 text-center" style="background-color: #1a1a1a; height: 50px; ">
					<div style="margin-top: 5px;">
						<font color="#f2f2f2" >All Rights are reserved</font><br>
						<font color="#f2f2f2">CNC 2017</font>
					</div>
				</div>
				<!-- FOOTER PART END-->
			</div>
		</div>
	</div>
</div>

</body>
</html>