package User;

import javax.persistence.*;

import utils.TypeUtilisateur;

@Entity
public class Utilisateur {
	@Id
	private String pseudo;
	private String mdp;
	private Core.TypeUtilisateur type;
	
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
	public Core.TypeUtilisateur getType() {
		return type;
	}
	public void setType(Core.TypeUtilisateur type) {
		this.type = type;
	}
	
	public Utilisateur(){}
	
	public Utilisateur(String p,String m, Core.TypeUtilisateur t){
		pseudo=p;
		mdp=m;
		type=t;
	}
	
	public void creerFiche() {
		Fiche f = new Fiche() ;
	}
}
