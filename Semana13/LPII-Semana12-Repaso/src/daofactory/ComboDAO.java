package daofactory;

import java.util.ArrayList;

import bean.ComboBean;

public interface ComboDAO {

	public ArrayList<ComboBean> ejecutarSql(String sentenciaSQL)
		throws Exception;
}
