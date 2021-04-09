<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
		<h1>${user.nome}</h1>
		<p>${user.email}</p>
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
	
	<div class="container" style="margin-top: 50px" align="center">
		<div class="row">
			<div class="col-sm-4">
				<img src="https://i.imgur.com/keO3fyx.png"
					alt="Generic placeholder image" height="140">
				<h3>Clientes</h3>
				<p>Cadastre novos clientes ou veja a listagem de clientes cadastrados.</p>
				<p><a class="btn btn-info" href="/cliente" role="button">Detalhes &raquo;</a></p>
			</div>
			<div class="col-sm-4">
				<img src="https://i.imgur.com/keO3fyx.png"
					alt="Generic placeholder image" height="140">
				<h3>Pedidos</h3>
				<p>Inclua novos pedidos ou veja a listagem de pedidos registrados.</p>
				<p><a class="btn btn-info" href="/pedido" role="button">Detalhes &raquo;</a></p>
			</div>
			<div class="col-sm-4">
				<img src="https://i.imgur.com/keO3fyx.png"
					alt="Generic placeholder image" height="140">
				<h3>Github</h3>
				<p>Acesse o seu github!</p><br>
				<p><a class="btn btn-info" href="${user.git}" role="button" target="_blank">Detalhes &raquo;</a></p>
			</div>
		</div>
	</div>

</body>
</html>