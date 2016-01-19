package bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Race{
	
	@Id
	private String nom;
	//TODO rajouter les caracteristiques
	
	public Race() {
		
	}
	
	public Race(String nom) {
		this.setNom(nom) ;
	}
	
	public String getNom() {
		return (this.nom) ;
	}
	
	public void setNom(String nom) {
		this.nom = nom ;
	}
	

}
