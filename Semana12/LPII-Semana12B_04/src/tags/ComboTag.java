package tags;

import java.util.ArrayList;
import java.util.ResourceBundle;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import bean.ComboBean;

import daofactory.ComboDAO;
import daofactory.Factory;

public class ComboTag extends TagSupport {
	
	String nombre, aliasSql;

	public String getNombre() {
		return nombre;
	}

	public String getAliasSql() {
		return aliasSql;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setAliasSql(String aliasSql) {
		this.aliasSql = aliasSql;
	}
	
	@Override
	public int doStartTag() throws JspException {
		JspWriter outHTML = pageContext.getOut();
		try {
			outHTML.println("<select name='" + nombre + "'>");
			outHTML.println("<option>[Seleccione]</option>");
			
			Factory fabrica = Factory.getTipo(1);
			ComboDAO dao = fabrica.getComboDAO();
			
			ResourceBundle rb = ResourceBundle.getBundle("infoSql");
			String sentenciaSQL = rb.getString(aliasSql);
			
			ArrayList<ComboBean> lista = dao.ejecutarSQL(sentenciaSQL);
			for (ComboBean bean : lista) {
				outHTML.println("<option value='" + bean.getClave() + "'>");
				outHTML.println(bean.getTexto());
				outHTML.println("</option>");
			}
			
			outHTML.println("</select>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return super.doStartTag();
	}
	
	

}





