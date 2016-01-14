package facade;

import java.util.ArrayList;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import Utilities.TypeDeDes;
import bean.Arme;

@Singleton
public class EpeeLongue {

	@PersistenceContext
	EntityManager em ;
	
	public EpeeLongue() {
		/** Création d'une instance de la classe arme */
		Arme a = new Arme("épée longue") ;
		
		/** On remplit les différents champs */
		a.setDgtsP(new Utilities.Des(TypeDeDes.D6));
		a.setDgtsM(new Utilities.Des(TypeDeDes.D8));
		
		ArrayList<Integer> l = new ArrayList<Integer>() ;
		l.add(19,20) ;
		a.setZoneCritique(l) ;
		
		a.setFacteurCritique(2) ;
		
		em.persist(a);
	}
	
	public Arme getEpeeLongue(String nom) {
		return em.find(Arme.class, nom) ;
	}
}
