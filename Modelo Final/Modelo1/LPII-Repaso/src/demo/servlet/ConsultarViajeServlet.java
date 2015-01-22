package demo.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import demo.bean.ViajeBean;
import demo.dao.Factory;
import demo.dao.ViajeDAO;

/**
 * Servlet implementation class MantenimientoViajeServlet
 */
@WebServlet("/ConsultarViajeServlet")
public class ConsultarViajeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String razonSocial = request.getParameter("razonSocial");
		String fechaDesde = request.getParameter("fechaDesde");
		String fechaHasta = request.getParameter("fechaHasta");

		Factory factory = Factory.getTipo(Factory.TIPO_MYSQL);
		ViajeDAO dao = factory.getViajeDAO();

		if (razonSocial == null && fechaDesde == null && fechaHasta == null) {
			razonSocial = (String) request.getSession().getAttribute(
					"razonSocial");
			fechaDesde = (String) request.getSession().getAttribute(
					"fechaDesde");
			fechaHasta = (String) request.getSession().getAttribute(
					"fechaHasta");
		}
		
		List<ViajeBean> lista = dao.consultar(razonSocial, fechaDesde,
				fechaHasta);

		request.setAttribute("lista", lista);
		request.getSession(true).setAttribute("razonSocial", razonSocial);
		request.getSession().setAttribute("fechaDesde", fechaDesde);
		request.getSession().setAttribute("fechaHasta", fechaHasta);

		request.getRequestDispatcher("consulta.jsp").forward(request, response);

	}
}
