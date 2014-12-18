package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ExpedienteBean;
import bean.ProductoBean;

import DAOFactory.DAOExpediente;
import DAOFactory.DAOProducto;
import DAOFactory.Factory;

/**
 * Servlet implementation class ServletConsultaProducto
 */
@WebServlet("/ServletConsultaExpediente")
public class ServletConsultaExpediente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String idCategoria = request.getParameter("cboCategoria");
		System.out.println(idCategoria);
		
		try {
			Factory fabrica = Factory.getTipo(Factory.TIPO_MYSQL);
			DAOExpediente dao = fabrica.getDAOExpediente();
			ArrayList<ExpedienteBean> lista = dao.listar(idCategoria);

			request.setAttribute("lista", lista);

			request.getRequestDispatcher("/Principal.jsp").forward(request,
					response);

		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
