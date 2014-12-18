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
 * Servlet implementation class ConsultarClienteDisplayTag
 */
@WebServlet("/ConsultarClienteDisplayTag")
public class ConsultarClienteDisplayTag extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Cliente> clientes = new ArrayList<Cliente>();

		for (int i = 1; i <= 25; i++) {
			clientes.add(new Cliente(i, "Nombres" + i, "Apellidos" + i));
		}

		request.getSession(true).setAttribute("clientes", clientes);

		request.getRequestDispatcher("demoDisplayTag.jsp").forward(request,
				response);
	}

}
