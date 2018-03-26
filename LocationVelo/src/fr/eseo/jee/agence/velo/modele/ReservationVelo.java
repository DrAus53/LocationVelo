package fr.eseo.jee.agence.velo.modele;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ReservationVelo {

	int codeReservation ;
	int codeVelo ;
	int codeClient ;
	Date dateDebut ;
	Date dateFin ;
	boolean paiementEffectue ;
	
	SimpleDateFormat formater = new SimpleDateFormat("YYYY-MM-dd");
	
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
	public Date getDateDebut() {
		return dateDebut;
	}
	public String getDateDebutFormat() {
		return formater.format(dateDebut);
	}
	public void setDateDebut(Date localDate) {
		this.dateDebut = localDate;
	}
	public Date getDateFin() {
		return dateFin;
	}
	public String getDateFinFormat() {
		return formater.format(dateFin);
	}
	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}
	public boolean isPaiementEffectue() {
		return paiementEffectue;
	}
	public void setPaiementEffectue(boolean paiementEffectue) {
		this.paiementEffectue = paiementEffectue;
	}
}
