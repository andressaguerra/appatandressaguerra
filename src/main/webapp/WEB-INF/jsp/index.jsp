<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App AT Cosmetics</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="jumbotron text-center">
		<h1>${nome}</h1>
		<p>${email}</p>
	</div>
	<div class="container">
		<p><a href="${git}" target="_blank">Projeto AT de Desenvolvimento Web com Java EE (Github)</a></p>
		<form action="/cliente" method="get">
			<button type="submit" class="btn btn-default">Novo Cliente</button>
		</form>

		<form action="/pedido" method="get">
			<button type="submit" class="btn btn-default">Novo Pedido</button>
		</form>
	</div>
</body>
</html>