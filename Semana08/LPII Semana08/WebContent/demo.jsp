<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="misTags" prefix="tag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		Antes del cuerpo <br />
		<tag:mensaje color="blue" texto="Hola hernan" />
		<tag:ciclo />
		<br /> Después del cuerpo
	</div>

	<div>
		<table>
			<tag:miTR etiqueta="Nombres" tipo="0" nombre="txtNombres"/>
			<tag:miTR etiqueta="Apellidos" tipo="0" nombre="txtApellidos"/>
			<tag:miTR etiqueta="Edad" tipo="0" nombre="txtEdad"/>
			<tag:miTR etiqueta="Usuario" tipo="0" nombre="txtUsuario"/>
			<tag:miTR etiqueta="Clave" tipo="1" nombre="txtClave"/>
			
		</table>
	</div>

</body>
</html>