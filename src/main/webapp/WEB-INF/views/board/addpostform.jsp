<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id="edit">
    <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>userid:</td><td><input type="text" name="userid"/></td></tr>
    <tr><td>Time:</td><td><input type="text" name="cookingTime"/></td></tr>
    <tr><td>Tool:</td><td><input type="text" name="cookingTools"/></td></tr>
    <tr><td>ingredients:</td><td><input type="text" name="ingredients"/></td></tr>
    <tr><td>recipe:</td><td><textarea cols="50" rows="5" name="recipe"></textarea></td></tr>
    <tr><td>likes:</td><td><input type="number" name="likes"/></td></tr>
</table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>