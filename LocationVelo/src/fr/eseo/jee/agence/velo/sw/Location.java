package fr.eseo.jee.agence.velo.sw;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.jws.WebService;

import fr.eseo.jee.agence.velo.bd.UtiliserBD;
import fr.eseo.jee.agence.velo.modele.ReservationVelo;
import fr.eseo.jee.agence.velo.modele.Velo;

@WebService(targetNamespace = "http://sw.velo.agence.jee.eseo.fr/", endpointInterface = "fr.eseo.jee.agence.velo.sw.LocationSEI", portName = "LocationPort", serviceName = "LocationService")
public class Location implements LocationSEI {
	
	public List<Velo> trouverVelo (Velo velo) {
		UtiliserBD utiliserBD = new UtiliserBD();
		Statement stmt = utiliserBD.connexion();
		List<Velo> velos = new ArrayList();

		try {
			stmt.executeQuery("SELECT * FROM Velo WHERE categorie Like('" + velo.getCategorie() + "') AND ville LIKE ('" + velo.getVille() + "')");

		ResultSet rset = stmt.getResultSet();
		
		
		while (rset.next()) {
			Velo v = new Velo(Integer.parseInt(rset.getString("idVelo")), rset.getString("categorie"), rset.getString("ville"), Double.parseDouble(rset.getString("prixLocationDeBase")));
			velos.add(v);
		}
		rset.close();
		utiliserBD.deconnexion();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return velos;

	}
	
	public int reservationVelo (ReservationVelo reservationVelo) {
		
		return 0;
	}
	
	public String payerVelo (int codeReservation) {
		UtiliserBD utiliserBD = new UtiliserBD();
		Statement stmt = utiliserBD.connexion();
		String result = "";
		try {
			stmt.executeUpdate("UPDATE Reservation SET booleenPaiementEffectue=1 WHERE idReservation=" + codeReservation);
			result = "OK";
			utiliserBD.deconnexion();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean annulerVelo (int codeReservation) {
		UtiliserBD utiliserBD = new UtiliserBD();
		Statement stmt = utiliserBD.connexion();
		boolean result = false;
		try {
			stmt.executeUpdate("DELETE FROM Reservation WHERE idReservation=" + codeReservation);
			result = true;
			utiliserBD.deconnexion();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
