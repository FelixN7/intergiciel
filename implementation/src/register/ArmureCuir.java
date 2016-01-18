package register;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Armure;

@Singleton
public class ArmureCuir {

	@PersistenceContext
	EntityManager em ;
	
	public ArmureCuir() {
		/** Cr�ation d'une instance de la classe Armure */
		Armure a = new Armure("Armure de cuir") ;
		
		/** On remplit les diff�rents champs */
		a.setBonusArmure(2);
		a.setBonusDexMax(6);
		a.setMalusTests(0);
		a.setRisqueEchec(10);
		
		em.persist(a) ;
	}
	
	public Armure getArmureCuir(String nom) {
		return em.find(Armure.class, nom) ;
	}
	
}
