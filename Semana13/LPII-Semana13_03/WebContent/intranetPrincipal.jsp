
<html>
<head>
<title>Bienvenido a la Intranet</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>



<body background="images/apoyos/fondointranetsinfondo.jpg"
	leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0"
	marginheight="0" marginwidth="0">

<table cellspacing="0" cellpadding="0" width="100%" border="0">
	<tr>
		<td colspan="2">
			<jsp:include page="intranetCabecera.jsp" />
		</td>
	</tr>
	<tr>
		<td valign="top" width="190">
			<jsp:include page="intranetMenu.jsp" />
		</td>
		<td align="center" valign="top">
			<jsp:include page="intranetCuerpo.jsp" />
		</td>
	</tr>

</table>
</body>
</html>
