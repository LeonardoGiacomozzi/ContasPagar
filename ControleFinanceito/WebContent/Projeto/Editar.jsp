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
<script type="text/javascript" src="Scripts/Valor.js"></script>
<meta charset="ISO-8859-1">

<title>Editar</title>

</head>
<body>
	<div class="container">
		<sql:query var="slq" dataSource="${ conect }">
							SELECT * FROM CONTASPAGAR WHERE CODIGO = ?;
						<sql:param value="${param.id }" />
		</sql:query>
		<c:forEach var="codigo" items="${ slq.rows }">
			<form action="Dao/update.jsp" method="post"
				enctype="multipart-formData">
				<div id="cadastroContas">
					<h1>Contas Editar</h1>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Código:</span> <input
								type="number" name="cod" required class="form-control"
								value="${codigo.codigo}" disabled >
								<input
								type="number" name="codCopy" hidden="" 
								value="${codigo.codigo}" >
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Nome Credor:</span> <input
								type="text" name="nomeCredor" required class="form-control"
								value="${codigo.nomecredor}">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Valor Bruto:</span> <input
								type="number" name="valorBruto" required class="form-control"
								value="${codigo.valorbruto}" id="Bruto" onchange="calcular()">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Valor Desconto:</span> <input
								type="number" name="valorDesc" required class="form-control"
								value="${codigo.valordesconto}" id="Desconto"
								onchange="calcular()">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Limite Crédito:</span> <input
								type="number" name="limiteCred" required class="form-control"
								value="${codigo.limitecredito}">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Juros:</span> <input
								type="number" name="juros" required class="form-control"
								value="${codigo.juros}">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Endereço:</span> <input
								type="text" name="endereco" required class="form-control"
								value="${codigo.endereco}">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">Valor a Pagar:</span> <input onchange="atualizaValor()"
								type="number" name="valorPago" required class="form-control"
								value="${codigo.valorpago }" id="pagar" disabled disabled step="0.01" maxlength="10" >
								 <input
								type="number" name="valorPagoCopy" id="pagarCopy" value="${codigo.valorpago }" hidden="">
						</div>
					</div>
					<div class="form-group">
						<button class="form-control" type="submit" id="cadastrar">Salvar</button>
						<a href="visualizarTudo.jsp">Voltar</a>
					</div>
				</div>
			</form>
		</c:forEach>
	</div>
</body>
</html>