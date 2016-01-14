package bean;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Singleton
public class ArmureCloutee {

	@PersistenceContext
	EntityManager em ;
	
	public ArmureCloutee() {
		/** Création d'une instance de la classe Armure */
		Armure a = new Armure("Armure de cuir cloutée") ;
		
		/** On remplit les différents champs */
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