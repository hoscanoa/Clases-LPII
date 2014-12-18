package sevlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Cliente;

/**
 * Servlet implementation class Consultar
 */
@WebServlet("/Consultar")
public class Consultar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Cliente> clientes = new ArrayList<Cliente>();

		for (int i = 1; i <= 25; i++) {
			clientes.add(new Cliente(i, "Nombres" + i, "Apellidos" + i));
		}

		request.setAttribute("clientes", clientes);

		request.getRequestDispatcher("demoSimple.jsp").forward(request,
				response);

	}

}
