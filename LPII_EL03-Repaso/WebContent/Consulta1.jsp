<%@ taglib uri="misTags" prefix="tag"%>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="display"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta</title>
<link href="css/displaytag.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<h1>Proyectos por prioridad</h1>

	<form action="ConsultarProyecto" method="post">
		Prioridad :
		<tag:miCombo aliasSQL="SQL_PRIORIDAD" nombre="cboPrioridad" />

		<input type="submit" value="Consultar" />
	</form>

	<display:table name="sessionScope.proyectos" id="aux" pagesize="5">
		<display:column property="idproyecto" title="ID"></display:column>
		<display:column property="nombre" title="Proyecto"></display:column>
		<display:column property="categoria" title="Categoría"></display:column>
		<display:column property="tipoproyecto" title="Tipo"></display:column>
		<display:column property="dias" title="Duración (días)"></display:column>
		<display:column property="nombreprioridad" title="Prioridad"></display:column>
		<display:column>
		<a href="ServletEliminarProyecto?id=${aux.idproyecto}" >Eliminar</a>
		</display:column>
	</display:table>

</body>
</html>