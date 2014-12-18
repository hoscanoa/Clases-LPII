package demo.model.service;

import java.util.List;

import demo.model.patronDAO.factorias.DAOFactory;
import demo.model.patronDAO.interfaces.LoginDAO;
import demo.recursos.beans.BeanMenu;
import demo.recursos.beans.BeanUsuario;
import demo.recursos.util.Parametros;

public class LoginService {

	DAOFactory objDAOFactory = DAOFactory.getDAOFactory(Parametros.ORIGEN);

	LoginDAO objDAO = objDAOFactory.getLoginDAO();

	public BeanUsuario validarUsuario(String login, String password)throws Exception {
		return objDAO.validarUsuario(login, password);
	}

	public List<BeanMenu> traeMenu(String login, String password)throws Exception {
		return objDAO.traeMenu(login, password);
	}
	
	public void insertaAuditoria(String usuario, String host) throws Exception{
		objDAO.insertaAuditoria(usuario,host);
		
	}
}
