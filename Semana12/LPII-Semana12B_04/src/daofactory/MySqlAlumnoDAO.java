package daofactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.ConexionDB;

import bean.AlumnoBean;
import bean.ComboBean;

public class MySqlAlumnoDAO implements AlumnoDAO {

	@Override
	public ArrayList<AlumnoBean> listarXCarrera(String idCarrera) {
		ArrayList<AlumnoBean> lista = new ArrayList<AlumnoBean>();
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		try {
			conn = new ConexionDB().getConexion();
			String sql = "SELECT * FROM alumno WHERE idCarrera=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, idCarrera);

			rs = pstm.executeQuery(sql);

			AlumnoBean obj = null;
			while (rs.next()) {
				obj = new AlumnoBean(rs.getInt(1), rs.getString(2),
						rs.getString(3));
				lista.add(obj);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstm != null)
					pstm.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return lista;
	}

}
