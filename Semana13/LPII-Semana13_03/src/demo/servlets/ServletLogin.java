package demo.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import demo.model.service.LoginService;
import demo.recursos.beans.BeanMenu;
import demo.recursos.beans.BeanUsuario;

/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vLogin = request.getParameter("txtLogin");
		String vPassword = request.getParameter("txtPassword");

		String vTipo = request.getParameter("tipo");

		HttpSession session = null;

		LoginService service = new LoginService();
		try {

			if (vTipo.equals("salir")) {
				session = request.getSession(false);
				session.invalidate();
				getServletContext().getRequestDispatcher("/portalLogin.jsp").forward(request, response);
			} else {
				BeanUsuario bean = service.validarUsuario(vLogin, vPassword);

				if (bean != null) {
					// Verificamos si existe una sesion
					if (request.isRequestedSessionIdValid()) {
						// si existe la recuperamos y la invalidamos
						session = request.getSession(false);
						session.invalidate();
					}
					session = request.getSession(true);
					List<BeanMenu> lista = service.traeMenu(vLogin, vPassword);

					// Se envia los objeto a sesión
					session.setAttribute("usuario_menu", lista);
					session.setAttribute("usuario_logeado", bean);
					getServletContext().getRequestDispatcher("/intranetPrincipal.jsp").forward(request, response);
				} else {
					getServletContext().getRequestDispatcher("/portalLogin.jsp").forward(request, response);
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
	}

}
