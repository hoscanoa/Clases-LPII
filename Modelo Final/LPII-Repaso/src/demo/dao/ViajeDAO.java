package demo.dao;

import java.util.List;

import demo.bean.ViajeBean;

public interface ViajeDAO {
	public List<ViajeBean> consultar(String razonSocial, String fechaDesde,
			String fechaHasta);

	public int eliminar(int id);
}
