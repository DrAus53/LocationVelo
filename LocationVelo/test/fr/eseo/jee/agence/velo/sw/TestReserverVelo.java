package fr.eseo.jee.agence.velo.sw;

import java.sql.SQLException;
import java.util.Date;

import fr.eseo.jee.agence.velo.modele.ReservationVelo;

public class TestReserverVelo {
	
	public static void main(String[] args) throws SQLException {
		Location location = new Location();
		ReservationVelo reservationVelo = new ReservationVelo();
		reservationVelo.setCodeVelo(1); 
		String dateDebut = "2018-05-29";
		String dateFin = "2018-06-30";
		System.out.println(dateFin);
		reservationVelo.setDateDebut(dateDebut);
		reservationVelo.setDateFin(dateFin);
		System.out.println(location.reserverVelo(reservationVelo));
	}
}
