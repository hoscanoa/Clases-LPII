package demo.daofactory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.ConexionDB;

import demo.bean.ComboBean;

public class MySqlComboDAO implements ComboDAO {

	@Override
	public List<ComboBean> ejecutarSQL(String sentenciaSQL) throws Exception {
		List<ComboBean> lista = new ArrayList<ComboBean>();
		
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		
		try {
			conn = new ConexionDB().getConexion();
			stm = conn.createStatement();
			rs = stm.executeQuery(sentenciaSQL);
			
			while (rs.next()) {
				lista.add(new ComboBean(rs.getString(1), rs.getString(2)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs != null ) rs.close();
				if(stm != null) stm.close();
				if(conn != null) conn.close();
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
		
		return lista;
	}

}
