package bean;

public class MarcaBean {
	private int idMarca;
	private String descripcion;

	public int getIdMarca() {
		return idMarca;
	}

	public void setIdMarca(int idMarca) {
		this.idMarca = idMarca;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public MarcaBean() {
	}

	public MarcaBean(int idMarca, String descripcion) {
		this.idMarca = idMarca;
		this.descripcion = descripcion;
	}

}
