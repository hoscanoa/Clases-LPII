<%@page import="bean.ProductoBean"%>
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
	<form action="ListarProductosServlet" method="get">
		<tag:miCombo nombre="cboCategoria" sql="SQL_CATEGORIA" />
		<input type="submit" value="Listar">
	</form>

	<br>

	<%
		ArrayList<ProductoBean> lista = (ArrayList<ProductoBean>) request
				.getAttribute("lista");

		if (lista != null) {
	%>
	<table>
		<%
			for (int i = 0; i < lista.size(); i++) {
		%>
			<tr>
			<td><%= lista.get(i).getIdproducto() %></td>
			<td><%= lista.get(i).getNombre() %></td>
			</tr>
		<%
			}
		%>

	</table>

	<%
		}
	%>

</body>
</html>