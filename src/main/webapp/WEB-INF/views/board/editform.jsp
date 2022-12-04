<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.BoardDAO, com.example.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute="u" action="../editok" method="POST">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>Title:</td><td><form:input path="title"/></td></tr>
		<tr><td>Userid:</td><td><form:input path="userid"/></td></tr>
		<tr><td>Tools:</td><td><form:input path="cookingTools"/></td></tr>
		<tr><td>Time:</td><td><form:input path="cookingTime"/></td></tr>
		<tr><td>Ingredients:</td><td><form:input path="ingredients"/></td></tr>
		<tr><td>Recipe:</td><td><form:textarea cols="50" rows="5" path="recipe"/></td></tr>
		<input type="submit" value="수정하기"/>
		<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
	</table>
</form:form>

</body>
</html>