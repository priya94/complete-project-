<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<body>
	<table width="100%">
		<tr>


			<c:choose>
				<c:when test="${empty loggedInUser}">
					<td align="left">Exist user ? <a href="loginhere">Login</a></td>


					<td align="center">New user ? <a href="register">register</a></td>


				</c:when>
			</c:choose>
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