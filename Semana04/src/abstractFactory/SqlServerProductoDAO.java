package abstractFactory;

public class SqlServerProductoDAO implements ProductoDAO {

	@Override
	public int insertar(String codigo, String nombre) {
		System.out.println("Insertar: SqlServerProductoDAO");
		return 0;
	}

	@Override
	public int eliminar(int codigo) {
		System.out.println("Eliminar: SqlServerProductoDAO");
		return 0;
	}

}
