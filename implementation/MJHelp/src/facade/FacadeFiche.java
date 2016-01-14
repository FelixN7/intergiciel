package facade;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import Utilities.Caracteristiques;
import bean.Classe;
import bean.Fiche;
import bean.Race;
import bean.Utilisateur;

@Singleton
public class FacadeFiche {

	@PersistenceContext
	private EntityManager em ;
	
	public FacadeFiche() {
		
	}
	
	public void creerFiche(String nom, Utilisateur u, Caracteristiques c, Classe classe, Race race) {
		Fiche f = new Fiche(nom, u, c, classe, race) ;
		em.persist(f);
	}
	
	public void supprimerFiche(Fiche f) {
		if (em.contains(f)) {
			em.remove(f);
		} else {
			System.out.println("Ce personnage n'est pas pr�sent");
		}
	}
	
	public void voirFiche() {
		
	}
	
	public void editerFiche() {
		
	}
	
}
