package dao;

public abstract class Factory {
	public static final int TIPO_MYSQL = 1;
	public static final int TIPO_SQL_SERVER = 2;

	public abstract JugueteDAO getJugueteDAO();
	public abstract TipoDAO getTipoDAO();
	public abstract MarcaDAO getMarcaDAO();

	public abstract ComboDAO getComboDAO();
	
	public static Factory getFactory(int tipo) {
		switch (tipo) {
			case TIPO_MYSQL :
				return new MySQLFactory();
			default :
				return null;
		}
	}

}
