package bean;

import java.util.ArrayList;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Arme implements Item {

	@Id
	private String nom ;
	private utilities.Des dgtsP ;
	private utilities.Des dgtsM ;
	private ArrayList<Integer> zoneCritique ;
	private Integer facteurCritique ;
	
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

	public ArrayList<Integer> getZoneCritique() {
		return this.zoneCritique;
	}

	public void setZoneCritique(ArrayList<Integer> zoneCritique) {
		this.zoneCritique = zoneCritique;
	}

	public Integer getFacteurCritique() {
		return this.facteurCritique;
	}

	public void setFacteurCritique(Integer facteurCritique) {
		this.facteurCritique = facteurCritique;
	}

	
}
