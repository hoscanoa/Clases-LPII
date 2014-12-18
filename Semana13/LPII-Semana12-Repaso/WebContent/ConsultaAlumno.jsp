<%@ taglib uri="misTags" prefix="tag"%>

<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link href="css/displaytag.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form action="ServletConsultar" method="post">
		Carrera
		<tag:ComboBD aliasSQL="SQL_CARRERA" nombre="cboCarrera" />
		<input type="submit" value="Consultar" />
	</form>

	<display:table name="lista" pagesize="2" requestURI="ServletConsultar"
		id="aux">
		<display:column property="idAlumno" title="Código"></display:column>
		<display:column property="nombre" title="Nombres"></display:column>
		<display:column property="apellido" title="Apellidos"></display:column>
		<display:column property="nombreCarrera" title="carrera"></display:column>
		<display:column>
			<a href="eliminaAlumno?id=${aux.idAlumno}"> Elimina </a>
		</display:column>
	</display:table>
</body>
</html>