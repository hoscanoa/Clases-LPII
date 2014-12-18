package DAOFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.ConexionDB;

import bean.ExpedienteBean;

public class MySqlDAOExpediente implements DAOExpediente {

	@Override
	public ArrayList<ExpedienteBean> listar(String idCategoria) {
		ArrayList<ExpedienteBean> lista = new ArrayList<ExpedienteBean>();

		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "SELECT E.*, T.NOMBRE FROM EXPEDIENTE"
				+ " E INNER JOIN TIPOEXPEDIENTE T ON E.IDTIPOEXPEDIENTE = T.IDTIPOEXPEDIENTE";
		
		//String sql = "SELECT * FROM EXPEDIENTE ";
		
		try {
			conn = new ConexionDB().getConexion();

			if (!idCategoria.equals("-1"))
				sql += " WHERE E.IDTIPOEXPEDIENTE= " + idCategoria;

			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			ExpedienteBean obj = null;
			while (rs.next()) {
				obj = new ExpedienteBean();
				obj.setIdExpediente(rs.getInt(1));
				obj.setIdTipoExpediente(rs.getInt(2));
				obj.setCodigo(rs.getString(3));
				obj.setSumilla(rs.getString(4));
				obj.setFecharegistro(rs.getString(5));
				obj.setFechaPublicacion(rs.getString(6));
				obj.setEntidad(rs.getString(7));
				//obj.setNombre(rs.getString(8));
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
