package dao;

public class MySQLFactory extends Factory {

	@Override
	public JugueteDAO getJugueteDAO() {
		return new MySqlJugueteDAO();
	}

	@Override
	public TipoDAO getTipoDAO() {
		return new MySqlTipoDAO();
	}

	@Override
	public MarcaDAO getMarcaDAO() {		
		return new MySqlMarcaDAO();
	}

	@Override
	public ComboDAO getComboDAO() {
		return new MySqlComboDAO();
	}
}
