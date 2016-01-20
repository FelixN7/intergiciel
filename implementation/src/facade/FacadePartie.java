package facade;

import java.util.Collection;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Fiche;
import bean.Partie;

@Singleton
public class FacadePartie {

	@PersistenceContext
	private EntityManager em ;
	
	public FacadePartie() {
		
	}
	
	public Partie creerPartie(Collection<Fiche> listePJ) {
		Partie p = new Partie(listePJ) ;
		em.persist(p);
		return p ;
	}
	
	public void ajouterJoueurPartie(Fiche joueur, Partie p) {
		p.ajouterPJ(joueur);
		em.refresh(p);
	}
	
	public void supprimerJoueurPartie(Fiche joueur, Partie p) {
		p.supprimerPJ(joueur);
		em.refresh(p);		
	}
	
	public void listerJoueurPartie(Partie p) {
		for (Fiche joueur : p.getListePJ()) {
			joueur.toString() ;
		}
	}
	
	public Partie getPartie(Integer id){
		return em.find(Partie.class, id);
	}
	
}
