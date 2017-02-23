<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     to exicute the form action -->
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CNC</title>
<!--  CDN include for enable bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">

  @-webkit-keyframes spincube {
    from,to  { -webkit-transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg); }
    16%      { -webkit-transform: rotateY(-90deg);                           }
    33%      { -webkit-transform: rotateY(-90deg) rotateZ(90deg);            }
    50%      { -webkit-transform: rotateY(-180deg) rotateZ(90deg);           }
    66%      { -webkit-transform: rotateY(-270deg) rotateX(90deg);           }
    83%      { -webkit-transform: rotateX(90deg);                            }
  }

  @keyframes spincube {
    from,to {
      -moz-transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
      -ms-transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
      transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
    }
    16% {
      -moz-transform: rotateY(-90deg);
      -ms-transform: rotateY(-90deg);
      transform: rotateY(-90deg);
    }
    33% {
      -moz-transform: rotateY(-90deg) rotateZ(90deg);
      -ms-transform: rotateY(-90deg) rotateZ(90deg);
      transform: rotateY(-90deg) rotateZ(90deg);
    }
    50% {
      -moz-transform: rotateY(-180deg) rotateZ(90deg);
      -ms-transform: rotateY(-180deg) rotateZ(90deg);
      transform: rotateY(-180deg) rotateZ(90deg);
    }
    66% {
      -moz-transform: rotateY(-270deg) rotateX(90deg);
      -ms-transform: rotateY(-270deg) rotateX(90deg);
      transform: rotateY(-270deg) rotateX(90deg);
    }
    83% {
      -moz-transform: rotateX(90deg);
      -ms-transform: rotateX(90deg);
      transform: rotateX(90deg);
    }
  }

  .cubespinner {
    -webkit-animation-name: spincube;
    -webkit-animation-timing-function: ease-in-out;
    -webkit-animation-iteration-count: infinite;
    -webkit-animation-duration: 12s;

    animation-name: spincube;
    animation-timing-function: ease-in-out;
    animation-iteration-count: infinite;
    animation-duration: 12s;

    -webkit-transform-style: preserve-3d;
    -moz-transform-style: preserve-3d;
    -ms-transform-style: preserve-3d;
    transform-style: preserve-3d;

    -webkit-transform-origin: 60px 60px 0;
    -moz-transform-origin: 60px 60px 0;
    -ms-transform-origin: 60px 60px 0;
    transform-origin: 60px 60px 0;
  }

  .cubespinner div {
    position: absolute;
    width: 150px;
    height: 150px;
    border: 1px solid #ccc;
    background: rgba(255,255,255,0.8);
    box-shadow: inset 0 0 20px rgba(0,0,0,0.2);
    line-height: 150px;
    text-align: center;
    font-size: 35px;
    color: red;
    
  }

  .cubespinner .face1 {
    -webkit-transform: translateZ(60px);
    -moz-transform: translateZ(60px);
    -ms-transform: translateZ(60px);
    transform: translateZ(60px);
  }
  .cubespinner .face2 {
    -webkit-transform: rotateY(90deg) translateZ(60px);
    -moz-transform: rotateY(90deg) translateZ(60px);
    -ms-transform: rotateY(90deg) translateZ(60px);
    transform: rotateY(90deg) translateZ(60px);
  }
  .cubespinner .face3 {
    -webkit-transform: rotateY(90deg) rotateX(90deg) translateZ(60px);
    -moz-transform: rotateY(90deg) rotateX(90deg) translateZ(60px);
    -ms-transform: rotateY(90deg) rotateX(90deg) translateZ(60px);
    transform: rotateY(90deg) rotateX(90deg) translateZ(60px);
  }
  .cubespinner .face4 {
    -webkit-transform: rotateY(180deg) rotateZ(90deg) translateZ(60px);
    -moz-transform: rotateY(180deg) rotateZ(90deg) translateZ(60px);
    -ms-transform: rotateY(180deg) rotateZ(90deg) translateZ(60px);
    transform: rotateY(180deg) rotateZ(90deg) translateZ(60px);
  }
  .cubespinner .face5 {
    -webkit-transform: rotateY(-90deg) rotateZ(90deg) translateZ(60px);
    -moz-transform: rotateY(-90deg) rotateZ(90deg) translateZ(60px);
    -ms-transform: rotateY(-90deg) rotateZ(90deg) translateZ(60px);
    transform: rotateY(-90deg) rotateZ(90deg) translateZ(60px);
  }
  .cubespinner .face6 {
    -webkit-transform: rotateX(-90deg) translateZ(60px);
    -moz-transform: rotateX(-90deg) translateZ(60px);
    -ms-transform: rotateX(-90deg) translateZ(60px);
    transform: rotateX(-90deg) translateZ(60px);
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
				      <li class="active" "><a href="#">HOME</a></li>
				      <li><a href="#">GALARY</a></li>
				      <li><a href="#">CONTACT</a></li>
				      <li><a href="#">ABOUT US</a></li>
				    </ul>
				     <ul class="nav navbar-nav navbar-right">
				      <li><a href="signup-page"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				      <li><a href="login-page"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				    </ul>
				  </div>
				</nav>
				<!-- END OF NAVIGATION -->
				<!-- CONTENT PART -->
				<div class="row" style="height: 475px;">
					<div class=" col-lg-5 col-md-5   col-sm-5  col-xs-5 " style="margin: 140px 0px 0px 0px;" >
						<div class="row">
							<div class=" col-lg-2 col-md-2   col-sm-2  col-xs-2 " >
							</div>
							<div class=" col-lg-8 col-md-8   col-sm-8  col-xs-8 " >
								<p class="text-center" style="color: #9b4b4b"><b>“The whole of life is just like watching a film. Only it's as though you always get in
								 ten minutes after the big picture has started, 
								and no-one will tell you the plot, so you have to work it out all yourself from the clues.”
								</b></p>
								<p class="text-right">― Terry Pratchett</p>
							</div>
							<div class=" col-lg-2 col-md-2   col-sm-2  col-xs-2 " >
							</div>
						</div>
					</div>
					<div class=" col-lg-2 col-md-2   col-sm-2  col-xs-2 " >
						<div style="margin: 140px 0px 0px 0px;">
						<div class="cubespinner">
							<div class="face1">CNC</div>
							<div class="face2">CNC</div>
							<div class="face3">CNC</div>
							<div class="face4">CNC</div>
							<div class="face5">CNC</div>
							<div class="face6">CNC</div>
						</div>
						</div>
					</div>
					<div class=" col-lg-5 col-md-5   col-sm-5  col-xs-5 " style="margin: 140px 0px 0px 0px;" >
						<div class=" col-lg-2 col-md-2   col-sm-2  col-xs-2 " >
							</div>
							<div class=" col-lg-8 col-md-8   col-sm-8  col-xs-8 " >
								<p class="text-center" style="color: #9b4b4b"><b>“Certain things leave you in your life and certain things stay with you. And that's why we're all interested in movies- those ones that make you feel, you still think about. Because it gave you such an emotional response, it's actually part of your emotional make-up, in a way.” </b></p>
								<p class="text-right">― Tim Burton</p>
							</div>
							<div class=" col-lg-2 col-md-2   col-sm-2  col-xs-2 " >
							</div>
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
		<div class=" col-lg-1 col-md-1   col-sm-1  col-xs-1 " >
		</div>
	</div>
</div>
</body>
</html>