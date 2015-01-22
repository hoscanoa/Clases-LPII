<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link href="css/displaytag.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form action="ConsultarViajeServlet" method="get">
		<table>
			<tr>
				<td colspan="2">Cliente</td>
				<td><input type="text" name="razonSocial"></td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td>Fecha</td>
				<td>Desde</td>
				<td><input type="date" name="fechaDesde"></td>
				<td>Hasta</td>
				<td><input type="date" name="fechaHasta"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Consultar" /></td>
			</tr>
		</table>
	</form>
	
	<display:table name="lista" requestURI="ConsultarViajeServlet" id="aux" pagesize="5">
		<display:column property="idViaje" title="ID"></display:column>
		<display:column property="ruta" title="Ruta"></display:column>
		<display:column property="origen" title="Origen"></display:column>
		<display:column property="destino" title="Destino"></display:column>
		<display:column property="medio" title="Medio"></display:column>
		<display:column property="placa" title="Placa"></display:column>
		<display:column property="fechaPartida" title="Partida"></display:column>
		<display:column property="fechaLlegada" title="Llegada"></display:column>
		<display:column property="razonSocial" title="Cliente"></display:column>
		<display:column>
		<a href="EliminarViajeServlet?id=${aux.idViaje}">Eliminar</a>
		</display:column>
	</display:table>
	
	
</body>
</html>