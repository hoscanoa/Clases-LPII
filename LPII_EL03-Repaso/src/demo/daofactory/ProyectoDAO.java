package demo.daofactory;

import java.util.List;

import demo.bean.ProyectoBean;

public interface ProyectoDAO {

	public List<ProyectoBean> listarXPrioridad(int idPrioridad) throws Exception;
	
	public int eliminar(int idprioridad) throws Exception;
	
	public List<ProyectoBean> listarXNombre(String nombre) throws Exception;
	
}
