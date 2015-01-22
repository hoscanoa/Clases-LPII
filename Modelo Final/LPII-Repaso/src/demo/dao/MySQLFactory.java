package demo.dao;

public class MySQLFactory extends Factory {

	@Override
	public ViajeDAO getViajeDAO() {
		return new MySqlViajeDAO();
	}

}
