package register;

import java.util.ArrayList;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Arme;
import utilities.TypeDeDes;

@Singleton
public class EpeeLongue {

	@PersistenceContext
	EntityManager em ;
	
	public EpeeLongue() {
		/** Cr�ation d'une instance de la classe arme */
		Arme a = new Arme("�p�e longue") ;
		
		/** On remplit les diff�rents champs */
		a.setDgtsP(new utilities.Des(TypeDeDes.D6, 1));
		a.setDgtsM(new utilities.Des(TypeDeDes.D8, 1));
		
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
