package tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;

public class TagMensajeConAtributos implements Tag {

	// Declarar una variable pagecontext para obtener el contexto

	private PageContext contexto;

	private String texto;
	private String color;

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Override
	public void setPageContext(PageContext arg0) {
		// Se asigna el contexto
		contexto = arg0;
	}

	@Override
	public void setParent(Tag arg0) {

	}

	@Override
	public int doStartTag() throws JspException {
		System.out.println("TAG -> dibujar o generar el TAG ");
		// Para imprimir contenido HTML, usamos JspWriter
		JspWriter outHTML = contexto.getOut();
		try {
			outHTML.write("<font color='" + this.color + "'>");
			outHTML.write(this.texto);
			outHTML.write("</font>");
		} catch (IOException e) {
			// TODO: handle exception
		}
		// Tag.EVAL_BODY_INCLUDE
		// Tag.SKIP_BODY
		return Tag.EVAL_BODY_INCLUDE;

	}

	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
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

}
