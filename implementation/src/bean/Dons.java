package bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Dons {
	@Id
	private String nom;
	private String texte;
	
	public Dons(String nom) {
		this.setNom(nom) ;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getTexte() {
		return texte;
	}

	public void setTexte(String texte) {
		this.texte = texte;
	}
	
	
	
	
}
