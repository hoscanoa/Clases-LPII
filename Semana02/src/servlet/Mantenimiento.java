package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexion.MySqlDBConexion;

/**
 * Servlet implementation class Mantenimiento
 */
@WebServlet("/ServletMantenimiento")
public class Mantenimiento extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			String nombre = request.getParameter("nombre");
			String apellidos = request.getParameter("apellidos");
			String genero = request.getParameter("genero");
			int edad = Integer.parseInt(request.getParameter("edad"));

			String usuario = request.getParameter("usuario");
			String clave = request.getParameter("clave");

			String operacion = request.getParameter("operacion");

			System.out.println(nombre);
			System.out.println(apellidos);
			System.out.println(genero);
			System.out.println(edad);
			System.out.println(usuario);
			System.out.println(clave);

			if (operacion.equals("registrar")) {
				Connection conn = MySqlDBConexion.getConexion();
				String sql = "INSERT INTO tbusuario VALUES(null,?,?,?,?,?,?)";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setString(1, nombre);
				pst.setString(2, apellidos);
				pst.setString(3, genero);
				pst.setInt(4, edad);
				pst.setString(5, usuario);
				pst.setString(6, clave);
				pst.executeUpdate();

				request.getRequestDispatcher("/ServletListado").forward(request,
						response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
