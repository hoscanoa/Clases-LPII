<html>
<head>
<title>Bienvenido al Portal Web</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="images/apoyos/fondointranetsinfondo.jpg" leftmargin="0"
	topmargin="0" rightmargin="0" bottommargin="0" marginheight="0"
	marginwidth="0">

<table cellspacing="0" cellpadding="0" width="100%" border="0">
	<tr>
		<td colspan="2"><jsp:include page="portalCabecera.jsp" /></td>
	</tr>
	<tr>
		<td valign="top" width="190"><jsp:include page="portalMenu.jsp" /></td>

		<td align="center" valign="top">
		<table border="0">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class=ContentHead width="650" align="center" valign="middle">
					Login
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>

		<form name="frmenvio" method="post" action="ServletLogin">
		<input type="hidden" name="tipo" value="logear"> 
		<table cellspacing="0" cellpadding="4">
			<tr>
				<td class="ListadoCabecera">Usuario</td>
				<td>
					<input name="txtLogin" type="text" size="25" />
				</td>
			</tr>
			<tr>
				<td class="ListadoCabecera">Password</td>
				<td>
					<input name="txtPassword" type="password" size="25" />
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
					<input type="image" name="btnLogin"	src="images/enlaces/ingresar.gif" border="0" />
				</td>
			</tr>
		</table>
		</form>
		</td>
	</tr>
</table>
</body>
</HTML>
