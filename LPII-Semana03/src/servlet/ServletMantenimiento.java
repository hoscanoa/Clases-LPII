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
 * Servlet implementation class ServletMantenimiento
 */
@WebServlet("/ServletMantenimiento")
public class ServletMantenimiento extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//1. Obtener los valores que vienen del JSP
			System.out.println("Obteniendo valores del jsp..");
			
			String nombre = request.getParameter("nombre");
			String apellidos = request.getParameter("apellidos");
			String genero = request.getParameter("genero");
			int edad = Integer.parseInt(request.getParameter("edad"));
			String usuario = request.getParameter("usuario");
			String clave = request.getParameter("clave");

			//Mostramos en la consola para ver los datos que llegaron
			System.out.println(nombre);
			System.out.println(apellidos);
			System.out.println(genero);
			System.out.println(""+edad);
			System.out.println(usuario);
			System.out.println(clave);
			
			String operacion = request.getParameter("operacion");
			
			// Si la operacion es registrar...
			if(operacion.equals("registrar")){
				//A. Obtener la conexion
				Connection conn = MySqlDBConexion.getConexion();
				
				//B. Se prepara la sentencia
				
				String sql = "INSERT INTO tbusuario values(null,?,?,?,?,?,?)";
				
				//C.Se crea el PreparedStatement
				PreparedStatement pstm = conn.prepareStatement(sql);
				
				//D: Se agregan los parametros
				pstm.setString(1, nombre);
				pstm.setString(2, apellidos);
				pstm.setString(3, genero);
				pstm.setInt(4, edad);
				pstm.setString(5, usuario);
				pstm.setString(6, clave);
				
				//E: Ejecutamos la sentencia
				pstm.executeUpdate();
				System.out.println("Usuario registrado...");
				
				//Redireccionar al servlet de Listado
				request.getRequestDispatcher("/ServletListado")
							.forward(request, response);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

