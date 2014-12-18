package daofactory;

import bean.AlumnoBean;

public abstract class Factory {
	
	private static final int TIPO_MYSQL = 1;
	private static final int TIPO_SQLSERVER = 2;

	public abstract ComboDAO getComboDAO();
	public abstract AlumnoDAO getAlumnoDAO();
	
	public static Factory getTipo(int tipo){
		switch (tipo) {
		case TIPO_MYSQL:
			return new MySqlFactory();
		case TIPO_SQLSERVER:
			return null;
		default:
			return null;
		}
	}

}
