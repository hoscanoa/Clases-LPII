package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.JugueteBean;
import dao.Factory;
import dao.JugueteDAO;

/**
 * Servlet implementation class RegistrarJugueteServlet
 */
@WebServlet("/ConsultarJugueteServlet")
public class ConsultarJugueteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int idTipo = Integer.parseInt(request.getParameter("tipo"));
		int idMarca = Integer.parseInt(request.getParameter("marca"));

		Factory fabrica = Factory.getFactory(Factory.TIPO_MYSQL);
		JugueteDAO dao = fabrica.getJugueteDAO();

		List<JugueteBean> lista = dao.listar(idTipo, idMarca);
		request.getSession(true).setAttribute("lista", lista);
		request.getRequestDispatcher("VerConsultarServlet").forward(request,
				response);

	}

}
