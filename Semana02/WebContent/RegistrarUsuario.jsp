<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="estilos/facilito.css">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/jquery.metadata.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#dataUsuario").validate();
	});
</script>


<title>Registro de Usuario</title>
</head>
<body>
	<form action="ServletMantenimiento" id="dataUsuario">
		<table class="mitabla">
			<tr>
				<td colspan="2">Registro de Usuario</td>
			</tr>
			<tr>
				<td colspan="2"><input type="hidden" name="operacion"
					value="registrar" /></td>
			</tr>
			<tr>
				<td>Nombres</td>
				<td><input type="text" name="nombre" id="nom" class="required" /></td>
			</tr>
			<tr>
				<td>Apellidos</td>
				<td><input type="text" name="apellidos" id="ape"
					class="required" /></td>
			</tr>
			<tr>
				<td>Edad</td>
				<td><input type="text" name="edad" id="eda"
					class="{required:true,number:true,rangelength:[1,2],min:[18]}" /></td>
			</tr>
			<tr>
				<td>Género</td>
				<td><input type="radio" name="genero" value="Masculino" />Masculino
					</br> <input type="radio" name="genero" value="Femenino" />Femenino</td>
			</tr>
			<tr>
				<td>Usuario</td>
				<td><input type="text" name="usuario" id="usu" class="required" /></td>
			</tr>
			<tr>
				<td>Clave</td>
				<td><input type="text" name="clave" id="cla" class="required" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Registrar" class="boton" /></td>
				<td><input type="submit" value="Limpiar" class="boton" /></td>
			</tr>
		</table>
	</form>
</body>
</html>