package DAOFactory;

import java.sql.SQLException;
import java.util.ArrayList;

import bean.ExpedienteBean;
import bean.ProductoBean;

public interface DAOExpediente {
	public ArrayList<ExpedienteBean> listar(String idTipoExpediente)
			throws SQLException;
}
