package dao;

import java.util.List;

import bean.ComboBean;

public interface ComboDAO {
	public List<ComboBean> ejecutarSql(String sql);
}
