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
	.navbar {
	  margin-bottom: 0;
	  background-color: #5BC0DE;
	  z-index: 9999;
	  border: 0;
	  line-height: 1.42857143 !important;
	  border-radius: 0;
	}
	
	.navbar li a, .navbar .navbar-brand {
	  color: #fff !important;
	}
	
	.navbar-nav li a:hover, .navbar-nav li.active a {
	  color: #5BC0DE !important;
	  background-color: #fff !important;
	}
	
	.navbar-default .navbar-toggle {
	  border-color: transparent;
	  color: #fff !important;
	}
</style>
</head>
<body>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<h1>Cliente</h1>
	</div>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li><a href="/home">Home</a></li>
				<li><a href="/cliente">Cliente</a></li>
				<li><a href="/pedido">Pedido</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/usuario/conta"><span class="glyphicon glyphicon-user"></span> Conta</a></li>
				<li><a href="/"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="container" style="margin-top: 50px">
		<h3>Cadastro de Clientes</h3>
		<form action="/cliente/incluir" method="post">
			<div class="form-group">
				<label>Nome:</label> <input type="text" class="form-control" name="nome" required>
			</div>
			<div class="form-group">
				<label>E-mail:</label> <input type="email" class="form-control" name="email" required>
			</div>
			<div class="form-group">
				<label>Endere?o:</label> <input type="text" class="form-control" name="endereco" required>
			</div>
			<div class="form-group">
				<label>Telefone:</label> <input type="text" class="form-control" maxlength="10" name="telefone" required>
			</div>

			<button type="submit" class="btn btn-info">Cadastrar</button>
		</form>
	</div>
	<br>
	<div class="container">
		<h3>Listagem de Clientes</h3>
		<c:if test="${not empty lista}">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>E-mail</th>
						<th>Endere?o</th>
						<th>Telefone</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="c" items="${lista}">
						<tr>
							<td>${c.nome}</td>
							<td>${c.email}</td>
							<td>${c.endereco}</td>
							<td>${c.telefone}</td>
							<td><a href="/cliente/${c.id}/excluir"><span class="glyphicon glyphicon-remove" style="color:red"></span></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<c:if test="${not empty erro}">
			<div class="alert alert-danger">
				<strong>Erro!</strong> ${erro}
			</div>
		</c:if>
		<c:if test="${empty lista}">
			<br>
			<p>Nenhum cliente cadastrado.</p>
			<br>
		</c:if>
	</div>
</body>
</html>