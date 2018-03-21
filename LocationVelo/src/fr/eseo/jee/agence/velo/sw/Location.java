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
		try {
			stmt.executeQuery("SELECT DISTINCT v.idvelo, v.categorie, v.ville, v.prixLocationDebase FROM Velo v, "
					+ "Reservation r WHERE ((NOW() NOT BETWEEN r.dateLocationDebut AND r.dateLocationFin AND"
					+ " v.idVelo = r.idVelo ) OR v.idVelo NOT IN (SELECT idVelo FROM Reservation)) AND "
					+ "v.categorie Like('" + velo.getCategorie() + "') AND v.ville LIKE ('" + velo.getVille() + "')");

		ResultSet rset = stmt.getResultSet();
		
		List<Velo> velos = new ArrayList();
		
		while (rset.next()) {
			Velo v = new Velo(Integer.parseInt(rset.getString("idVelo")), rset.getString("categorie"), rset.getString("ville"), Double.parseDouble(rset.getString("prixLocationDeBase")));
			velos.add(v);
		}
		rset.close();
		utiliserBD.deconnexion();
		return velos;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int reservationVelo (ReservationVelo reservationVelo) {
		
		return 0;
	}
	
	public String payerVelo (int codeReservation) {
		
		return "";
	}
	
	public boolean annulerVelo (int codeReservation) {
		
		return true ;
	}
	
}
