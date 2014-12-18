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
	
	String nombre, aliasSQL;

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getAliasSQL() {
		return aliasSQL;
	}

	public void setAliasSQL(String aliasSQL) {
		this.aliasSQL = aliasSQL;
	}
	
	@Override
	public int doStartTag() throws JspException{
		JspWriter outHTML = pageContext.getOut();
		
		try {
			outHTML.write("<select name='" + nombre + "'>");
			outHTML.write("<option>[Seleccione]</option>");
			
			Factory fabrica = Factory.getTipo(Factory.TIPO_MYSQL);
			ComboDAO dao = fabrica.getComboDAO();
			
			ResourceBundle rb = ResourceBundle.getBundle("infoSql");
			String sentenciaSQL = rb.getString(aliasSQL);
			
			ArrayList<ComboBean> lista = dao.ejecutarSql(sentenciaSQL);
			for (ComboBean bean : lista) {
				outHTML.write("<option value='" + bean.getClave() + "'>");
				outHTML.write(bean.getValor());
				outHTML.write("</option>");
			}
			
			outHTML.write("</select>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return super.doStartTag();
	}
}











