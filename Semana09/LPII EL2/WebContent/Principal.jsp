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
	<form action="ServletConsultaProducto">
		<tag:miCombo nombre="cboCategoria" sql="SQL_CATEGORIA" />
		<input type="submit" value="Consultar" />
	</form>


	<div>
		<%
			ArrayList<ProductoBean> lista =  (ArrayList<ProductoBean>) request.getAttribute("lista");
			
			if(lista!=null)
			{
		%>
		<table border="1">
			<tr>
				<th>IdProducto</th>
				<th>Nombre</th>
				<th>Marca</th>
				<th>Precio</th>
				<th>Stock</th>
				<th>IdCategoria</th>
				<th>Descripción</th>
			</tr>
			<%
				for(ProductoBean p:lista){
			%>
			<tr>
				<td><%=p.getIdproducto()%></td>
				<td><%=p.getNombre()%></td>
				<td><%=p.getMarca()%></td>
				<td><%=p.getPrecio()%></td>
				<td><%=p.getStock()%></td>
				<td><%=p.getIdcategoria()%></td>
				<td><%=p.getDescripcion()%></td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</div>

</body>
</html>