<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<body>
<div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">ShOPPIng CHart</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                
                <div class="navbar-form navbar-right">
                
                <button type="submit" class="btn btn-success" data-toggle="modal" data-target="#mysignin">Sign in</button>
                <button type="submit" class="btn btn-success" data-toggle="modal" data-target="#mysignup">Sign up</button>
                
                </div>
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>





<div class="container">
  
  

  <!-- Modal -->
  <div class="modal fade" id="mysignin" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">login here</h4>
        </div>
        <div class="modal-body">
         <c:url var="action" value="/login"></c:url>

	<form:form action="${action}" method="post">
		<table>
			<tr>
				<td>User Name:</td>
				
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" /></td>
			</tr>
	
		</table>
        </div>
        <div class="modal-footer">
          <td><input type="submit" value="Login"></td>
        </div>
        </form:form>
      </div>
      
    </div>
  </div>
  
</div>






    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="C:\Users\Abin\Desktop\logintry\shoppingcartfront\src\main\webapp\WEB-INF\resources\images\sam.JPG" alt="First slide">
          
        </div>
        <div class="item">
          <img class="second-slide" src="C:\Users\Abin\Desktop\logintry\shoppingcartfront\src\main\webapp\WEB-INF\resources\images\sony.JPG" alt="Second slide">
          
        </div>
        <div class="item">
          <img class="third-slide" src="C:\Users\Abin\Desktop\logintry\shoppingcartfront\src\main\webapp\WEB-INF\resources\images\wash.JPG" alt="Third slide">
          
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
	<table width="100%">
		<tr>


			<c:choose>
				<c:when test="${empty loggedInUser}">
					


					<td align="center">New user ? <a href="register">register</a></td>
					</c:when>


                   <c:when test="${not empty loggedInUser}">
							<td>Welcome ${loggedInUser},</td>
							<td align="right"><a href="logout"> logout</a></td>
						</c:when>
						
		
			</c:choose>
		</tr>
		<tr>
					<c:if test="${loggedOut==true}">
						<td>${logoutMessage}</td>
					</c:if>
				</tr>
	</table>
	<div id="login">
		<c:if
			test="${isUserClickedLoginHere==true || invalidCredentials==true}">
			<div id="error">${errorMessage}</div>
			<%@ include file="login.jsp"%>

		</c:if>
	</div>

	<div id="register">
		<c:if test="${isUserClickedRegisterHere==true}">
			<%@ include file="register.jsp"%>

		</c:if>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>