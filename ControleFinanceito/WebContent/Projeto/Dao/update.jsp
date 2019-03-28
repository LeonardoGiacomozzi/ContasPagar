<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Contas</title>

</head>
<body>
	<sql:transaction dataSource="${ conect }">
		<sql:update var="atualizaProva">
				UPDATE CONTASPAGAR SET NOMECREDOR = ?, VALORBRUTO = ?, VALORDESCONTO = ?, LIMITECREDITO = ?, JUROS = ?, ENDERECO = ?, VALORPAGO = ? WHERE CODIGO = ?
				<sql:param value="${param.nomeCredor }" />
			<sql:param value="${param.valorBruto}" />
			<sql:param value="${param.valorDesc}" />
			<sql:param value="${param.limiteCred}" />
			<sql:param value="${param.juros}" />
			<sql:param value="${param.endereco}" />
			<sql:param value="${param.valorPagoCopy }" />
			<sql:param value="${param.codCopy}" />
		</sql:update>
	</sql:transaction>

	<c:redirect url="../visualizarTudo.jsp"></c:redirect>

	<c:out value="${param.cod}"></c:out>

</body>
</html>