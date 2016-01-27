package facade;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
	
	public Partie getPartie(String pseudoMJ, String nomPartie){
		PartieMJ pp = new PartieMJ(pseudoMJ, nomPartie) ;
		return em.find(Partie.class, pp);
	}
	
}
