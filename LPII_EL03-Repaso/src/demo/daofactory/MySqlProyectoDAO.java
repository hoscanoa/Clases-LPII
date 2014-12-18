package demo.daofactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.ConexionDB;

import demo.bean.ProyectoBean;

public class MySqlProyectoDAO implements ProyectoDAO {

	@Override
	public List<ProyectoBean> listarXPrioridad(int idPrioridad)
			throws Exception {
		List<ProyectoBean> lista = new ArrayList<ProyectoBean>();

		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		try {
			conn = new ConexionDB().getConexion();
			String sql = "SELECT p.*, pr.nombre as nombreprioridad "
					+ "FROM proyecto p " + "INNER JOIN prioridad pr "
					+ "ON p.idprioridad = pr.idprioridad "
					+ "WHERE p.idprioridad = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, idPrioridad);
			rs = pstm.executeQuery();

			ProyectoBean bean = null;
			while (rs.next()) {
				bean = new ProyectoBean();
				bean.setIdproyecto(rs.getInt("idproyecto"));
				bean.setNombre(rs.getString("nombre"));
				bean.setCategoria(rs.getString("categoria"));
				bean.setTipoproyecto(rs.getString("tipoproyecto"));
				bean.setDias(rs.getInt("dias"));
				bean.setIdprioridad(rs.getInt("idprioridad"));
				bean.setNombreprioridad(rs.getString("nombreprioridad"));

				lista.add(bean);
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
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
		return lista;
	}

	@Override
	public int eliminar(int idprioridad) throws Exception {
		int salida = 0;

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			conn = new ConexionDB().getConexion();
			String sql = "DELETE FROM proyecto WHERE idproyecto = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, idprioridad);

			salida = pstm.executeUpdate();

			if (salida != 0)
				System.out.println("Se eliminó el proyecto con id : "
						+ idprioridad);
			else
				System.out.println("No se eliminó el proyecto");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstm != null)
					pstm.close();
				if (conn != null)
					conn.close();
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}

		return salida;
	}

	@Override
	public List<ProyectoBean> listarXNombre(String nombre) throws Exception {
		List<ProyectoBean> lista = new ArrayList<ProyectoBean>();

		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		try {
			conn = new ConexionDB().getConexion();
			String sql = "SELECT p.*, pr.nombre as nombreprioridad "
					+ "FROM proyecto p " + "INNER JOIN prioridad pr "
					+ "ON p.idprioridad = pr.idprioridad "
					+ "WHERE p.nombre LIKE ?";
			pstm = conn.prepareStatement(sql);
			// Se envia el parametro. Al usar Like se deberia concatenar el
			// caracter % al inicio al fin
			pstm.setString(1, "%" + nombre + "%");

			rs = pstm.executeQuery();

			ProyectoBean bean = null;
			while (rs.next()) {
				bean = new ProyectoBean();
				bean.setIdproyecto(rs.getInt("idproyecto"));
				bean.setNombre(rs.getString("nombre"));
				bean.setCategoria(rs.getString("categoria"));
				bean.setTipoproyecto(rs.getString("tipoproyecto"));
				bean.setDias(rs.getInt("dias"));
				bean.setIdprioridad(rs.getInt("idprioridad"));
				bean.setNombreprioridad(rs.getString("nombreprioridad"));

				lista.add(bean);
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
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
		return lista;
	}

}
