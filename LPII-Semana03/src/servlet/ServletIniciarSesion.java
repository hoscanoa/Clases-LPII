package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import conexion.MySqlDBConexion;

/**
 * Servlet implementation class ServletIniciarSesion
 */
@WebServlet("/ServletIniciarSesion")
public class ServletIniciarSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("usuario");
		String clave = request.getParameter("clave");

		try {
			Connection conn = MySqlDBConexion.getConexion();
			String sql = "select * from tbusuario where usuario=? and clave=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, usuario);
			pst.setString(2, clave);

			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				request.setAttribute("nom", rs.getString(2));
				request.setAttribute("ape", rs.getString(3));
				request.setAttribute("gen", rs.getString(4));
				request.setAttribute("eda", rs.getString(5));

				System.out.println("Se encontró al usuario " + usuario);

				request.getRequestDispatcher("/principal.jsp").forward(request,
						response);

			} else {
				request.setAttribute("mensaje",
						"Usuario no encontrado. Verifique los datos");
				request.getRequestDispatcher("/iniciarSesion.jsp").forward(
						request, response);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
