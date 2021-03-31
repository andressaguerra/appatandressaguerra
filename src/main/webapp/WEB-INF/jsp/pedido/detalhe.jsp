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
		<h1>Pedidos</h1>
	</div>
	<div class="container">
		<h2>Inclus�o de Pedidos</h2>
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
				<label>Nome:</label> <input type="text" class="form-control" name="nome">
			</div>
			
			<div class="form-group">
				<label>Descri��o:</label> <input type="text" class="form-control" name="descricao">
			</div>
			
			<div class="form-group">
				<label>Pre�o:</label> <input type="number" class="form-control" step="0.01" name="preco">
			</div>

			<button type="submit" class="btn btn-block">Incluir</button>
		</form>
	</div>
	<br>
	<div class="container">
		<h2>Listagem de Pedidos</h2>
		<c:if test="${not empty lista}">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Descri��o</th>
						<th>Cliente</th>
						<th>Pre�o</th>
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
							<td><a href="/pedido/${p.id}/excluir">Excluir</a></td>
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
		
		<form action="/home" method="get">
			<button type="submit" class="btn btn-block">Home</button>
		</form>
	</div>
</body>
</html>