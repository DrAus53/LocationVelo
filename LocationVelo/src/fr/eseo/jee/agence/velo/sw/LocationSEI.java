package fr.eseo.jee.agence.velo.sw;

import java.util.ArrayList;

import javax.jws.WebService;

import fr.eseo.jee.agence.velo.modele.ReservationVelo;
import fr.eseo.jee.agence.velo.modele.Velo;

@WebService(name = "LocationSEI", targetNamespace = "http://sw.velo.agence.jee.eseo.fr/")
public interface LocationSEI {

	ArrayList<Velo> trouverVelo(Velo velo);

	int reserverVelo(ReservationVelo reservationVelo);

	String payerVelo(int codeReservation);

	boolean annulerVelo(int codeReservation);

}