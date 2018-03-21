package fr.eseo.jee.agence.velo.sw;


import java.sql.SQLException;
import java.util.List;

import fr.eseo.jee.agence.velo.modele.Velo;

public class TestTrouverVelo {

	public static void main(String[] args) throws SQLException {
		Location location = new Location();
		Velo velo = new Velo("VTT", "nantes");
		List<Velo> velos = location.trouverVelo(velo);
		for (int i=0; i<velos.size(); i++) {
			System.out.println(velos.get(i).toString());
		}
		System.out.println(velos);
	}
}
