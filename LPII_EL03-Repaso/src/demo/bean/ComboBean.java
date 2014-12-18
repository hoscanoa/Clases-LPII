package demo.bean;

public class ComboBean {
	private String clave;
	private String valor;

	public ComboBean(String clave, String valor) {
		this.clave = clave;
		this.valor = valor;
	}

	public String getClave() {
		return clave;
	}

	public String getValor() {
		return valor;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

}
