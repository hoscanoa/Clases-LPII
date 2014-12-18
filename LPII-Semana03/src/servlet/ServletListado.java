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
 * Servlet implementation class ServletListado
 */
@WebServlet("/ServletListado")
public class ServletListado extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			//1. Obtener una conexion
			Connection cn = MySqlDBConexion.getConexion();
			
			//2. Se define la sentencia SQL 
			String sql = "SELECT * FROM tbusuario";
			
			//3. Se crea el objeto PreparedStatement
			PreparedStatement pstm = cn.prepareStatement(sql);
			
			//4. Se obtiene el resultado
			ResultSet rs = pstm.executeQuery();
			
			//5. Se define una nueva lista de Usuario
			ArrayList listaUsu = new ArrayList();
			
			//6. Se agrega un objeto Usuario por cada fila del resultset
			while (rs.next()) {
				Usuario u = new Usuario();
				u.setCodigo(rs.getInt(1));
				u.setNombre(rs.getString(2));
				u.setApellidos(rs.getString(3));
				u.setGenero(rs.getString(4));
				u.setEdad(rs.getInt(5));
				u.setUsuario(rs.getString(6));
				u.setClave(rs.getString(7));
								
				//6.1 Se agrega a la lista
				listaUsu.add(u);
			}
			
			//7. Se agrega la lista como atributo en el REQUEST
			request.setAttribute("mi_lista", listaUsu);
			
			System.out.println("Se obtuvo la lista en el Servlet...");
			
			//8. Se redirecciona al JSP para que muestra la lista
			request.getRequestDispatcher("/listadoUsuario.jsp")
								.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}







