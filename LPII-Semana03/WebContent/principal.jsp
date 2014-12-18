<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="estilos/facilito.css" rel="stylesheet" type="text/css" />

<title>Insert title here</title>
</head>
<body>
	<%
		String nombre = (String) request.getAttribute("nom");
		String apellidos = (String) request.getAttribute("ape");
		String genero = (String) request.getAttribute("gen");
		String edad = (String) request.getAttribute("eda");
	%>

	<table align="center">
		<tr>
			<td colspan="2" align="center"><jsp:include page="cabecera.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td><jsp:include page="menu.jsp"></jsp:include></td>
			<td>
				<table class="control">
					<tr>
						<td colspan="2">Bienvenido(a):<%=nombre + " " + apellidos%> <br />
							Sus datos son:</td>
					</tr>
					<tr>
						<td>Nombre</td>
						<td><%=nombre%></td>
					</tr>
					<tr>
						<td>Apellidos</td>
						<td><%=apellidos%></td>
					</tr>
					<tr>
						<td>Género</td>
						<td><%=genero%></td>
					</tr>
					<tr>
						<td>Edad</td>
						<td><%=edad%></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="pie.jsp"></jsp:include></td>
		</tr>
	</table>
</body>
</html>
