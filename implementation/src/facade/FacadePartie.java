package facade;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Fiche;
import bean.Partie;
import bean.PartieMJ;

@Singleton
public class FacadePartie {

	@PersistenceContext
	private EntityManager em ;
	
	public FacadePartie() {}
	
	public Partie creerPartie(String nomPartie,String pseudoMJ) {
		Partie p = new Partie(new PartieMJ(nomPartie, pseudoMJ));
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
	
	public Partie getPartie(Integer id){
		return em.find(Partie.class, id);
	}
	
}
