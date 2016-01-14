package bean;

import javax.persistence.*;

import Utilities.TypeUtilisateur;

@Entity
public class Utilisateur {
	@Id
	private String pseudo;
	private String mdp;
	private Utilities.TypeUtilisateur type;
	
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
	public Utilities.TypeUtilisateur getType() {
		return type;
	}
	public void setType(Utilities.TypeUtilisateur type) {
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
}
