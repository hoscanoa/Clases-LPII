<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie cookie = null;
		Date fecha = new Date();
		String texto = "Cookie el " + fecha.toString();

		cookie = new Cookie("mi_cookie", texto);

		cookie.setMaxAge(60);
		//Quien podrà usar la cookie, si solo va "/" es toda la app
		cookie.setPath("/");
		//Agregar la cooie al cliente
		response.addCookie(cookie);
	%>
	<p>Cookie Creada</p>
	<a href="leerCookie.jsp">Leer Cookie</a>
</body>
</html>