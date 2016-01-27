package bean;

import java.io.Serializable;

public class PartieMJ implements Serializable {

	private String nomPartie;
	private String pseudoMJ;
	
	public PartieMJ() {
	}
	
	public PartieMJ(String nomP, String MJ){
		nomPartie=nomP;
		pseudoMJ=MJ;
	}

	public String getNomPartie() {
		return nomPartie;
	}

	public void setNomPartie(String nomPartie) {
		this.nomPartie = nomPartie;
	}

	public String getPseudoMJ() {
		return pseudoMJ;
	}

	public void setPseudoMJ(String pseudoMJ) {
		this.pseudoMJ = pseudoMJ;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nomPartie == null) ? 0 : nomPartie.hashCode());
		result = prime * result + ((pseudoMJ == null) ? 0 : pseudoMJ.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PartieMJ other = (PartieMJ) obj;
		if (nomPartie == null) {
			if (other.nomPartie != null)
				return false;
		} else if (!nomPartie.equals(other.nomPartie))
			return false;
		if (pseudoMJ == null) {
			if (other.pseudoMJ != null)
				return false;
		} else if (!pseudoMJ.equals(other.pseudoMJ))
			return false;
		return true;
	}
	
	
}
