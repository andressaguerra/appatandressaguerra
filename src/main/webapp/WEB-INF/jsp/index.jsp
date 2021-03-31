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
		<h1>${user.nome}</h1>
		<p>${user.email}</p>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<h3><a href="/cliente">Clientes</a></h3>
				<p>Cadastre novos clientes ou veja a listagem de clientes cadastrados.</p>
			</div>
			<div class="col-sm-4">
				<h3><a href="/pedido">Pedidos</a></h3>
				<p>Inclua novos pedidos ou veja a listagem de pedidos registrados.</p>
			</div>
			<div class="col-sm-4">
				<h3><a href="${user.git}" target="_blank">Github</a></h3>
				<p>Acesse o seu github!</p>
			</div>
		</div>
	</div>
</body>
</html>