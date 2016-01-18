package bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Race implements Serializable {

	private static final long serialVersionUID = 7182832362843688865L;
	
	@Id
	private String nom ;
	
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
