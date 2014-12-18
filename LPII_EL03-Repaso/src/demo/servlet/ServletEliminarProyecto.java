package demo.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo.daofactory.Factory;
import demo.daofactory.ProyectoDAO;

/**
 * Servlet implementation class ServletEliminarProyecto
 */
@WebServlet("/ServletEliminarProyecto")
public class ServletEliminarProyecto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		try {
			Factory fabrica = Factory.getTipo(Factory.TIPO_MYSQL);
			ProyectoDAO dao = fabrica.getProyectoDAO();
			dao.eliminar(id);

			request.getRequestDispatcher("/Consulta1.jsp").forward(request,
					response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
