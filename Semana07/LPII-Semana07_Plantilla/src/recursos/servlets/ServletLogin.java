package recursos.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import recursos.beans.BeanUsuario;
import recursos.util.MySqlDBConn;

/**
 * Servlet implementation class ServletLogin
 */
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("txtLogin");
		String clave = request.getParameter("txtPassword");

		HttpSession sesion = null;

		try {
			BeanUsuario bean = validarUsuario(usuario, clave);

			if (bean != null) {
				if (request.isRequestedSessionIdValid()) {
					sesion = request.getSession(false);
					if (sesion != null) {
						sesion.invalidate();
					}
				}
				sesion = request.getSession(true);
				sesion.setAttribute("usuario_logeado", bean);

				request.getRequestDispatcher("/InicioPortal.jsp").forward(
						request, response);
			} else {
				request.getRequestDispatcher("/Inicio.jsp").forward(request,
						response);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	private BeanUsuario validarUsuario(String usuario, String clave) {
		BeanUsuario bean = null;
		Connection conn = null;
		PreparedStatement pstm = null;
		try {
			conn = new MySqlDBConn().getConnection();
			String sql = "SELECT * FROM tb_usuario WHERE log_usu=? and pas_usu=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, usuario);
			pstm.setString(2, clave);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				bean = new BeanUsuario();
				bean.setCodigo(rs.getInt(1));
				bean.setLogin(rs.getString(2));
				bean.setPassword(rs.getString(3));
				bean.setNombre(rs.getString(4));
				bean.setApellido(rs.getString(5));
				bean.setEdad(rs.getInt(6));
				bean.setEstado(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstm != null)
					pstm.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}

		}
		return bean;
	}
}
