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
		<h1>Cadastro de Clientes</h1>
	</div>
	<div class="container">
		<form action="/cliente/incluir" method="post">
			<div class="form-group">
				<label>Nome:</label> <input type="text" class="form-control" placeholder="Insira o seu nome" name="nome">
			</div>

			<button type="submit" class="btn btn-default">Cadastrar</button>
		</form>
	</div>
	<div class="container">
		<c:if test="${not empty lista}">
			<h2>Listagem de Clientes</h2>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="c" items="${lista}">
						<tr>
							<td>${c.nome}</td>
							<td><a href="/cliente/${c.id}/excluir">Excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<c:if test="${empty lista}">
			<br>
			<p>Nenhum cliente cadastrado.</p>
		</c:if>
		
		<form action="/" method="get">
			<button type="submit" class="btn btn-default">Voltar</button>
		</form>
	</div>
</body>
</html>