package daofactory;

import java.util.ArrayList;

import bean.AlumnoBean;

public interface AlumnoDAO {
	public ArrayList<AlumnoBean> listarXCarrera(String idCarrera);
}
