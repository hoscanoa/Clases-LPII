<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicio</title>
</head>
<body>
	<h1>Sepa donde votar</h1>

	<form action="solicitud">
		<table>
			<tr>
				<td>DNI:</td>
				<td><input type="text" name="dni">
				</td>
			</tr>
			<tr>
				<td>Nombre:</td>
				<td><input type="text" name="nombre">
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Consultar"></td>
			</tr>
		</table>
	</form>


</body>
</html>