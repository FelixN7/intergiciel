package register;

import javax.persistence.EntityManager;

import bean.Armure;

public class ArmureCuir {
	
	public static void inserer(EntityManager em){
		/** Creation d'une instance de la classe Armure */
		Armure a = new Armure("Armure de cuir") ;
		
		/** On remplit les differents champs */
		a.setBonusArmure(2);
		a.setBonusDexMax(6);
		a.setMalusTests(0);
		a.setRisqueEchec(10);
		
		em.persist(a);
	}	
}
