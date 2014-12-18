package demo.daofactory;

import java.util.List;

import demo.bean.ComboBean;

public interface ComboDAO {
	
	// se define el metodo
	public List<ComboBean> ejecutarSQL(String sentenciaSQL) throws Exception;

}
