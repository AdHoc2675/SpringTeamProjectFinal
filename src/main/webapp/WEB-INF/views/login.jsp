<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>login page</title>
    <style>
        img, label {
            display: inline-block;
            margin: 1rem;
        }
        label {
            width: 130px
        }
        button {
            background-color: blue;
            color: white;
            font-size: 15px
        }
        .input_form{
            padding: 0.375rem 0.75rem;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: 0.375rem;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }
    </style>
    <link href="../css/my.css" rel="stylesheet">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <meta name="theme-color" content="#712cf9">
    <link href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/offcanvas.css" rel="stylesheet">

</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" aria-label="Main navigation">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">FlowRecipe</a>
    </div>
</nav>

<div style='width:100%;text-align:center;padding-top:100px'>
    <img src='../images/recipe.jpg' height="250">
    <form method="post" action="loginOk">
        <div>
            <label>User ID: </label>
            <input type='text' class="input_form" name='userid'/>
        </div>
        <div><label>Password: </label>
            <input type='password' class="input_form" name='password'/>
        </div>
        <button class="btn text-white bg-purple" type='submit'>login</button>
    </form>
</div>
</body>
</html>