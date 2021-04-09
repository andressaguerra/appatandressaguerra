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
		<h1>Pedido</h1>
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
		<h3>Inclusão de Pedidos</h3>
		<form action="/pedido/incluir" method="post">
			<div class="form-group">
				<label>Cliente:</label>
				<select class="form-control" name="cliente.id">
					<c:forEach var="c" items="${clientes}">
						<option value="${c.id}">${c.nome}</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="form-group">
				<label>Nome:</label> <input type="text" class="form-control" name="nome" required>
			</div>
			
			<div class="form-group">
				<label>Descrição:</label> <input type="text" class="form-control" name="descricao" required>
			</div>
			
			<div class="form-group">
				<label>Preço:</label> <input type="number" class="form-control" step="0.01" name="preco" required>
			</div>

			<button type="submit" class="btn btn-info">Incluir</button>
		</form>
	</div>
	<br>
	<div class="container">
		<h3>Listagem de Pedidos</h3>
		<c:if test="${not empty lista}">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Descrição</th>
						<th>Cliente</th>
						<th>Preço</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="p" items="${lista}">
						<tr>
							<td>${p.nome}</td>
							<td>${p.descricao}</td>
							<td>${p.cliente.nome}</td>
							<td>R$ ${p.preco}</td>
							<td><a href="/pedido/${p.id}/excluir"><span class="glyphicon glyphicon-remove" style="color:red"></span></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<c:if test="${empty lista}">
			<br>
			<p>Nenhum pedido registrado.</p>
			<br>
		</c:if>
	</div>
</body>
</html>