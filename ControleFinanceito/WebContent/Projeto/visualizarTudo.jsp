<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<script	src="Scripts/PassaParam.js"></script>
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

<title>Vizualizar Tudo</title>

</head>
<body>
	<div class="container">
		<div id="cadastroContas">
			<h1>Visualizar Contas</h1><br>
			<sql:query var="qryConsultaTudo" dataSource="${ conect }">
				SELECT * FROM CONTASPAGAR;
			</sql:query>
			<a href="cadastroConta.jsp">Cadastrar Novo</a>
			<c:forEach var="get" items="${ qryConsultaTudo.rows }">
				<h4>Conta número: ${ get.codigo }</h4>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Código</th>
							<th scope="col">Nome Credor</th>
							<th scope="col">Valor Bruto</th>
							<th scope="col">Valor Desconto</th>
							<th scope="col">Limite Crédito</th>
							<th scope="col">Juros</th>
							<th scope="col">Endereço</th>
							<th scope="col">Valor Total</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${ get.codigo }</td>
							<td>${ get.nomecredor }</td>
							<td>${ get.valorbruto }</td>
							<td>${ get.valordesconto }</td>
							<td>${ get.limitecredito }</td>
							<td>${ get.juros }</td>
							<td>${ get.endereco }</td>
							<td>${ get.valorpago }</td>
						</tr>
					</tbody>
				</table>
				<form action="Editar.jsp" method="post">
					<input type="text" hidden="" name="id" value="${get.codigo}" >
					<button type="submit">Ver Mais</button>
				</form>
				<br><br>
			</c:forEach>
		</div>
	</div>
</body>
</html>