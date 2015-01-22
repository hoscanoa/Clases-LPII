package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.Conexion;
import bean.JugueteBean;

public class MySqlJugueteDAO implements JugueteDAO {

	@Override
	public List<JugueteBean> listar(int idTipo, int idMarca) {
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		List<JugueteBean> lista = new ArrayList<JugueteBean>();
		try {
			String sql = "SELECT j.idJuguete, j.nombre, "
					+ "t.descripcion, m.descripcion, j.precio "
					+ "FROM juguete j INNER JOIN marca m ON j.idMarca=m.idMarca "
					+ "INNER JOIN tipo t ON j.idTipo=t.idTipo WHERE t.idTipo=? AND m.idMarca=?";
			cn = Conexion.getConexion();

			pstm = cn.prepareStatement(sql);
			pstm.setInt(1, idTipo);
			pstm.setInt(2, idMarca);
			rs = pstm.executeQuery();
			while (rs.next()) {
				lista.add(new JugueteBean(rs.getInt(1), rs.getString(2), rs
						.getString(3), rs.getString(4), rs.getDouble(5)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstm != null)
					pstm.close();
				if (cn != null)
					cn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return lista;
	}

	@Override
	public int registrar(JugueteBean obj) {
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		int salida = 0;
		try {
			String sql = "INSERT INTO juguete "
					+ "(idjuguete,nombre,idtipo,idmarca,precio) "
					+ "VALUES (null,?,?,?,?)";

			cn = Conexion.getConexion();

			pstm = cn.prepareStatement(sql);
			pstm.setString(1, obj.getNombre());
			pstm.setInt(2, obj.getIdTipo());
			pstm.setInt(3, obj.getIdMarca());
			pstm.setDouble(4, obj.getPrecio());
			salida = pstm.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstm != null)
					pstm.close();
				if (cn != null)
					cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return salida;
	}

}
