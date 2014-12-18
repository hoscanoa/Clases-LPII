package daofactory;

import java.util.ArrayList;

import bean.Alumno;

public interface AlumnoDAO {

	public ArrayList<Alumno> listarPorCarrera(String idCarrera)
			throws Exception;

	public int eliminar(int id);
	
}
