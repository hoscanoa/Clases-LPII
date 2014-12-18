package entidad;

public class Usuario {
	private int codigo;
	private String nombre;
	private String apellidos;
	private String genero;
	private int edad;
	private String usuario;
	private String clave;

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public Usuario(int codigo, String nombre, String apellidos, String genero,
			int edad, String usuario, String clave) {
		this.codigo = codigo;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.genero = genero;
		this.edad = edad;
		this.usuario = usuario;
		this.clave = clave;
	}

}
