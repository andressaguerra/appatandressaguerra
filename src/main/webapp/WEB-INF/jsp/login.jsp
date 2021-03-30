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
		<h1>Cosmetics</h1>
	</div>
	<div class="container">
		<form action="/usuario/login" method="post">
			<div class="form-group">
				<label>E-mail:</label> <input type="email" class="form-control" placeholder="Insira o seu e-mail" name="email">
			</div>
			
			<div class="form-group">
				<label>Senha:</label> <input type="password" class="form-control" placeholder="Insira a sua senha" name="senha">
			</div>
			<c:if test="${not empty erro}">
				<div class="alert alert-danger">
					<strong>Login inválido.</strong> ${erro}
				</div>
			</c:if>
			<button type="submit" class="btn btn-default">Login</button>
		</form>
		<form action="/" method="get">
			<button type="submit" class="btn btn-default">Criar Conta</button>
		</form>
	</div>
</body>
</html>