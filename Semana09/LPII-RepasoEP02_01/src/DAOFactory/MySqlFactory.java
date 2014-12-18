package DAOFactory;

public class MySqlFactory extends Factory {

	@Override
	public DAOCombo getDAOCombo() {
		// TODO Auto-generated method stub
		return new MySqlDAOCombo();
	}

	@Override
	public DAOProducto getDAOProducto() {
		// TODO Auto-generated method stub
		return new MySqlDAOProducto();
	}

	@Override
	public DAOExpediente getDAOExpediente() {
		// TODO Auto-generated method stub
		return new MySqlDAOExpediente();
	}

}
