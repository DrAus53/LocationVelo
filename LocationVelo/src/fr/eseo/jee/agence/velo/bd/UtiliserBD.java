package fr.eseo.jee.agence.velo.bd;

import java.sql.*;

public class UtiliserBD {

	private Statement stmt;
	private Connection connect;

	public Statement connexion() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			connect = DriverManager.getConnection("jdbc:mysql://localhost/locationVelo?user=adminvelo&password=network");
			
			stmt = connect.createStatement();
			
			return stmt;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void deconnexion() {
		try {
			stmt.close();
			connect.close();
		} catch (SQLException e) {
		e.printStackTrace();
		}
	}

}
