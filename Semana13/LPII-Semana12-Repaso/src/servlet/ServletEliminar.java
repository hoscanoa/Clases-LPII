package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Alumno;
import daofactory.AlumnoDAO;
import daofactory.Factory;

/**
 * Servlet implementation class ServletEliminar
 */
@WebServlet("/eliminaAlumno")
public class ServletEliminar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int idCarrera = Integer.parseInt(request.getParameter("id"));

		Factory fabrica = Factory.getTipo(Factory.TIPO_MYSQL);
		AlumnoDAO dao = fabrica.getAlumnoDAO();

		int salida;

		try {
			salida = dao.eliminar(idCarrera);

			request.getRequestDispatcher("/ConsultaAlumno.jsp").forward(
					request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
