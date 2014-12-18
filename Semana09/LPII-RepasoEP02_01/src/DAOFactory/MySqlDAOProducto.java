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
	public ArrayList<ProductoBean> listar(String idCategoria) {
		ArrayList<ProductoBean> lista = new ArrayList<ProductoBean>();

		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "SELECT P.*, C.DESCRIPCION FROM PRODUCTO "
				+ "P INNER JOIN CATEGORIA C ON P.IDCATEGORIA = C. IDCATEGORIA";
		try {
			conn = new ConexionDB().getConexion();

			if (!idCategoria.equals("-1"))
				sql += " WHERE P.IDCATEGORIA= " + idCategoria;

			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			ProductoBean obj = null;
			while (rs.next()) {
				obj = new ProductoBean();
				obj.setIdproducto(rs.getInt(1));
				obj.setNombre(rs.getString(2));
				obj.setMarca(rs.getString(3));
				obj.setPrecio(rs.getDouble(4));
				obj.setStock(rs.getInt(5));
				obj.setIdcategoria(rs.getInt(6));
				obj.setDescripcion(rs.getString(7));
				lista.add(obj);
			}
			pstm.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return lista;
	}

}
