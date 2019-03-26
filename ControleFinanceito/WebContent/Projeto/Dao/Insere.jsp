<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<title>Insere Prova</title>
</head>
<body>
	<c:catch var="erro">
		<sql:transaction dataSource="${ conect }">
			<sql:update var="insereProva">
				INSERT INTO CONTASPAGAR (NOMECREDOR, VALORBRUTO, VALORDESCONTO, LIMITECREDITO, JUROS, ENDERECO, VALORPAGO) VALUES (?, ?, ?, ?, ?, ?, ?);
				<sql:param value="${ param.nomeCredor }" />
				<sql:param value="${ param.valorBruto }" />
				<sql:param value="${ param.valorDesc }" />
				<sql:param value="${ param.limiteCred }" />
				<sql:param value="${ param.juros }" />
				<sql:param value="${ param.endereco}" />
				<sql:param value="${ param.valorBruto - param.valorDesc }" />
			</sql:update>
		</sql:transaction>
	</c:catch>
	<c:redirect url="../login.jsp"></c:redirect>
</body>
</html>