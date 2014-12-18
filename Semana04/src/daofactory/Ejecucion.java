package daofactory;

//5
public class Ejecucion {
	public static void main(String[] args) {
		Factory subFactory1 = Factory.getTipo(Factory.TIPO_MYSQL);
		ClienteDAO dao1 = subFactory1.getCliente();
		dao1.elminar(1);

		Factory subFactory2 = Factory.getTipo(Factory.TIPO_SQL_SERVER);
		ClienteDAO dao2 = subFactory2.getCliente();
		dao2.elminar(1);
	}
}
