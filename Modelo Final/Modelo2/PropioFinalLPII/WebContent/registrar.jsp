<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

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
	<h1>Registro de Juguete</h1>
	<form action="RegistrarJugueteServlet" method="get">
		<table>
			<tr>
				<td>Nombre de Juguete:</td>
				<td><input type="text" name="nombre"></td>
			</tr>
			<tr>
				<td>Tipo Juguete:</td>
				<td><select name="tipo">
						<c:forEach items="${tipos}" var="tipo">
							<option value="${tipo.idTipo}"><c:out
									value="${tipo.descripcion}"></c:out></option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td>Marca del Juguete:</td>
				<td><select name="marca">
						<c:forEach items="${marcas}" var="marca">
							<option value="${marca.idMarca}"><c:out
									value="${marca.descripcion}"></c:out></option>
						</c:forEach>
				</select></td>
			</tr>

			<tr>
				<td>Precio del Juguete:</td>
				<td><input type="text" name="precio"></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Registrar"></td>
			</tr>

		</table>
	</form>
</body>
</html>