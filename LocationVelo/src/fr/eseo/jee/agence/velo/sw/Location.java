package fr.eseo.jee.agence.velo.sw;

import fr.eseo.jee.agence.velo.modele.ReservationVelo;
import fr.eseo.jee.agence.velo.modele.Velo;

public class Location {
	
	public Velo trouverVelo (Velo velo) {
		
		return velo;
	}
	
	public int reservationVelo (ReservationVelo reservationVelo) {
		
		return reservationVelo.getCodeReservation();
	}
	
	public String payerVelo (int codeReservation) {
		
		return Integer.toString(codeReservation);
	}
	
	public boolean annulerVelo (int codeReservation) {
		
		return true ;
	}
	
}
