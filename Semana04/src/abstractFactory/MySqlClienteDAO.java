package abstractFactory;

public class MySqlClienteDAO implements ClienteDAO {

	@Override
	public int insertar(String codigo, String nombre) {
		System.out.println("Insertar: MySqlClienteDAO");
		return 0;
	}

	@Override
	public int eliminar(int codigo) {
		System.out.println("Eliminar: MySqlClienteDAO");
		return 0;
	}

}
