package fr.eseo.jee.agence.velo.sw;

import java.util.List;

import javax.jws.WebService;

import fr.eseo.jee.agence.velo.modele.ReservationVelo;
import fr.eseo.jee.agence.velo.modele.Velo;

@WebService(name = "LocationSEI", targetNamespace = "http://sw.velo.agence.jee.eseo.fr/")
public interface LocationSEI {

	List<Velo> trouverVelo(Velo velo);

	int reservationVelo(ReservationVelo reservationVelo);

	String payerVelo(int codeReservation);

	boolean annulerVelo(int codeReservation);

}