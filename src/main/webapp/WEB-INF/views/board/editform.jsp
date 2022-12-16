<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.recipe.RecipeDAO, com.example.recipe.RecipeVO"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit</title>
	<link href="../css/my.css" rel="stylesheet">

	<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
		  integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<meta name="theme-color" content="#712cf9">
	<link href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/offcanvas.css" rel="stylesheet">
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" aria-label="Main navigation">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">FlowRecipe</a>
	</div>
</nav>
<main class="container">
	<div class="d-flex align-items-center p-3 my-3 text-white bg-purple rounded shadow-sm">
		<h1 class="h4 mb-0 text-white lh-1">Edit Recipe</h1>
	</div>

	<div class="my-3 p-3 bg-body rounded shadow-sm">
		<form:form modelAttribute="u" action="../editok" method="POST">
			<form:hidden path="seq"/>
			<table id="edit">
				<div class="row g-3">
					<div class="col-sm-4">
						<label for="title" class="form-label">Title</label>
						<form:input type="text" class="form-control" id="title" path="title"/>
					</div>
					<div class="col-sm-4">
						<label for="userid" class="form-label">Userid</label>
						<form:input type="text" path="userid" class="form-control" id="userid"/>
					</div>
					<div class="col-sm-4">
						<label for="level" class="form-label">Level</label>
						<form:input type="number" path="level" class="form-control" id="level"/>
					</div>

					<div class="col-sm-4">
						<label for="cookingTime" class="form-label">Cooking Time</label>
						<form:input type="text" path="cookingTime" class="form-control" id="cookingTime"/>
					</div>
					<div class="col-sm-4">
						<label for="cookingTools" class="form-label">Cooking Tools</label>
						<form:textarea cols="50" rows="5" path="cookingTools" class="form-control"
									   id="cookingTools"></form:textarea>
					</div>
					<div class="col-sm-4">
						<label for="ingredients" class="form-label">Ingredients</label>
						<form:textarea cols="50" rows="5" path="ingredients" class="form-control"
									   id="ingredients"></form:textarea>
					</div>

					<div class="col-sm-12">
						<label for="recipe" class="form-label">Recipe</label>
						<form:textarea cols="50" rows="5" path="recipe" id="recipe"
									   class="form-control"></form:textarea>
					</div>
				</div>
				<!--
                                <td align="right">
                                    <button type="button" onclick="location.href='../list'">목록</button>
                                </td>
                                <td><input type="submit"/></td>
                                -->

				<hr class="my-4">
				<div class="row g-3">
					<div class="col-sm-4">
						<button class="w-50 btn text-white bg-purple btn-lg" type="button"
								onclick="location.href='../list'">목록
						</button>
					</div>
					<div class="col-sm-4">
						<button class="w-50 btn text-white bg-purple btn-lg" type="submit">완료</button>
					</div>
					<div class="col-sm-4"></div>
				</div>

			</table>
		</form:form>
	</div>
</main>
</body>
</html>