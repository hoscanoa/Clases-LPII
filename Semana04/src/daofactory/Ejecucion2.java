package daofactory;

//5
public class Ejecucion2 {
	public static void main(String[] args) {
		//en el caso que el tipo de BD venga de un archivo de configuracion 
		//o un archivo de recursos podriamos cambiar de base de datos 
		//en cualquier momento
		int tipo=2;
		
		Factory factory = Factory.getTipo(tipo);
		ClienteDAO dao1 = factory.getCliente();
		dao1.elminar(12);
	}
}
