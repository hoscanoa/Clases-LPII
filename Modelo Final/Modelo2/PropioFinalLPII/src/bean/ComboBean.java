package bean;

public class ComboBean {
	private int id;
	private String valor;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public ComboBean(int id, String valor) {
		this.id = id;
		this.valor = valor;
	}

	public ComboBean() {
	}

}
