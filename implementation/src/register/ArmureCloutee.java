package register;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Armure;

public class ArmureCloutee {

	@PersistenceContext
	EntityManager em ;
	
	public ArmureCloutee() {
		/** Cr�ation d'une instance de la classe Armure */
		Armure a = new Armure("Armure de cuir clout�e") ;
		
		/** On remplit les diff�rents champs */
		a.setBonusArmure(3);
		a.setBonusDexMax(5);
		a.setMalusTests(1);
		a.setRisqueEchec(15);
		
		em.persist(a);
	}
	
	public Armure getArmureCloutee(String nom) {
		return em.find(Armure.class, nom) ;
	}
	
}