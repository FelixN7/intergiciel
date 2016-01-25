package register;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Race;

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

		//Enregistrement des armes
		EpeeBatarde.inserer(em);
		EpeeLongue.inserer(em);

	}



}
