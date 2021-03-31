<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>App AT Cosmetics</title>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>Confirmação</h1>
	</div>
	<div class="container">
		<div class="alert alert-success">
			<strong>Sucesso!</strong> Usuário ${usuario.nome} cadastrado no sistema. Faça login com o e-mail e senha para entrar.
		</div>
		<form action="/" method="get">
			<button type="submit" class="btn btn-block">Login</button>
		</form>
	</div>
</body>
</html>