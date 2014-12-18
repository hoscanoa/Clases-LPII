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
	public ArrayList<ComboBean> ejecutarSQL(String sql) throws Exception {
		ArrayList<ComboBean> lista = new ArrayList<ComboBean>();
		
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		
		try {
			conn = new ConexionDB().getConexion();
			
			System.out.println("SQL -> " + sql);
			
			stm = conn.createStatement();
			rs = stm.executeQuery(sql);
			
			ComboBean obj = null;
			while (rs.next()) {
				obj = new ComboBean(rs.getString(1), rs.getString(2));				
				lista.add(obj);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs != null) rs.close();
				if(stm != null) stm.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return lista;
	}
}











