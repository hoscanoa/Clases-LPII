package demo.tags;

import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import demo.bean.ComboBean;
import demo.daofactory.ComboDAO;
import demo.daofactory.Factory;

public class ComboTag extends TagSupport {

	private String nombre, aliasSQL;

	public String getNombre() {
		return nombre;
	}

	public String getAliasSQL() {
		return aliasSQL;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setAliasSQL(String aliasSQL) {
		this.aliasSQL = aliasSQL;
	}

	@Override
	public int doStartTag() throws JspException {
		JspWriter outHTML = pageContext.getOut();

		try {
			outHTML.println("<select name='" + this.nombre + "'>");
			outHTML.println("<option>[Seleccione]</option>");

			Factory fabrica = Factory.getTipo(Factory.TIPO_MYSQL);
			ComboDAO dao = fabrica.getComboDAO();

			// Leer el archivo de properties "infoSql"
			ResourceBundle rb = ResourceBundle.getBundle("infoSql");
			// Se obtiene el SQL correcto
			String sentenciaSQL = rb.getString(this.aliasSQL);

			// Se obtiene la lista
			List<ComboBean> lista = dao.ejecutarSQL(sentenciaSQL);

			for (ComboBean bean : lista) {
				outHTML.println("<option value='" + bean.getClave() + "'>");
				outHTML.println(bean.getValor());
				outHTML.println("</option>");
			}

			outHTML.println("</select>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return super.doStartTag();
	}

}
