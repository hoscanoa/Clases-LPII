<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="misTags" prefix="tag"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/displaytag.css" type="text/css">

<title>Registro de Juguete</title>
</head>
<body>
	<h1>Consulta de Juguete</h1>
	<form action="ConsultarJugueteServletV2" method="get">
		<table>
			<tr>
				<td>Tipo Juguete:</td>
				<td><tag:miCombo name="tipo" aliasSql="TIPOS" /></td>
			</tr>
			<tr>
				<td>Marca del Juguete:</td>
				<td><tag:miCombo name="marca" aliasSql="MARCAS" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Consultar"></td>
			</tr>
		</table>
	</form>

	<display:table name="sessionScope.lista" pagesize="5" export="true">
		<display:column property="idJuguete" title="Codigo"></display:column>
		<display:column property="nombre" title="Nombre" sortable="true"></display:column>
		<display:column property="tipo" title="Tipo"></display:column>
		<display:column property="marca" title="Marca"></display:column>
		<display:column property="precio" title="Precio"></display:column>
	</display:table>

</body>
</html>