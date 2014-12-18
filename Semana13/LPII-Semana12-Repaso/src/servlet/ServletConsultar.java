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
 * Servlet implementation class ServletConsultar
 */
@WebServlet("/ServletConsultar")
public class ServletConsultar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idCarrera = request.getParameter("cboCarrera");
		
		Factory fabrica = Factory.getTipo(Factory.TIPO_MYSQL);
		AlumnoDAO dao = fabrica.getAlumnoDAO();
		
		try {
			ArrayList<Alumno> lista = dao.listarPorCarrera(idCarrera);
			
			request.setAttribute("lista", lista);
			
			request.getRequestDispatcher("/ConsultaAlumno.jsp")
				.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}













