<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Importando los estilos -->
<link href="estilos/facilito.css" rel="stylesheet" type="text/css" />

<!-- Importar las librerias de Jquery para validar datos -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/jquery.metadata.js"></script>


<title>Insert title here</title>
</head>
<body>
	<%
		String mensaje = (String) request.getAttribute("mensaje");
		if (mensaje == null)
			mensaje = "";
	%>

	<form action="ServletIniciarSesion" method="post">
		<table align="center">
			<tr>
				<td colspan="2"><img alt="logo" src="imagenes/logo_tiny.png" />
				</td>
			</tr>

			<tr>
				<td colspan="2"><h2>Iniciar Sesiòn</h2></td>
			</tr>
			<tr>
				<td>Usuario</td>
				<td align="right"><input type="text" name="usuario" size="22" />
				</td>
			</tr>
			<tr>
				<td>Clave</td>
				<td align="right"><input type="password" name="clave" size="22" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Ingresar" class="boton" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><%=mensaje%></td>
			</tr>
		</table>

		<table align="center" class="etiqueta">
			<tr>
				<td><a href="CambiarClave.jsp">Cambiar Clave</a></td>
			</tr>
		</table>


	</form>

</body>
</html>