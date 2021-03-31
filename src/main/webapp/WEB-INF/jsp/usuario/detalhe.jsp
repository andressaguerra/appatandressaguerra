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
		<h1>Cadastro de Usu�rios</h1>
	</div>
	<div class="container">
		<form action="/usuario/incluir" method="post">
			<div class="form-group">
				<label>Nome:</label> <input type="text" class="form-control" placeholder="Insira o seu nome" name="nome">
			</div>
			
			<div class="form-group">
				<label>E-mail:</label> <input type="email" class="form-control" placeholder="Insira o seu e-mail" name="email">
			</div>
			
			<div class="form-group">
				<label>Senha:</label> <input type="password" class="form-control" placeholder="Insira a sua senha" name="senha">
			</div>
			
			<div class="form-group">
				<label>Github:</label> <input type="text" class="form-control" placeholder="Insira o seu github" name="git">
			</div>
			
			<div class="btn-group">
				<button type="submit" class="btn btn-primary">Cadastrar</button>
			</div>
			<div class="btn-group">
				<a href="/" class="btn btn-default" role="button">Voltar</a>
			</div>
		</form>
	</div>
</body>
</html>