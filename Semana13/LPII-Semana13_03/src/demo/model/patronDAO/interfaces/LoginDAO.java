package demo.model.patronDAO.interfaces;

import java.util.List;

import demo.recursos.beans.BeanMenu;
import demo.recursos.beans.BeanUsuario;

public interface LoginDAO {

	public BeanUsuario validarUsuario(String login, String password)
			throws Exception;

	public List<BeanMenu> traeMenu(String login, String password)
			throws Exception;
	
	public void insertaAuditoria(String usuario, String host) throws Exception;
}
