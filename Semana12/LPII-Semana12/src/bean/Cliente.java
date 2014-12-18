package bean;

public class Cliente {
	private int codigo;
	private String nombres;
	private String apellidos;

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public Cliente() {

	}

	public Cliente(int codigo, String nombres, String apellidos) {
		this.codigo = codigo;
		this.nombres = nombres;
		this.apellidos = apellidos;
	}

}
