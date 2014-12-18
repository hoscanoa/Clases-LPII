package demo.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo.bean.ProyectoBean;
import demo.daofactory.Factory;
import demo.daofactory.ProyectoDAO;

/**
 * Servlet implementation class ConsultarProyecto
 */
@WebServlet("/ConsultarProyecto")
public class ConsultarProyecto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// Se obtiene el parametro
		int idPrioridad = Integer.parseInt(request.getParameter("cboPrioridad"));
		
		try {
			// Se crea la fabrica
			Factory fabrica = Factory.getTipo(Factory.TIPO_MYSQL);
			
			// Se obtiene el DAO
			ProyectoDAO dao = fabrica.getProyectoDAO();
			
			// Se obtiene la lista
			List<ProyectoBean> lista = dao.listarXPrioridad(idPrioridad);
			
			// Se agrega a la sesion
			request.getSession(true).setAttribute("proyectos", lista);
			
			// Se redirecciona
			request.getRequestDispatcher("/Consulta1.jsp").forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
