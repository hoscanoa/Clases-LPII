package tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;

public class TagCicloDeVida implements Tag {

	//Declarar una variable pagecontext para obtener el contexto
	
	private PageContext contexto; 
	
	@Override
	public void setPageContext(PageContext arg0) {
		//Se asigna el contexto
		contexto = arg0;
		System.out.println("TAG -> Se establece el contexto");
	}

	@Override
	public void setParent(Tag arg0) {
		System.out.println("TAG -> Se establece el padre ");
	}
	
	@Override
	public int doStartTag() throws JspException {
		System.out.println("TAG -> dibujar o generar el TAG ");
		// Para imprimir contenido HTML, usamos JspWriter 
		JspWriter outHTML =contexto.getOut();
		try {
			outHTML.write("<label>En el  doStartTag</label>");
			outHTML.write("<br/>");
		} catch (IOException e) {
			// TODO: handle exception
		}
		//Tag.EVAL_BODY_INCLUDE
		//Tag.SKIP_BODY
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
