package facade;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Classe;
import bean.Fiche;
import bean.Race;
import utilities.Caracteristiques;
import utilities.Competences;

@Singleton
public class FacadeFiche {

	@PersistenceContext
	private EntityManager em ;
	
	public FacadeFiche() {}
	
	public Fiche creerFiche(String nom, String nameUt, Caracteristiques c, Competences comp, Classe classe, Race race) {
		Fiche f = new Fiche(nom, nameUt, c, comp, classe, race) ;
		em.persist(f);
		return f ;
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
	
	public void editerFiche(Fiche f) {
		em.persist(f);
	}
	
	public Fiche getFiche(int id){
		return em.find(Fiche.class, id);
	}
	
}
