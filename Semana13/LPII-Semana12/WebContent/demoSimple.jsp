<%@page import="bean.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="//cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">

<script type="text/javascript"
	src="//cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js">
	
</script>


<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable').DataTable();
	});
</script>

</head>
<body>
	<%
		ArrayList<Cliente> clientes =(ArrayList<Cliente>) request.getAttribute("clientes");
		if(clientes!=null)
		{
	%>
	<table id="myTable">
		<thead>
			<th>Còdigo</th>
			<th>Nombres</th>
			<th>Apellidos</th>
		</thead>

		<tfoot>
			<th>Còdigo</th>
			<th>Nombres</th>
			<th>Apellidos</th>
		</tfoot>
		<tr>
			<%
				for(Cliente c : clientes){
			%>
			<td><%=c.getCodigo()%></td>
			<td><%=c.getNombres()%></td>
			<td><%=c.getApellidos()%></td>
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