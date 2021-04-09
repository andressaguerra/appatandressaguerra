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
		<h1>Usuário</h1>
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
		<c:if test="${not empty erro}">
			<div class="alert alert-danger">
				${erro}
			</div>
		</c:if>
		<h3>Listagem de Usuários</h3>
		<c:if test="${not empty lista}">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>E-mail</th>
						<th>Github</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${lista}">
						<tr>
							<td>${u.nome}</td>
							<td>${u.email}</td>
							<td>${u.git}</td>
							<td><a href="/usuario/${u.id}/excluir"><span class="glyphicon glyphicon-remove" style="color:red"></span></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<c:if test="${empty lista}">
				<br><p>Nenhum usuário cadastrado.</p>
			</c:if>
			<div class="btn-group">
				<a href="/usuario/novo" class="btn btn-info" role="button">Novo Usuário</a>
			</div>
		</c:if>
	</div>

</body>
</html>