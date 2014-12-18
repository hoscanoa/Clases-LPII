package abstractFactory;

public class MySqlFactory {

	public ClienteDAO getCliente() {
		return new MySqlClienteDAO();
	}

	public ProductoDAO getProducto() {
		return new MySqlProductoDAO();
	}

}
