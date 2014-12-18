package conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlDBConexion {

	static{
		try {
			//Cargar la libreria de MySql (driver)
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConexion(){
		Connection conn = null;
		try {
			//Obtenemos una conexion
			//Se indica el servicio y la base de datos
			//El usuario
			//La contraseña
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/bd_libreria",
					"root",
					"mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}	
}