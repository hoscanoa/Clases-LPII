package demo.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo.dao.Factory;
import demo.dao.ViajeDAO;

/**
 * Servlet implementation class EliminarViajeServlet
 */
@WebServlet("/EliminarViajeServlet")
public class EliminarViajeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		Factory fabrica = Factory.getTipo(Factory.TIPO_MYSQL);
		ViajeDAO dao = fabrica.getViajeDAO();

		dao.eliminar(id);

		request.getRequestDispatcher("ConsultarViajeServlet").forward(request,
				response);
	}

}
