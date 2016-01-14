package facade;

import java.util.ArrayList;

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
	
	public void creerPartie(String nom, ArrayList<Fiche> listePJ) {
		Partie p = new Partie(nom, listePJ) ;
		em.persist(p);
	}
	
	public void ajouterJoueurPartie(Fiche joueur, Partie p) {
		ArrayList<Fiche> newListePJ  = p.getListePJ() ;
		newListePJ.add(joueur) ;
		p.setListePj(newListePJ);
		em.refresh(p);
	}
	
	public void supprimerJoueurPartie(Fiche joueur, Partie p) {
		ArrayList<Fiche> newListePJ  = p.getListePJ() ;
		if (p.getListePJ().contains(joueur)) {
			newListePJ.remove(joueur) ;
		} else {
			System.out.println("Ce joueur n'appartient pas à cette partie");
		}
		p.setListePj(newListePJ);
		em.refresh(p);		
	}
	
	public void listerJoueurPartie(Partie p) {
		
	}
	
}
