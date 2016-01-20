package bean;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Partie {

	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int id ; 
	@OneToMany (mappedBy="partie", fetch=FetchType.EAGER )
	private Collection<Fiche> listePJ ;
	private boolean finished;

	public Partie() {	
	}

	public Partie (Collection<Fiche> listePJ) {
		this.setListePJ(listePJ);
		this.setFinished(false);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
