package dao;

import java.util.List;

import bean.JugueteBean;

public interface JugueteDAO {
	public List<JugueteBean> listar(int idTipo, int idMarca);
	public int registrar(JugueteBean obj);
}
