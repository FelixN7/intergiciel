package bean;

import javax.persistence.*;

import utils.TypeUtilisateur;

@Entity
public class Utilisateur {
	@Id
	private String pseudo;
	private String mdp;
	private TypeUtilisateur type;
	
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
	public TypeUtilisateur getType() {
		return type;
	}
	public void setType(TypeUtilisateur type) {
		this.type = type;
	}
	
	public Utilisateur(){}
	
	public Utilisateur(String p,String m,TypeUtilisateur t){
		pseudo=p;
		mdp=m;
		type=t;
	}
}
