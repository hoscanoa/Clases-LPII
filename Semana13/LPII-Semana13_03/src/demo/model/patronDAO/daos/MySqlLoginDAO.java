package demo.model.patronDAO.daos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import demo.model.patronDAO.interfaces.LoginDAO;
import demo.recursos.beans.BeanMenu;
import demo.recursos.beans.BeanUsuario;
import demo.recursos.util.MySqlDBConn;



public class MySqlLoginDAO implements LoginDAO{
	

	public BeanUsuario validarUsuario(String login, String password) throws Exception{
		BeanUsuario bean= null;
		
		MySqlDBConn mysql = new MySqlDBConn();
		Connection con = mysql.getConnection();
		
		String sql = "select * from tb_usuario where log_usu='" + login +"' and pas_usu='" + password +"'";
		System.out.println("SQL :" + sql);
		Statement pstm = con.createStatement();
		ResultSet rs= pstm.executeQuery(sql);
		while (rs.next()) {
			bean = new BeanUsuario(); 
			bean.setCodigo(rs.getInt(1));
			bean.setLogin(rs.getString(2));
			bean.setPassword(rs.getString(3));
			bean.setNombre(rs.getString(4));
			bean.setApellido(rs.getString(5));
			bean.setEdad(rs.getInt(6));
			bean.setEstado(rs.getString(7));
		}
		
		return bean;
	}
	
	public List<BeanMenu> traeMenu(String login, String password) throws Exception{
		BeanMenu bean= null;
		
		MySqlDBConn mysql = new MySqlDBConn();
		Connection con = mysql.getConnection();
		
		String sql = "select a.cod_men, a.des_men " +
					 "from tb_menu a, tb_acceso b, tb_usuario c " +
					 "where a.cod_men = b.cod_men and b.cod_usu = c.cod_usu and " +
					 "c.log_usu='" + login +"' and c.pas_usu='" + password +"'";
		
		System.out.println("SQL :" + sql);
		Statement pstm = con.createStatement();
		ResultSet rs= pstm.executeQuery(sql);
		List<BeanMenu> lista = new ArrayList<BeanMenu>();
		while (rs.next()) {
			bean = new BeanMenu(); 
			bean.setCodigo(rs.getInt(1));
			bean.setDescripcion(rs.getString(2));
			lista.add(bean);
		}
		
		return lista;
	}
	
	public void insertaAuditoria(String usuario, String host) throws Exception {
		String sql = 
			"insert into tb_auditoria (nom_usu,hos_usu)  values('"
					+ usuario
					+"','"
					+ host
					+"')";
		
		System.out.println("SENTENCIA SQL : " + sql);
		
		Connection	conn = getConnection();
		Statement stm = conn.createStatement();
		stm.executeUpdate(sql);

		stm.close();
		conn.close();	
		
	}

	public Connection getConnection(){
		MySqlDBConn mysql = new MySqlDBConn();
		return mysql.getConnection();
	}

	
}
