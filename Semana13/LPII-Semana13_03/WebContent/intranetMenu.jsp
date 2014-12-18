<%@page import="demo.recursos.beans.*"%>
<%@page import="java.util.*"%>

<TABLE width="100%">

	<TR>
		<td>&nbsp;</td>
	</TR>
	<TR>
		<TD><A class=SiteLinkBold href="intranetPrincipal.jsp">
				Principal </A>
		<TD>
	</TR>
	<TR>
		<td>&nbsp;</td>
	</TR>
	<TR>
		<TD><A class="SiteLinkBold" href="#"> Categoria </A></TD>
	</TR>
	<TR>
		<TD><A class="SiteLinkBold" href="#"> Producto </A></TD>
	</TR>
	<TR>
		<td>&nbsp;</td>
	</TR>
	<TR>
		<TD><A class="SiteLinkBold" HREF="ServletLogin?tipo=salir">
				Salir </A></TD>
	</TR>
	<TR>
		<td>&nbsp;</td>
	</TR>
	<TR>
		<td>&nbsp;</td>
	</TR>
	<TR>
		<%
			BeanUsuario bean = (BeanUsuario) session
					.getAttribute("usuario_logeado");
		%>
		<TD class="TextoMenu">Bienvenido Sr (a) :<br> <%=bean.getNombre()%>
			<%=bean.getApellido()%>
		</TD>
	</TR>
	<TR>
		<td>&nbsp;</td>
	</TR>
	<TR>
		<td>&nbsp;</td>
	</TR>
	<TR>
		<td class="TextoMenu">Usuarios en Línea:</td>
	</tr>
	<tr>
		<td class="TextoMenu">
		<%
			Hashtable<Integer,String> usuariosEnLinea =
				(Hashtable<Integer, String>) 
					application.getAttribute("usuariosEnLinea");
			
			if(usuariosEnLinea != null)
			{
				for(String usuario : usuariosEnLinea.values()){
			%>
				- <%= usuario %><br/>
			<%
				}
			}
		%>
		</td>
	</TR>

	<TR>
		<TD class="TextoMenu"></TD>
	</TR>

</TABLE>










