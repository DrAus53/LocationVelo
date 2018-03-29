package fr.eseo.jee.agence.velo.modele;



public class ReservationVelo {

	private int codeReservation ;
	private int codeVelo ;
	private int codeClient ;
	private String dateDebut ;
	private String dateFin ;
	private boolean paiementEffectue ;
		
	public int getCodeReservation() {
		return codeReservation;
	}
	public void setCodeReservation(int codeReservation) {
		this.codeReservation = codeReservation;
	}
	public int getCodeVelo() {
		return codeVelo;
	}
	public void setCodeVelo(int codeVelo) {
		this.codeVelo = codeVelo;
	}
	public int getCodeClient() {
		return codeClient;
	}
	public void setCodeClient(int codeClient) {
		this.codeClient = codeClient;
	}
	public String getDateDebut() {
		return dateDebut;
	}
	public void setDateDebut(String dateDebut) {
		this.dateDebut=dateDebut;
	}
	public String getDateFin() {
		return dateFin;
	}
	public void setDateFin(String dateFin) {
		this.dateFin=dateFin;
	}
	public boolean isPaiementEffectue() {
		return paiementEffectue;
	}
	public void setPaiementEffectue(boolean paiementEffectue) {
		this.paiementEffectue = paiementEffectue;
	}
}
