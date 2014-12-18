package DAOFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.ConexionDB;
import bean.ProductoBean;
import bean.ProductoBean;

public class MySqlDAOProducto implements DAOProducto {

	@Override
	public ArrayList<ProductoBean> listar(String sql) throws SQLException {
		ArrayList<ProductoBean> lista = new ArrayList<ProductoBean>();

		Connection conn = null;
		PreparedStatement pstm = null;
		try {
			conn = new ConexionDB().getConexion();
			pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			ProductoBean obj = null;
			while (rs.next()) {
				obj = new ProductoBean();
				obj.setIdproducto(rs.getInt(1));
				obj.setNombre(rs.getString(2));
				obj.setMarca(rs.getString(3));
				obj.setPrecio(rs.getDouble(4));
				obj.setStock(rs.getInt(5));
				obj.setIdcategoria(rs.getInt(6));
				lista.add(obj);
			}
			pstm.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}

		return lista;
	}

}
