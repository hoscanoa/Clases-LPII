package daofactory;

public abstract class Factory {
	
	public static final int TIPO_MYSQL = 1;
	public static final int TIPO_SQL_SERVER = 2;
	
	public abstract ComboDAO getComboDAO();
	public abstract AlumnoDAO getAlumnoDAO();
	
	public static Factory getTipo(int tipo){
		switch (tipo) {
		case TIPO_MYSQL:
			return new MySqlFactory();
		default:
			return null;
		}
	}
}
