package register;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Arme;
import bean.Armure;
import bean.Race;
import utilities.Des;
import utilities.TypeDeDes;

/**
 * Classe permettant la cr�ation de la BDD
 * @author Maxime
 * @version 1.0
 */
@Singleton
public class mainRegister {

	@PersistenceContext
	private EntityManager em;

	public mainRegister() {}

	public void registerBdd() {
		//Enregistrement des classes de personnages
		Guerrier.inserer(em);
		Roublard.inserer(em);
		
		//Enregistrement des races
		Race elfe = new Race("elfe");
		em.persist(elfe);
		Race humain = new Race("humain");
		em.persist(humain);

		//Enregistrement des armures	
		ArmureCuir.inserer(em);
		ArmureCloutee.inserer(em);
		Armure armure = new Armure("sans armure");
		armure.setBonusArmure(0);
		armure.setBonusDexMax(0);
		armure.setMalusTests(0);
		armure.setRisqueEchec(0);
		em.persist(armure);

		//Enregistrement des armes
		EpeeBatarde.inserer(em);
		EpeeLongue.inserer(em);
		Arme a= new Arme("main");
		a.setDgtsM(new Des(TypeDeDes.D6, 1));
		a.setDgtsP(new Des(TypeDeDes.D6, 1));
		a.setMinCrit(20);
		a.setFacteurCritique(2);
		em.persist(a);

	}



}
