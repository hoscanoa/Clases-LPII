package tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;

public class TagFila implements Tag {
	private PageContext contexto;
	private String etiqueta;
	private String nombre;
	private String tipo;

	public String getEtiqueta() {
		return etiqueta;
	}

	public void setEtiqueta(String etiqueta) {
		this.etiqueta = etiqueta;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doStartTag() throws JspException {
		JspWriter outHTML = contexto.getOut();
		try {
			int tipo = Integer.parseInt(this.tipo);
			String tipoControl = "";
			if (tipo == 1)
				tipoControl = "password";
			else
				tipoControl = "text";
			
			outHTML.write("<tr>");
			outHTML.write("<td>" + this.etiqueta + "</td>");
			outHTML.write("<td><input type='" + tipoControl 
					+ "' name='"+ this.nombre + "'/></td>");
			outHTML.write("</tr>");
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public Tag getParent() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void release() {
		// TODO Auto-generated method stub

	}

	@Override
	public void setPageContext(PageContext arg0) {
		contexto = arg0;
	}

	@Override
	public void setParent(Tag arg0) {
		// TODO Auto-generated method stub

	}

}
