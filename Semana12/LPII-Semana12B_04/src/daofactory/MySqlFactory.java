package daofactory;

public class MySqlFactory extends Factory {

	@Override
	public ComboDAO getComboDAO() {
		return new MySqlComboDAO();
	}

	@Override
	public AlumnoDAO getAlumnoDAO() {
		return new MySqlAlumnoDAO();
	}

}
