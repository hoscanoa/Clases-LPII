<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entidad.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado Usuario</title>
</head>
<body>
	<%
		ArrayList<Usuario> listaUsu = (ArrayList<Usuario>) request.getAttribute("mi_lista");
	%>
	<table align="center" class="control">
		<tr>
			<th>Codigo</th>
			<th>Nombres</th>
			<th>Apellidos</th>
			<th>Gènero</th>
			<th>Edad</th>
			<th>Usuario</th>
			<th>Clave</th>
		</tr>
		<%
			for(int i=0;i<listaUsu.size();i++ )
			{
				Usuario u = listaUsu.get(i);
		%>
		<tr>
			<td><%=u.getCodigo()%></td>
			<td><%=u.getNombre()%></td>
			<td><%=u.getApellidos()%></td>
			<td><%=u.getGenero()%></td>
			<td><%=u.getEdad()%></td>
			<td><%=u.getUsuario()%></td>
			<td><%=u.getClave()%></td>
		<tr>
			<%
				}
			%>
		
	</table>
</body>
</html>