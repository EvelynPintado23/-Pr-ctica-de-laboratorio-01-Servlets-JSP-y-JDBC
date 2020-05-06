package ec.edu.ups.dao;

import java.util.List;

import ec.edu.ups.modelo.Contacto;
import ec.edu.ups.modelo.Telefono;

public interface TelefonoDAO extends GenericDAO<Telefono, Integer>{

	List<Contacto> buscarCorreo(String correo);
	List<Telefono> buscarCedula(String cedula);
	List<Contacto> obtenerContacto();
	List<Contacto> buscarCedInv(String cedula);
}
