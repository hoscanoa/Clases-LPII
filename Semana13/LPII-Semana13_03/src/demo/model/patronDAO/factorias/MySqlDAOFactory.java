package demo.model.patronDAO.factorias;

import demo.model.patronDAO.daos.*;
import demo.model.patronDAO.interfaces.*;

    
public class MySqlDAOFactory extends DAOFactory{


	public LoginDAO getLoginDAO() {
		return new MySqlLoginDAO();
	}

	
		
}
