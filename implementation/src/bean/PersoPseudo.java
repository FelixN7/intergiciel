package bean;

import java.io.Serializable;

public class PersoPseudo implements Serializable {

	private String pseudo;
	private String nomPerso;
	
	public PersoPseudo(String pseudo,String nomPerso){
		this.pseudo=pseudo;
		this.nomPerso=nomPerso;
	}
	
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getNomPerso() {
		return nomPerso;
	}
	public void setNomPerso(String nomPerso) {
		this.nomPerso = nomPerso;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nomPerso == null) ? 0 : nomPerso.hashCode());
		result = prime * result + ((pseudo == null) ? 0 : pseudo.hashCode());
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
		PersoPseudo other = (PersoPseudo) obj;
		if (nomPerso == null) {
			if (other.nomPerso != null)
				return false;
		} else if (!nomPerso.equals(other.nomPerso))
			return false;
		if (pseudo == null) {
			if (other.pseudo != null)
				return false;
		} else if (!pseudo.equals(other.pseudo))
			return false;
		return true;
	}
	
	
}
