<!-- Importar las librerias de entidad y de arraylist  -->
<%@ page import="entidad.Usuario"%>
<%@ page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Usuario</title>
<link href="estilos/facilito.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- Se obtiene la lista -->
	<%
		ArrayList<Usuario> lista = (ArrayList<Usuario>)request.getAttribute("mi_lista");
	%>
	<table align="center">
		<tr>
			<td colspan="2" align="center"><jsp:include page="cabecera.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td><jsp:include page="menu.jsp"></jsp:include></td>
			<td>
				<!-- Se muestran los datos en una tabla -->
				<table align="center">
					<tr>
						<td>
							<table align="center" class="control">
								<tr>
									<th>Código</th>
									<th>Nombres</th>
									<th>Apellidos</th>
									<th>Sexo</th>
									<th>Edad</th>
									<th>Usuario</th>
									<th>Actualizar</th>
									<th>Eliminar</th>
								</tr>
								<%
						for(int i=0; i<lista.size(); i++){
							Usuario u = lista.get(i);
					%>
								<tr>
									<td><%=u.getCodigo()%></td>
									<td><%=u.getNombre()%></td>
									<td><%=u.getApellidos()%></td>
									<td><%=u.getGenero()%></td>
									<td><%=u.getEdad()%></td>
									<td><%=u.getUsuario()%></td>
									<td><a
										href="actualizarUsuario.jsp?codigo=<%=u.getCodigo()%>
										&nombre=<%=u.getNombre()%>
										&apellidos=<%=u.getApellidos()%>
										&genero=<%=u.getGenero()%>
										&edad=<%=u.getEdad()%>
										&usuario=<%=u.getUsuario()%>
										&clave=<%=u.getClave()%>">Actualizar</a>
									</td>
									<td><a
										href="ServletMantenimiento?operacion=eliminar?codigo=<%=u.getCodigo()%>">Eliminar</a>
									</td>
								</tr>
								<%
						}
					%>
							</table></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="pie.jsp"></jsp:include></td>
		</tr>
	</table>
</body>
</html>





