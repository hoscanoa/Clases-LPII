package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.Conexion;
import bean.MarcaBean;

public class MySqlMarcaDAO implements MarcaDAO {

	@Override
	public List<MarcaBean> listar() {
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		List<MarcaBean> lista = new ArrayList<MarcaBean>();
		try {
			String sql = "SELECT * FROM marca";
			cn = Conexion.getConexion();

			pstm = cn.prepareStatement(sql);
			rs = pstm.executeQuery();
			while (rs.next()) {
				lista.add(new MarcaBean(rs.getInt(1), rs.getString(2)));
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

}
