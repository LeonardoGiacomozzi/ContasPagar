<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>

<link
	href="https://fonts.googleapis.com/css?family=Noticia+Text|Orbitron"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="Style/styleIndex.css">

<meta charset="ISO-8859-1">

<title>Contas a Pagar Cadastro</title>

</head>
<body>
	<div class="container">
		<form action="Dao/Insere.jsp" method="post"
			enctype="multipart-formData">
			<div id="cadastroContas">
				<h1>Contas Cadastro</h1>
				<sql:query var="qryEstados" dataSource="${ conect }" >
					SELECT CODIGO FROM CONTASPAGAR;
				</sql:query>
				<c:forEach var="codigo" items="${ qryEstados.rows }"></c:forEach>						
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Código:</span> <input
							type="number" name="cod" required class="form-control"
							value="${ codigo.codigo + 1 }" disabled>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Nome Credor:</span> <input
							type="text" name="nomeCredor" required class="form-control"
							value="">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Valor Bruto:</span> <input
							type="number" name="valorBruto" required class="form-control"
							value="">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Valor Desconto:</span> <input
							type="number" name="valorDesc" required class="form-control"
							value="">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Limite Crédito:</span> <input
							type="number" name="limiteCred" required class="form-control"
							value="">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Juros:</span> <input type="number"
							name="juros" required class="form-control" value="">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Endereço:</span> <input
							type="text" name="endereco" required class="form-control"
							value="">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">Valor a Pagar:</span> <input
							type="number" name="valorPago" required class="form-control"
							value="${ param.valorPago }" disabled>
					</div>
				</div>
				<div class="form-group">
					<button class="form-control" type="submit" id="cadastrar">Cadastrar</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>