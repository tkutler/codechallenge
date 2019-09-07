<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	<p><a href="/home">Back</a></p>
	<p><a href="/logout">Logout</a></p>
	</div>
	
	<div>   
		<h1><c:out value="${event.name}"/></h1>
		<p>Host: <c:out value="${event.host.email}"/></p>
		<p>Date: <c:out value="${event.date}"/></p>
		<p>Location: <c:out value="${event.location}"/></p>
	</div>
	<div>
	<h1>Messages</h1>
	 <textarea rows="20" cols="50">
	<c:forEach items="${comments}" var="comment"> 
	<c:out value="${comment.message}"/>
	<c:out value="${comment.email}"/>
	
	
	</c:forEach> 
	</textarea> 	
		<div>
	<form:form action="/newMessage/${event.id}" method="post" modelAttribute="newcomment">
    <p>
        <form:label path="message">Comment</form:label>
        <form:errors path="message"/>
        <form:input path="message"/>
        <form:input type="hidden" path="email" value = "${user.email}"/>
        <form:input type="hidden" path="event" value = "${event.id}"/>
                
        
    </p>

    
    <input type="submit" value="Submit"/>
    
</form:form> 
	
	
	
	</div>
	
	
	</div>
	<div>
	<h1>List of Attendees</h1>
	<c:forEach items="${attendees}" var="user">	
	<p><c:out value="${user.email}"/></p>
	</c:forEach>
	
	
	</div>

</body>