<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/displaytag.css">

</head>
<body>

	<display:table name="sessionScope.clientes" pagesize="5" export="true">
		<display:column property="codigo" title="Código" ></display:column>
		<display:column property="nombres" title="Nombres" sortable="true"></display:column>
		<display:column property="apellidos" title="Apellidos" sortable="true"></display:column>
	</display:table>
</body>
</html>