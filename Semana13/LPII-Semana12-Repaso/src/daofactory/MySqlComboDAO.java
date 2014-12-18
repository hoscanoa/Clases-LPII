package daofactory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.ConexionDB;

import bean.ComboBean;

public class MySqlComboDAO implements ComboDAO {

	@Override
	public ArrayList<ComboBean> ejecutarSql(String sentenciaSQL)
			throws Exception {
		ArrayList<ComboBean> lista = new ArrayList<ComboBean>();
		
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		
		try {
			conn = new ConexionDB().getConexion();
			stm = conn.createStatement();
			rs = stm.executeQuery(sentenciaSQL);
			
			ComboBean bean = null;
			while (rs.next()) {
				bean = new ComboBean(rs.getString(1), rs.getString(2));
				lista.add(bean);
			}
		} catch (Exception e) {
			throw e;
		} finally{
			try {
				if(rs != null) rs.close();
				if(stm != null) stm.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				throw e;
			}
		}
		return lista;
	}

}











