<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="to.ClienteTO"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Star Tech</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<%
		ClienteTO to = (ClienteTO) request.getAttribute("cliente");
	%>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Web Dev Academy</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Início</a></li>
					<li><a href="#">Clientes</a></li>
					<li><a href="#">Produtos</a></li>
					<li><a href="#">Ajuda</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div id="main" class="container-fluid">
		<h3 class="page-header">
			Alterar Cliente #<%=to.getId()%></h3>

		<form action="index.html" action="ManterCliente.do" method="post">
			<!-- area de campos do form -->
			<input type="hidden" name="id" value="<%=to.getId()%>" />
			<div class="row">
				<div class="form-group col-md-5">
					<label for="campo1">Nome</label> <input type="text"
						class="form-control" name="nome" placeholder="nome completo"
						value="<%=to.getNome()%>" id="campo1">
				</div>

				<div class="form-group col-md-3">
					<label for="campo2">Nascimento</label> <input type="text"
						class="form-control" name="idade" placeholder="DD/MM/AAAA"
						value="<%=to.getNasc()%>" id="campo3">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-4">
					<label for="campo3">Endereço</label> <input type="text"
						class="form-control" name="endereco"
						value="<%=to.getEndereco()%> id="campo3">
				</div>

				<div class="form-group col-md-4">
					<label for="campo4">Telefone</label> <input type="text"
						class="form-control" name="fone" value="<%=to.getTelefone()%> id="campo3">
				</div>
			</div>
			<hr />
			<div id="actions" class="row">
				<div class="col-md-12">
					<button type="submit" name="acao" value="incluir"
						class="btn btn-primary">Salvar</button>
					<a href="index.html" class="btn btn-default">Cancelar</a>
				</div>
			</div>
		</form>





	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>