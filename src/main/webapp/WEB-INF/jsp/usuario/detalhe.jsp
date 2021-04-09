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
	<div class="jumbotron text-center">
		<h1>Criar Conta</h1>
	</div>
	<div class="container">
		<form action="/usuario/incluir" method="post">
			<div class="form-group">
				<label>Nome:</label> <input type="text" class="form-control" placeholder="Insira o seu nome" name="nome" required>
			</div>
			
			<div class="form-group">
				<label>E-mail:</label> <input type="email" class="form-control" placeholder="Insira o seu e-mail" name="email" required>
			</div>
			
			<div class="form-group">
				<label>Senha:</label> <input type="password" class="form-control" placeholder="Insira a sua senha" name="senha" required>
			</div>
			
			<div class="form-group">
				<label>Github:</label> <input type="text" class="form-control" placeholder="Insira o seu github" name="git" required>
			</div>
			
			<div class="btn-group">
				<button type="submit" class="btn btn-info">Cadastrar</button>
			</div>
			<div class="btn-group">
				<a href="${voltar}" class="btn btn-default" role="button">Voltar</a>
			</div>
		</form>
	</div>
</body>
</html>