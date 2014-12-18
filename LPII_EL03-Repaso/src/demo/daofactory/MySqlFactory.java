package demo.daofactory;

public class MySqlFactory extends Factory {

	@Override
	public ComboDAO getComboDAO() {
		// Se retorna el DAO concreto
		return new MySqlComboDAO();
	}

	@Override
	public ProyectoDAO getProyectoDAO() {
		return new MySqlProyectoDAO();
	}

}
