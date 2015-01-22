package servlet;

import java.io.IOException;

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
@WebServlet("/RegistrarJugueteServlet")
public class RegistrarJugueteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		int idTipo = Integer.parseInt(request.getParameter("tipo"));
		int idMarca = Integer.parseInt(request.getParameter("marca"));
		double precio = Double.parseDouble(request.getParameter("precio"));

		Factory fabrica = Factory.getFactory(Factory.TIPO_MYSQL);
		JugueteDAO dao = fabrica.getJugueteDAO();
		JugueteBean obj = new JugueteBean(0, nombre, idTipo, idMarca, precio);
		int salida = dao.registrar(obj);
		request.setAttribute("salida", salida);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
