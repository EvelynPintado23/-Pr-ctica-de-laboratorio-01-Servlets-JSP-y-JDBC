package ec.edu.ups.dao;

import ec.edu.ups.mysql.jdbc.JDBCTelefonoDAO;
import ec.edu.ups.mysql.jdbc.JDBCUsuarioDAO;

public class JDBCDAOFactory extends DAOFactory {

	@Override
	public void createTables() {
		// TODO Auto-generated method stub
		this.getUsuarioDAO().createTable();
		this.getTelefonoDAO().createTable();

	}

	@Override
	public UsuarioDAO getUsuarioDAO() {
		// TODO Auto-generated method stub
		return new JDBCUsuarioDAO();
	}

	@Override
	public TelefonoDAO getTelefonoDAO() {
		// TODO Auto-generated method stub
		return new JDBCTelefonoDAO();
	}

}
