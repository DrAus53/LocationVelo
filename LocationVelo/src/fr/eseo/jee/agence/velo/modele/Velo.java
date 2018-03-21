package fr.eseo.jee.agence.velo.modele;

public class Velo {

	int codeVelo ;
	String categorie ;
	String ville ;
	double prixLocation ;
	
	
	public Velo(String categorie, String ville) {
		this.categorie = categorie;
		this.ville = ville;
		this.codeVelo = 0;
		this.prixLocation = 0;
	}
	public Velo(int codeVelo, String categorie, String ville, double prixLocation) {
		this.codeVelo = codeVelo;
		this.categorie = categorie;
		this.ville = ville;
		this.prixLocation = prixLocation;
	}
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
	public String toString() {
		return this.codeVelo+ " " + this.categorie + " "+this.ville+ " " +this.prixLocation;
	}
	
	
}
