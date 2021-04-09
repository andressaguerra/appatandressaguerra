<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>App AT Cosmetics</title>
<style>
	.jumbotron {
		background-color: #5BC0DE;
 		color: #FFFFFF;
	}
</style>
</head>
<body>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<h1>Cosmetics</h1>
	</div>
	<div class="container" style="margin-top: 30px">
		<c:if test="${not empty erro}">
			<div class="alert alert-danger">
				<strong>Login inválido.</strong> ${erro}
			</div>
		</c:if>
		<form action="/usuario/login" method="post">
			<div class="form-group">
				<label>E-mail:</label> <input type="email" class="form-control" placeholder="Insira o seu e-mail" name="email" required>
			</div>

			<div class="form-group">
				<label>Senha:</label> <input type="password" class="form-control" placeholder="Insira a sua senha" name="senha" required>
			</div>
			<div class="btn-group">
				<button type="submit" class="btn btn-info">Login</button>
			</div>
			<div class="btn-group">
				<a href="/usuario" class="btn btn-default" role="button">Criar Conta</a>
			</div>
		</form>
	</div>
</body>
</html>