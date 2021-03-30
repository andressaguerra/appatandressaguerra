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
		<h1>Inclusão de Pedidos</h1>
	</div>
	<div class="container">
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
				<label>Descrição:</label> <input type="text" class="form-control" placeholder="Insira o seu pedido" name="descricao">
			</div>

			<button type="submit" class="btn btn-default">Incluir</button>
		</form>
	</div>
	<div class="container">
		<c:if test="${not empty lista}">
			<h2>Listagem de Pedidos</h2>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Descrição</th>
						<th>Cliente</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="p" items="${lista}">
						<tr>
							<td>${p.descricao}</td>
							<td>${p.cliente.nome}</td>
							<td><a href="/pedido/${p.id}/excluir">Excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<c:if test="${empty lista}">
			<br>
			<p>Nenhum pedido cadastrado.</p>
		</c:if>
		
		<form action="/home" method="get">
			<button type="submit" class="btn btn-default">Home</button>
		</form>
	</div>
</body>
</html>