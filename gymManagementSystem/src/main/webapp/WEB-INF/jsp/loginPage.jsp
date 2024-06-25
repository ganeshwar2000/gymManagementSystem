<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        <%@include file="/WEB-INF/css/loginPage.css"%>
    </style>
    <script type="text/javascript">
    function myFunction() {
    	  var x = document.getElementById("Password");
    	  if (x.type === "password") {
    	    x.type = "text";
    	  } else {
    	    x.type = "password";
    	  }
    	}
    </script>
</head>
<body>
    <c:url value="/login" var="login" />
    <div class="container">
        <h2>Enter Details</h2>
        <h3>
            <form:form action="${login}" method="post">
                Enter Username: <input type="text" name="username" placeholder="Username" required/>
                <br />
                Enter Password:<input type="password" name="password" id="Password" placeholder="Password" required/>
                <input type="checkbox" align="left" onclick="myFunction()">Show Password
                <br />
                <input type="submit" value="Submit" />
            </form:form>
        </h3>
        <h2>
            <a href="/register" class="underline">Register for New User</a>
        </h2>
    </div>
</body>
</html>
