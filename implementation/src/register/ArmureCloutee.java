package register;

import javax.persistence.EntityManager;

import bean.Armure;

public class ArmureCloutee {
	
	public static void inserer(EntityManager em){
		/** Creation d'une instance de la classe Armure */
		Armure a = new Armure("Armure de cuir cloutee") ;
		
		/** On remplit les differents champs */
		a.setBonusArmure(3);
		a.setBonusDexMax(5);
		a.setMalusTests(1);
		a.setRisqueEchec(15);
		
		em.persist(a);
	}
	
}