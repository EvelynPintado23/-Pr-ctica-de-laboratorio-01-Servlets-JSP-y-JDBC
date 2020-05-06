package ec.edu.ups.modelo;

import java.io.Serializable;

public class Usuario implements Serializable {

	private static final long serialVersionUID = 1L;
	private String cedula;
	private String nombre;
	private String apellido;
	private String correo;
	private String contrasena;
	
	public Usuario(){
		// TODO Auto-generated constructor stub
	}

	public Usuario(String cedula, String nombre, String apellido, String correo, String contrasena){
		// TODO Auto-generated constructor stub
		super();
		this.cedula=cedula;
		this.nombre=nombre;
		this.apellido=apellido;
		this.correo=correo;
		this.contrasena=contrasena;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Usuario [cedula =" + cedula + " nombre =   ]";
	}
	

}