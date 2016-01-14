package facade;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import Utilities.Caracteristiques;
import bean.Fiche;
import bean.Utilisateur;

@Singleton
public class FacadeFiche {

	@PersistenceContext
	private EntityManager em ;
	
	public FacadeFiche() {
		
	}
	
	public void creerFiche(String nom, Utilisateur u, Caracteristiques c, int vie) {
		Fiche f = new Fiche(nom, u, c, vie) ;
		em.persist(f);
	}
	
	public void supprimerFiche(Fiche f) {
		if (em.contains(f)) {
			em.remove(f);
		} else {
			System.out.println("Ce personnage n'est pas présent");
		}
	}
	
	public void voirFiche() {
		
	}
	
	public void editerFiche() {
		
	}
	
}
