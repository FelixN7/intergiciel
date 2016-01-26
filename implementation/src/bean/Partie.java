package bean;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.OneToMany;

@Entity
@IdClass(PartieMJ.class)
public class Partie {

	@Id
	private String pseudoMJ;
	@Id
	private String nomPartie;
	@OneToMany (mappedBy="partie", fetch=FetchType.EAGER )
	private Collection<Fiche> listePJ ;	
	private boolean finished;

	public Partie() {}

	public Partie (PartieMJ pMJ) {
		this.pseudoMJ = pMJ.getPseudoMJ();
		this.nomPartie = pMJ.getNomPartie();
		this.setFinished(false);
	}

	
	public String getPseudoMJ() {
		return pseudoMJ;
	}

	public void setPseudoMJ(String pseudoMJ) {
		this.pseudoMJ = pseudoMJ;
	}

	public String getNomPartie() {
		return nomPartie;
	}

	public void setNomPartie(String nomPartie) {
		this.nomPartie = nomPartie;
	}

	public Collection<Fiche> getListePJ() {
		return listePJ;
	}

	public void setListePJ(Collection<Fiche> listePJ) {
		this.listePJ = listePJ;
	}

	public boolean isFinished() {
		return finished;
	}

	public void setFinished(boolean finished) {
		this.finished = finished;
	}

	public void ajouterPJ (Fiche PJ) {
		this.listePJ.add(PJ) ;
	}

	public void supprimerPJ (Fiche PJ) {
		for (Fiche f : listePJ) {
			if (f.equals(PJ)) {
				this.listePJ.remove(f) ;
			}
		}
	}
	

}
