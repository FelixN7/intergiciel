package bean;

import java.util.ArrayList;

public class Arme implements Item {

	private String nom ;
	private Core.Des dgtsP ;
	private Core.Des dgtsM ;
	private ArrayList<Integer> zoneCritique ;
	private Integer facteurCritique ;
	
	public Arme() {
		
	}
	
	public Arme(String nom) {
		this.setNom(nom) ;
	}
	
	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public Core.Des getDgtsP() {
		return this.dgtsP;
	}
	public void setDgtsP(Core.Des dgtsP) {
		this.dgtsP = dgtsP;
	}

	public Core.Des getDgtsM() {
		return this.dgtsM;
	}

	public void setDgtsM(Core.Des dgtsM) {
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
