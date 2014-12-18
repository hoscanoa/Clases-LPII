package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ProductoBean;
import DAOFactory.DAOProducto;
import DAOFactory.Factory;

/**
 * Servlet implementation class ListarProductosServlet
 */
@WebServlet("/ListarProductosServlet")
public class ListarProductosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String value = request.getParameter("cboCategoria");

		ResourceBundle rb = ResourceBundle.getBundle("tags");

		Factory f = Factory.getTipo(Factory.TIPO_MYSQL);
		DAOProducto dao = f.getDAOProducto();
		ArrayList<ProductoBean> lista = null;
		try {
			lista = dao.listar(rb.getString("SQL_PRODUCTO")
					+ " WHERE idcategoria=" + value);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		request.setAttribute("lista", lista);

		request.getRequestDispatcher("Principal.jsp")
				.forward(request, response);

	}

}
