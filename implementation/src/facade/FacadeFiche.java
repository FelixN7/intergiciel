package facade;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Fiche;
import bean.Partie;

@Singleton
public class FacadeFiche {

	@PersistenceContext
	private EntityManager em ;
	
	public FacadeFiche() {}
	
	public Fiche insererFiche(Fiche fiche) {
		em.persist(fiche);
		return fiche ;
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
	
	public Fiche getFiche(int id){
		return em.find(Fiche.class, id);
	}
	
	public void ajouterPartie(Fiche f, Partie p){
		f.setPartie(p);
		em.refresh(f);
	}
	
}
