package DAOFactory;

import java.sql.SQLException;
import java.util.ArrayList;

import bean.ComboBean;
import bean.ProductoBean;

public interface DAOProducto {
	public ArrayList<ProductoBean> listar(String sql) throws SQLException;
}
