package fr.eseo.jee.agence.velo.sw;

import java.sql.Date;
import java.sql.SQLException;

import fr.eseo.jee.agence.velo.modele.ReservationVelo;

public class TestReserverVelo {
	
	@SuppressWarnings("deprecation")
	public static void main(String[] args) throws SQLException {
		Location location = new Location();
		ReservationVelo reservationVelo = new ReservationVelo();
		reservationVelo.setCodeVelo(1); 
		reservationVelo.setDateDebut(new Date(2018,3,29));
		reservationVelo.setDateFin(new Date(2018,4,29));
		System.out.println(location.reserverVelo(reservationVelo));
	}
}
