package demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import demo.bean.ViajeBean;
import demo.util.ConexionDB;

public class MySqlViajeDAO implements ViajeDAO {

	@Override
	public List<ViajeBean> consultar(String razonSocial, String fechaDesde,
			String fechaHasta) {
		Connection cn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		List<ViajeBean> lista = new ArrayList<ViajeBean>();
		String sql = "SELECT v.*, c.razonSocial FROM viaje v INNER JOIN "
				+ "cliente c ON v.idCliente = c.idCliente WHERE "
				+ "c.razonSocial LIKE ? AND (?<v.fechapartida AND v.fechallegada<?)";
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMdd");
		Date dFechaDesde, dFechaHasta;

		try {

			try {
				dFechaDesde = sdf1.parse(fechaDesde);
				dFechaHasta = sdf1.parse(fechaHasta);

				cn = new ConexionDB().getConexion();
				pst = cn.prepareStatement(sql);
				pst.setString(1, "%" + razonSocial + "%");
				pst.setString(2, sdf2.format(dFechaDesde));
				pst.setString(3, sdf2.format(dFechaHasta));

			} catch (ParseException e1) {
				e1.printStackTrace();
			}
			rs = pst.executeQuery();

			while (rs.next()) {
				lista.add(new ViajeBean(rs.getInt(1), rs.getString(2), rs
						.getString(3), rs.getString(4), rs.getString(5), rs
						.getString(6), rs.getDate(7), rs.getDate(8), rs
						.getInt(9), rs.getString(10)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
					if (pst != null)
						pst.close();
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
	public int eliminar(int id) {
		Connection cn = null;
		PreparedStatement pst = null;

		String sql = "DELETE FROM viaje WHERE idViaje=?";
		int salida = 0;
		try {
			cn = new ConexionDB().getConexion();
			pst = cn.prepareStatement(sql);
			pst.setInt(1, id);
			salida = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (cn != null)
					cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return salida;
	}

}
