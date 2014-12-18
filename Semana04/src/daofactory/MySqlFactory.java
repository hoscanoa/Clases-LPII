package daofactory;
//4
public class MySqlFactory extends Factory {

	@Override
	public ClienteDAO getCliente() {
		return new MySqlClienteDAO();
	}
}
