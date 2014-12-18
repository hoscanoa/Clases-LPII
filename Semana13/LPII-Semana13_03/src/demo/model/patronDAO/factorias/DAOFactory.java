package demo.model.patronDAO.factorias;

import demo.model.patronDAO.interfaces.LoginDAO;


public abstract class DAOFactory {
    
    public static final int MYSQL = 1; 
    public abstract LoginDAO 	getLoginDAO();
    
    
    public static DAOFactory getDAOFactory(int whichFactory){
       switch(whichFactory){
       	case MYSQL:
       	    return new MySqlDAOFactory();
       	default:
       	    return null;
       }
    }
}
