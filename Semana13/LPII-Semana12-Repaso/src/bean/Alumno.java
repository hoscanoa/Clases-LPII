package bean;

public class Alumno {
	private int idAlumno;
	private String nombre, apellido;
	private int idCarrera;
	private String nombreCarrera;
	
	public int getIdAlumno() {
		return idAlumno;
	}
	public String getNombre() {
		return nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public int getIdCarrera() {
		return idCarrera;
	}
	public String getNombreCarrera() {
		return nombreCarrera;
	}
	public void setIdAlumno(int idAlumno) {
		this.idAlumno = idAlumno;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public void setIdCarrera(int idCarrera) {
		this.idCarrera = idCarrera;
	}
	public void setNombreCarrera(String nombreCarrera) {
		this.nombreCarrera = nombreCarrera;
	}
	
	
}
