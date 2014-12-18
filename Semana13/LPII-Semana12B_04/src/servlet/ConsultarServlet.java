package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.AlumnoBean;

import daofactory.AlumnoDAO;
import daofactory.Factory;

/**
 * Servlet implementation class ConsultarServlet
 */
@WebServlet("/ConsultarServlet")
public class ConsultarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String idCarrera = request.getParameter("cboCarrera");

		Factory factory = Factory.getTipo(1);

		AlumnoDAO dao = factory.getAlumnoDAO();

		ArrayList<AlumnoBean> lista = dao.listarXCarrera(idCarrera);

		request.getSession(true).setAttribute("lista", lista);

		request.getRequestDispatcher("/ConsultarAlumno.jsp").forward(request,
				response);

	}

}
