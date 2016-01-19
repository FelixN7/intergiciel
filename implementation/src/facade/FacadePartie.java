package facade;

import java.util.ArrayList;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Fiche;
import bean.Partie;
import bean.Utilisateur;

@Singleton
public class FacadePartie {

	@PersistenceContext
	private EntityManager em ;
	
	public FacadePartie() {
		
	}
	
	public Partie creerPartie(ArrayList<Fiche> listePJ) {
		Partie p = new Partie(listePJ) ;
		em.persist(p);
		return p ;
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
	
	public Partie getPartie(Integer id){
		return em.find(Partie.class, id);
	}
	
}
