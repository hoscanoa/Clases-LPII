package abstractFactory;

public class Ejecucion {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		MySqlFactory mysqlf = new MySqlFactory();
		ProductoDAO dao = mysqlf.getProducto();
		dao.eliminar(1);

		SqlServerFactory sqlf = new SqlServerFactory();
		ProductoDAO dao2 = sqlf.getProducto();
		dao2.eliminar(1);

		dao = sqlf.getProducto();
		dao.eliminar(2);

	}

}
