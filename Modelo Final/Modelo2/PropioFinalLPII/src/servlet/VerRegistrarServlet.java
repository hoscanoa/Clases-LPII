package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.MarcaBean;
import bean.TipoBean;
import dao.Factory;
import dao.MarcaDAO;
import dao.TipoDAO;

/**
 * Servlet implementation class VerRegistrarServlet
 */
@WebServlet("/VerRegistrarServlet")
public class VerRegistrarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Factory fabrica = Factory.getFactory(Factory.TIPO_MYSQL);
		TipoDAO tipoDao = fabrica.getTipoDAO();
		MarcaDAO marcaDao = fabrica.getMarcaDAO();

		List<TipoBean> tipos = tipoDao.listar();
		List<MarcaBean> marcas = marcaDao.listar();

		request.setAttribute("tipos", tipos);
		request.setAttribute("marcas", marcas);
		request.getRequestDispatcher("registrar.jsp").forward(request, response);
	}

}
