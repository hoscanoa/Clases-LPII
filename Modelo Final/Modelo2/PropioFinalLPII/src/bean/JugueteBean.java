package bean;

public class JugueteBean {
	private int idJuguete;
	private String nombre;
	private int idTipo;
	private String tipo;
	private int idMarca;
	private String marca;
	private double precio;
	public int getIdJuguete() {
		return idJuguete;
	}
	public void setIdJuguete(int idJuguete) {
		this.idJuguete = idJuguete;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getIdTipo() {
		return idTipo;
	}
	public void setIdTipo(int idTipo) {
		this.idTipo = idTipo;
	}
	public int getIdMarca() {
		return idMarca;
	}
	public void setIdMarca(int idMarca) {
		this.idMarca = idMarca;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public JugueteBean(int idJuguete, String nombre, int idTipo, int idMarca,
			double precio) {
		this.idJuguete = idJuguete;
		this.nombre = nombre;
		this.idTipo = idTipo;
		this.idMarca = idMarca;
		this.precio = precio;
	}
	public JugueteBean(int idJuguete, String nombre, int idTipo, String tipo,
			int idMarca, String marca, double precio) {
		this.idJuguete = idJuguete;
		this.nombre = nombre;
		this.idTipo = idTipo;
		this.tipo = tipo;
		this.idMarca = idMarca;
		this.marca = marca;
		this.precio = precio;
	}
	
	public JugueteBean(int idJuguete, String nombre, String tipo, String marca,
			double precio) {
		this.idJuguete = idJuguete;
		this.nombre = nombre;
		this.tipo = tipo;
		this.marca = marca;
		this.precio = precio;
	}
	public JugueteBean() {
	}

}
