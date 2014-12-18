package demo.daofactory;

public abstract class Factory {
	
	public static final int TIPO_MYSQL = 1;
	public static final int TIPO_SQLSERVER = 2;
	
	// Se define el DAO a obtener
	public abstract ComboDAO getComboDAO();
	public abstract ProyectoDAO getProyectoDAO();
	
	public static Factory getTipo(int tipo){
		switch (tipo) {
		case TIPO_MYSQL:
			return new MySqlFactory();
		default:
			return null;
		}
	}

}
