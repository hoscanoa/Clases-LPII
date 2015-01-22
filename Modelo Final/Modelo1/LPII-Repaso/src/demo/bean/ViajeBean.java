package demo.bean;

import java.util.Date;

public class ViajeBean {
	private int idViaje;
	private String ruta;
	private String origen;
	private String destino;
	private String medio;
	private String placa;
	private Date fechaPartida;
	private Date fechaLlegada;
	private int idCliente;
	private String razonSocial;

	public int getIdViaje() {
		return idViaje;
	}
	public void setIdViaje(int idViaje) {
		this.idViaje = idViaje;
	}
	public String getRuta() {
		return ruta;
	}
	public void setRuta(String ruta) {
		this.ruta = ruta;
	}
	public String getOrigen() {
		return origen;
	}
	public void setOrigen(String origen) {
		this.origen = origen;
	}
	public String getDestino() {
		return destino;
	}
	public void setDestino(String destino) {
		this.destino = destino;
	}
	public String getMedio() {
		return medio;
	}
	public void setMedio(String medio) {
		this.medio = medio;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		this.placa = placa;
	}
	public Date getFechaPartida() {
		return fechaPartida;
	}
	public void setFechaPartida(Date fechaPartida) {
		this.fechaPartida = fechaPartida;
	}
	public Date getFechaLlegada() {
		return fechaLlegada;
	}
	public void setFechaLlegada(Date fechaLlegada) {
		this.fechaLlegada = fechaLlegada;
	}
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public String getRazonSocial() {
		return razonSocial;
	}
	public void setRazonSocial(String razonSocial) {
		this.razonSocial = razonSocial;
	}
	public ViajeBean() {
	}
	public ViajeBean(int idViaje, String ruta, String origen, String destino,
			String medio, String placa, Date fechaPartida, Date fechaLlegada,
			int idCliente, String razonSocial) {
		this.idViaje = idViaje;
		this.ruta = ruta;
		this.origen = origen;
		this.destino = destino;
		this.medio = medio;
		this.placa = placa;
		this.fechaPartida = fechaPartida;
		this.fechaLlegada = fechaLlegada;
		this.idCliente = idCliente;
		this.razonSocial = razonSocial;
	}

}
