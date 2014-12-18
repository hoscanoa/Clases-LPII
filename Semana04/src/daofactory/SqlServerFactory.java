package daofactory;

//4
public class SqlServerFactory extends Factory {

	@Override
	public ClienteDAO getCliente() {
		return new SqlServerClienteDAO();
	}
}
