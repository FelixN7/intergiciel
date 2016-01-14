package facade;

import java.util.ArrayList;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import Utilities.TypeDeDes;
import bean.Arme;

@Singleton
public class EpeeBatarde {

	@PersistenceContext
	private EntityManager em ;
	
	public EpeeBatarde() {
		/** Création d'une instance de la classe Arme */
		Arme a = new Arme("épée bâtarde") ;
		
		/** On Remplit un à un les champs */
		a.setDgtsP(new Utilities.Des(TypeDeDes.D8));
		a.setDgtsM(new Utilities.Des(TypeDeDes.D10));
		
		ArrayList<Integer> l = new ArrayList<Integer>() ;
		l.add(19,20) ;
		a.setZoneCritique(l);
		
		a.setFacteurCritique(2);
		
		em.persist(a);
	}
	
	public Arme getEpeeBatarde(String nom) {
		return em.find(Arme.class, nom) ;
	}
	
}
