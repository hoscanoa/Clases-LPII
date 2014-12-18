package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletSolicitud
 */
@WebServlet("/solicitud")
public class ServletSolicitud extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String dni = request.getParameter("dni");
		String nombre = request.getParameter("nombre");

		String mensaje = "";
		char caracter = dni.charAt(0);

		int valor = Integer.parseInt("" + caracter);

		if (valor <= 3) {
			mensaje = "Los Olivos";
		} else if (valor <= 6) {
			mensaje = "Independencia";
		} else {
			mensaje = "San Martìn";
		}

		request.setAttribute("mi_mensaje", mensaje);
		request.setAttribute("mi_nombre", nombre);

		request.getRequestDispatcher("/respuesta.jsp").forward(request,
				response);

	}

}
