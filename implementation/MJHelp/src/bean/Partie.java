package bean;

import java.util.ArrayList;

public class Partie {

	private String nom ; 
	private ArrayList<bean.Fiche> listePj ;
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

	public ArrayList<bean.Fiche> getListePj() {
		return listePj;
	}

	public void setListePj(ArrayList<bean.Fiche> listePj) {
		this.listePj = listePj;
	}

	public boolean isFinished() {
		return finished;
	}

	public void setFinished(boolean finished) {
		this.finished = finished;
	}
	
	public void ajouterPJ (bean.Fiche PJ) {
		this.listePj.add(PJ) ;
	}
	
	public void supprimerPJ (bean.Fiche PJ) {
		for (int i=0; i<listePj.size(); i++) {
			if (listePj.get(i).equals(PJ)) {
				this.listePj.remove(i) ;
			}
		}
	}
	
	
	
}
