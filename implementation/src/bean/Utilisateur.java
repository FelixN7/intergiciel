package bean;

import java.util.Collection;

import javax.persistence.*;

import utilities.TypeUtilisateur;

@Entity
public class Utilisateur {
	@Id
	private String pseudo;
	private String mdp;
	private utilities.TypeUtilisateur type;
	@OneToMany(mappedBy="joueur", fetch=FetchType.EAGER )
	private Collection<Fiche> personnages;
	@OneToMany(mappedBy="mj", fetch=FetchType.EAGER )
	private Collection<Partie> parties;
	
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public utilities.TypeUtilisateur getType() {
		return type;
	}
	public void setType(utilities.TypeUtilisateur type) {
		this.type = type;
	}
	
	public Utilisateur(){}
	
	public Utilisateur(String p,String m, TypeUtilisateur t){
		pseudo=p;
		mdp=m;
		type=t;
	}
	
	public void creerFiche() {
		Fiche f = new Fiche() ;
	}
	public Collection<Fiche> getPersonnages() {
		return personnages;
	}
	public void setPersonnages(Collection<Fiche> personnages) {
		this.personnages = personnages;
	}
	public Collection<Partie> getParties() {
		return parties;
	}
	public void setParties(Collection<Partie> parties) {
		this.parties = parties;
	}
	
	
}
