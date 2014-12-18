<%@ taglib uri="misTags" prefix="tag"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="ConsultarServlet" method="post">
		Carrera
		<tag:ComboBD aliasSql="SQL_CARRERA" nombre="cboCarrera" />
		<input type="submit" value="Consultar">
	</form>

	<display:table name="sessionScope.lista" pagesize="5" export="true">
		<display:column property="id" title="ID"></display:column>
		<display:column property="nombres" title="Nombres" sortable="true"></display:column>
		<display:column property="apellidos" title="Apellidos" sortable="true"></display:column>
		<display:column><a href="eliminarAlumno?id=${aux.idAlumno}">Eliminar</a></display:column>
	</display:table>

</body>
</html>