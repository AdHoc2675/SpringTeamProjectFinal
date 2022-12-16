<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@page import="com.example.recipe.RecipeDAO, com.example.recipe.RecipeVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>free board</title>
	<link href="../css/my.css" rel="stylesheet">

	<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

	<meta name="theme-color" content="#712cf9">
	<link href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/offcanvas.css" rel="stylesheet">
</head>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
<body class="bg-light">
<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" aria-label="Main navigation">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">FlowRecipe</a>
	</div>
</nav>
<main class="container">
<div class="d-flex align-items-center p-3 my-3 text-white bg-purple rounded shadow-sm"><h1 class="h4 mb-0 text-white lh-1">레시피</h1></div>
<table id="list" width="90%" class="table table-striped table-sm">
	<tr>
		<th>Id</th>
		<th>Title</th>
		<th>Writer</th>
		<th>Time</th>
		<th>Tools</th>
		<th>Ingredients</th>
		<th>Recipe</th>
		<th>Regdate</th>
		<th>Level</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>

	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.getSeq()}</td>
			<td>${u.getTitle()}</td>
			<td>${u.getUserid()}</td>
			<td>${u.getCookingTime()}</td>
			<td>${u.getCookingTools()}</td>
			<td>${u.getIngredients()}</td>
			<td>${u.getRecipe()}</td>
			<td>${u.getRegdate()}</td>
			<td>${u.getLevel()}</td>
			<td><a href="editform/${u.getSeq()}">Edit</a></td>
			<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
		</tr>
	</c:forEach>
</table>

</main>

<br/>
<small class="d-block text-end mt-3">
	<a class="btn text-white bg-purple" href="add" role="button">Add</a>
</small>
</body>
</html>