<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Respuesta</title>
</head>
<body>
	<!-- SCRIPLET: PERMITE CREAR CODGO JAVA -->
	<%
		String mensaje = (String) request.getAttribute("mi_mensaje");
		String nombre = (String) request.getAttribute("mi_nombre");
	%>

	<h1>
		Sr(a).
		<%=nombre%>, le toca votar en:
	</h1>
	<!-- Expression: Permite mostrar un valor en java en HTML -->
	<h3><%=mensaje%></h3>


</body>
</html>