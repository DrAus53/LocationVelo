package fr.eseo.jee.agence.velo;

public class Velo {

	int codeVelo ;
	String categorie ;
	String ville ;
	double prixLocation ;
	
	
	public int getCodeVelo() {
		return codeVelo;
	}
	public void setCodeVelo(int codeVelo) {
		this.codeVelo = codeVelo;
	}
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public double getPrixLocation() {
		return prixLocation;
	}
	public void setPrixLocation(double prixLocation) {
		this.prixLocation = prixLocation;
	}
	
	
}
