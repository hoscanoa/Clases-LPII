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
 * Servlet implementation class ConsultaPorNombre
 */
@WebServlet("/ConsultaPorNombre")
public class ConsultaPorNombre extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		
		// Desde el ServletEliminarProyectoNombre no se tiene el parametro txtNombre, 
		// En ese caso lo traeremos desde el atributo de sesion "filtroNombre".
		
		// Primero se verifica si se usa txtNombre (parametro) o filtroNombre (session)
		
		String nombre = "";
		
		// En el caso del parametro
		if(request.getParameter("txtNombre") != null)
			nombre = request.getParameter("txtNombre");
		
		// En el caso del filtro:
		if(request.getSession().getAttribute("filtroNombre") != null)
			nombre = request.getSession().getAttribute("filtroNombre").toString();			
		
		try {
			Factory fabrica = Factory.getTipo(Factory.TIPO_MYSQL);
			ProyectoDAO dao = fabrica.getProyectoDAO();
			List<ProyectoBean> lista = dao.listarXNombre(nombre);
			
			// Se agrega la lista al request
			request.setAttribute("lista", lista);
			
			// Se guarda el filtro en la sesion
			request.getSession(true).setAttribute("filtroNombre", nombre);
			
			// Se redirecciona al JSP
			request.getRequestDispatcher("/Consulta2.jsp").forward(request, response);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
