package abstractFactory;

public class MySqlProductoDAO implements ProductoDAO {

	@Override
	public int insertar(String codigo, String nombre) {
		System.out.println("Insertar: MySqlProductoDAO");
		return 0;
	}

	@Override
	public int eliminar(int codigo) {
		System.out.println("Eliminar: MySqlProductoDAO");
		return 0;
	}

}
