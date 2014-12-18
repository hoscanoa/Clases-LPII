package conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlDBConexion {

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	public static Connection getConexion() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/bdempleado", "root", "mysql");
		} catch (Exception e) {

		}
		return conn;
	}

}
