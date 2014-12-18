<%@page import="bean.ExpedienteBean"%>
<%@page import="java.util.ArrayList"%>

<%@ taglib uri="misTags" prefix="tag"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ServletConsultaExpediente">
		<tag:miCombo nombre="cboCategoria" sql="SQL_CATEGORIA" />
		<input type="submit" value="Consultar" />
	</form>


	<div>
		<%
			ArrayList<ExpedienteBean> lista =  (ArrayList<ExpedienteBean>) request.getAttribute("lista");
			if(lista!=null)
			{
		%>
		<table border="1">
			<tr>
				<th>IDEXPEDINTE</th>
				<th>IDTIPOEXPEDIENTE</th>
				<th>CODIGO</th>
				<th>SUMILLA</th>
				<th>FECHA REGISTRO</th>
				<th>FECHA PUBLICACIÓN</th>
				<th>ENTIDAD</th>
				
			</tr>
			<%
				for(ExpedienteBean p:lista){
			%>
			<tr>
				<td><%=p.getIdExpediente()%></td>
				<td><%=p.getIdTipoExpediente()%></td>
				<td><%=p.getCodigo()%></td>
				<td><%=p.getSumilla()%></td>
				<td><%=p.getFecharegistro()%></td>
				<td><%=p.getFechaPublicacion()%></td>
				<td><%=p.getEntidad()%></td>
			</tr>
			<%
				}
						}
			%>
		</table>
	</div>

</body>
</html>