package abstractFactory;

public class SqlServerClienteDAO implements ClienteDAO {

	@Override
	public int insertar(String codigo, String nombre) {
		System.out.println("Insertar: SqlServerClienteDAO");
		return 0;
	}

	@Override
	public int eliminar(int codigo) {
		System.out.println("Eliminar: SqlServerClienteDAO");
		return 0;
	}

}
