package daofactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.ConexionDB;

import bean.Alumno;
import bean.ComboBean;

public class MySqlAlumnoDAO implements AlumnoDAO {

	@Override
	public ArrayList<Alumno> listarPorCarrera(String idCarrera)
			throws Exception {
		ArrayList<Alumno> lista = new ArrayList<Alumno>();
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			conn = new ConexionDB().getConexion();
			String sql = "SELECT a.*, c.nombre as nombreCarrera "
					+ " FROM alumno a " + " INNER JOIN carrera c "
					+ " ON a.idcarrera = c.idcarrera "
					+ " WHERE a.idcarrera = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, idCarrera);
			rs = pstm.executeQuery();

			Alumno bean = null;
			while (rs.next()) {
				bean = new Alumno();
				bean.setIdAlumno(rs.getInt("idAlumno"));
				bean.setNombre(rs.getString("nombre"));
				bean.setApellido(rs.getString("apellido"));
				bean.setIdCarrera(rs.getInt("idCarrera"));
				bean.setNombreCarrera(rs.getString("nombreCarrera"));
				lista.add(bean);
			}
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstm != null)
					pstm.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				throw e;
			}
		}
		return lista;
	}

	@Override
	public int eliminar(int id) {
		int salida = 0;
		Connection conn = null;
		PreparedStatement pstm = null;
		try {
			conn = new ConexionDB().getConexion();
			String sql = "DELETE FROM alumno WHERE idalumno= ?";
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			salida = pstm.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstm != null)
					pstm.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return salida;
	}

}
