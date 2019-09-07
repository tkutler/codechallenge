<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Page</title>
        <style>
        .register {
            display: inline-block;
            border: solid black;
            width: 400px;
            height: 550px;
            background-size: 390px 420px;
            background-image: url("/assets/cloud.jpg");
            margin-top: 91px;
            margin-left: 10px;


        }

        .login {
            display: inline-block;
            vertical-align: top;
            border: solid black;
            width: 400px;
            height: 430px;
            margin-left: 156px;
            background-image: url("/assets/cloud.jpg");
            background-size: 390px 420px;
            margin-top: 91px;



        }

        p {
            margin-left: 10px;
            font-weight: bold;
            margin: 30px;
        }

        input {
            margin-left: 5px;
        }

        .wrapper {
            background-image:linear-gradient(
            rgba(0, 0, 0, 0.5),
            rgba(0, 0, 0, 0.5)
            ), url("assets/woodtt.jpg");
            width: 1000px;
                    

        }

        h2 {
            text-align: center;
            background-color: white;
            width: 350px;
            margin-left: 20px;
            font-family: Verdana;
            margin-top: 7px;

        }

        .button {
            background-color: #3C4C5B;
            align-content: center;
            margin-left: 282px;
            width: 100px;
            color: white;

        }
    </style>
</head>
<body>
	<div class ="register">
	    <h1>Register!</h1>
	    
	    <p><form:errors path="user.*"/></p>
	    
	    <form:form method="POST" action="/registration" modelAttribute="user">
	        <p>
	            <form:label path="email">Email:</form:label>
	            <form:input type="email" path="email"/>
	        </p>
	         <p>
	            <form:label path="location">City:</form:label>
	            <form:input type="text" path="location"/>
	        </p>
	        <p>
	            <form:label path="state">State:</form:label>
	            <form:input type="text" path="state"/>
	        </p>
	        <p>
	            <form:label path="password">Password:</form:label>
	            <form:password path="password"/>
	        </p>
	        <p>
	            <form:label path="passwordConfirmation">Password Confirmation:</form:label>
	            <form:password path="passwordConfirmation"/>
	        </p>
	        <input type="submit" value="Register!"/>
	    </form:form>
    </div>
    <div class = "login">
    	    <h1>Login</h1>
    <p><c:out value="${error}" /></p>
    <form method="post" action="/login">
        <p>
            <label for="email">Email</label>
            <input type="text" id="email" name="email"/>
        </p>
        <p>
            <label for="password">Password</label>
            <input type="password" id="password" name="password"/>
        </p>
        <input type="submit" value="Login!"/>
    </form>    
    
    
    
    
    
    
    
    
    
    </div>

</body>
</html>