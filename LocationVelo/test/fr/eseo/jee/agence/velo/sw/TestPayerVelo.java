package fr.eseo.jee.agence.velo.sw;


import java.sql.SQLException;
import java.util.List;

import fr.eseo.jee.agence.velo.modele.Velo;

public class TestPayerVelo {

	public static void main(String[] args) throws SQLException {
		Location location = new Location();
		int codeReservation = 1;
		System.out.println(location.payerVelo(codeReservation));
	}
}
