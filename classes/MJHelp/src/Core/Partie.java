package Core;

import java.util.ArrayList;

public class Partie {

	private String nom ; 
	private ArrayList<User.Fiche> listePj ;
	private boolean finished ;
	
	public Partie() {	
	}
	
	public Partie (String nom) {
		this.setNom(nom) ;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public ArrayList<User.Fiche> getListePj() {
		return listePj;
	}

	public void setListePj(ArrayList<User.Fiche> listePj) {
		this.listePj = listePj;
	}

	public boolean isFinished() {
		return finished;
	}

	public void setFinished(boolean finished) {
		this.finished = finished;
	}
	
	public void ajouterPJ (User.Fiche PJ) {
		this.listePj.add(PJ) ;
	}
	
	public void supprimerPJ (User.Fiche PJ) {
		for (int i=0; i<listePj.size(); i++) {
			if (listePj.get(i).equals(PJ)) {
				this.listePj.remove(i) ;
			}
		}
	}
	
	
	
}
