package factory;

public class Ejecucion {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Factory f1 = Factory.getTipo(Factory.TIPO_MYSQL);
		Factory f2 = Factory.getTipo(Factory.TIPO_SQL_SERVER);
	}

}
