package fr.eseo.jee.agence.velo.sw;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
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
		List<Velo> velos = new ArrayList<Velo>();

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
	
	public int reserverVelo (ReservationVelo reservationVelo) {
		UtiliserBD utiliserBD = new UtiliserBD();
		Statement stmt = utiliserBD.connexion();
		Statement stmt2 = utiliserBD.connexion();
		Statement stmt3 = utiliserBD.connexion();

		int result = 0;
		
		try {			
			stmt.executeQuery("SELECT * FROM Reservation WHERE idVelo='" 
			+ reservationVelo.getCodeVelo() + "'  AND (( '" + reservationVelo.getDateDebut() + "' "
					+ "BETWEEN dateLocationDebut AND dateLocationFin) OR ( '" + reservationVelo.getDateFin() + "'"
							+ "BETWEEN dateLocationDebut AND dateLocationFin));"); 	
			
			
			ResultSet rset = stmt.getResultSet();
			
			if(rset.next()== false) {
				System.out.println("INSERT INTO `Reservation` (`idReservation`, "
						+ "`idVelo`, `idClient`, `dateLocationDebut`, "
						+ "`dateLocationFin`, `booleenPaiementEffectue`) "
						+ "VALUES (NULL, '" + reservationVelo.getCodeVelo() +"', "
								+ "'" + reservationVelo.getCodeClient() + "'', "
										+ "'" + reservationVelo.getDateDebut() + "'', "
												+"'" + reservationVelo.getDateFin()+ "'', '0')");
				
				stmt2.execute("INSERT INTO `Reservation` ("
						+ "`idVelo`, `idClient`, `dateLocationDebut`, "
						+ "`dateLocationFin`, `booleenPaiementEffectue`) "
						+ "VALUES ( '" + reservationVelo.getCodeVelo() +"', "
								+ "'" + reservationVelo.getCodeClient() + "', "
										+ "'" + reservationVelo.getDateDebut() + "', "
												+"'" + reservationVelo.getDateFin()+ "', '0')");
				
				
				System.out.println("SELECT idReservation FROM Reservation WHERE "
						+ "idVelo=" + reservationVelo.getCodeVelo() 
						+" AND idClient=" + reservationVelo.getCodeClient()
						+" AND dateLocationDebut='" + reservationVelo.getDateDebut()
						+"' AND dateLocationFin='" + reservationVelo.getDateFin()+"'");
				
				stmt3.execute("SELECT idReservation FROM Reservation WHERE "
						+ "idVelo=" + reservationVelo.getCodeVelo() 
						+" AND idClient=" + reservationVelo.getCodeClient()
						+" AND dateLocationDebut='" + reservationVelo.getDateDebut()
						+"' AND dateLocationFin='" + reservationVelo.getDateFin()+"'");
				
				
				ResultSet rset1 = stmt3.getResultSet();
				

				result = rset1.getInt("idReservation");
			}else {
				result = -1;
			}
				rset.close();
				utiliserBD.deconnexion();		
			
			} catch (SQLException e) {
				e.printStackTrace();
			}

		return result;
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
