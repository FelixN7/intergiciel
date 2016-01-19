package bean;

import java.util.ArrayList;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Partie {

	@Id
	private String nom ; 
	private ArrayList<Fiche> listePJ ;
	private boolean finished ;
	
	public Partie() {	
	}
	
	public Partie (String nom) {
		this.setNom(nom) ;
	}
	
	public Partie (String nom, ArrayList<Fiche> listePJ) {
		this.setNom(nom);
		this.setListePj(listePJ);
		this.setFinished(false);
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public ArrayList<Fiche> getListePJ() {
		return listePJ;
	}

	public void setListePj(ArrayList<Fiche> listePJ) {
		this.listePJ = listePJ;
	}

	public boolean isFinished() {
		return finished;
	}

	public void setFinished(boolean finished) {
		this.finished = finished;
	}
	
	public void ajouterPJ (Fiche PJ) {
		this.listePJ.add(PJ) ;
	}
	
	public void supprimerPJ (Fiche PJ) {
		for (int i=0; i<listePJ.size(); i++) {
			if (listePJ.get(i).equals(PJ)) {
				this.listePJ.remove(i) ;
			}
		}
	}
	
	
	
}
