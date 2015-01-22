package tag;

import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import bean.ComboBean;
import dao.ComboDAO;
import dao.Factory;

public class ComboTag extends TagSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private String aliasSql;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAliasSql() {
		return aliasSql;
	}
	public void setAliasSql(String aliasSql) {
		this.aliasSql = aliasSql;
	}

	public int doStartTag() throws JspException {
		JspWriter outHTML = pageContext.getOut();
		try {
			outHTML.println("<select name='" + this.name + "'>");
			outHTML.println("<option>[Seleccione]</option>");

			Factory factory = Factory.getFactory(Factory.TIPO_MYSQL);
			ComboDAO dao = factory.getComboDAO();
			ResourceBundle rb = ResourceBundle.getBundle("infoSql");
			String sql = rb.getString(this.aliasSql);

			List<ComboBean> lista = dao.ejecutarSql(sql);
			for (ComboBean bean : lista) {
				outHTML.println("<option value='" + bean.getId() + "'>"
						+ bean.getValor() + "</option>");
			}
			outHTML.println("</select>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return super.doAfterBody();
	}

}
