package bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Arme implements Item {

	@Id
	private String nom ;
	private utilities.Des dgtsP ;
	private utilities.Des dgtsM ;
	private int minCrit ;
	private int facteurCritique;
	
	public Arme() {}
	
	public Arme(String nom) {
		this.setNom(nom) ;
	}
	
	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public utilities.Des getDgtsP() {
		return this.dgtsP;
	}
	public void setDgtsP(utilities.Des dgtsP) {
		this.dgtsP = dgtsP;
	}

	public utilities.Des getDgtsM() {
		return this.dgtsM;
	}

	public void setDgtsM(utilities.Des dgtsM) {
		this.dgtsM = dgtsM;
	}

	public int getMinCrit() {
		return minCrit;
	}

	public void setMinCrit(int minCrit) {
		this.minCrit = minCrit;
	}

	public int getFacteurCritique() {
		return this.facteurCritique;
	}

	public void setFacteurCritique(int facteurCritique) {
		this.facteurCritique = facteurCritique;
	}

	
}
