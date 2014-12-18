package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexion.MySqlDBConexion;
import entidad.Usuario;

/**
 * Servlet implementation class Listado
 */
@WebServlet("/ServletListado")
public class Listado extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection conn = MySqlDBConexion.getConexion();
			String sql = "select * from tbusuario";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();

			ArrayList<Usuario> listaUsu = new ArrayList<Usuario>();
						
			while(rs.next())
			{
				listaUsu.add(new Usuario(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7)));
			}
				
			request.setAttribute("mi_lista",listaUsu);
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		request.getRequestDispatcher("/ListadoUsuario.jsp").forward(request, response);
	}

}
