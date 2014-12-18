package abstractFactory;

public class SqlServerFactory {
	public ClienteDAO getCliente() {
		return new SqlServerClienteDAO();
	}

	public ProductoDAO getProducto() {
		return new SqlServerProductoDAO();
	}

}
