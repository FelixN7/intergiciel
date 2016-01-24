package register;

import javax.persistence.EntityManager;

import bean.Arme;
import utilities.TypeDeDes;

public class EpeeBatarde {
	
	public static void inserer(EntityManager em){
		/** Creation d'une instance de la classe Arme */
		Arme a = new Arme("epee batarde") ;
		a.setDgtsP(new utilities.Des(TypeDeDes.D8, 1));
		a.setDgtsM(new utilities.Des(TypeDeDes.D10, 1));	
		a.setMinCrit(19);		
		a.setFacteurCritique(2);
		em.persist(a);
	}
	
}
