package bean;

public class ComboBean {
	private String clave;
	private String texto;
	
	public ComboBean(String clave, String texto) {
		this.clave = clave;
		this.texto = texto;
	}

	public String getClave() {
		return clave;
	}

	public String getTexto() {
		return texto;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	
}
