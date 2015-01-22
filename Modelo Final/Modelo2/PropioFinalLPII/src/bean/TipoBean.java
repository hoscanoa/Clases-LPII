package bean;

public class TipoBean {
	private int idTipo;
	private String descripcion;

	public int getIdTipo() {
		return idTipo;
	}

	public void setIdTipo(int idTipo) {
		this.idTipo = idTipo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public TipoBean() {
	}

	public TipoBean(int idTipo, String descripcion) {
		this.idTipo = idTipo;
		this.descripcion = descripcion;
	}

	
}
