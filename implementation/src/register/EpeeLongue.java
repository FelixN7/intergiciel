package register;

import javax.persistence.EntityManager;

import bean.Arme;
import utilities.TypeDeDes;

public class EpeeLongue {
	
	public static void inserer(EntityManager em){
		/** Creation d'une instance de la classe arme */
		Arme a = new Arme("epee longue") ;	
		/** On remplit les differents champs */
		a.setDgtsP(new utilities.Des(TypeDeDes.D6, 1));
		a.setDgtsM(new utilities.Des(TypeDeDes.D8, 1));	
		a.setMinCrit(19);
		a.setFacteurCritique(2) ;
		em.persist(a);
	}
}
