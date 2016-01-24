package register;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.BonusRef;
import bean.Classe;
import bean.ClasseLvl;
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

		/**
		 * Enregistrement des classes de personnages
		 */
		Classe c = new Classe("guerrier");
		c.setDVie(new Des(TypeDeDes.D10, 1));
		//Voleur voleur = new Voleur() ;
		
		//insertion de toute la table de reflexe pour la classe guerrier en bdd
		for(int i=1;i<=20;i++){
			BonusRef bref = new BonusRef();
			bref.setClasseName(c.getNom());
			bref.setLvl(i);
			bref.setModificateur((i-i%3)/3);
			em.persist(bref);
		}

		em.persist(c);
		
		//em.persist(voleur);
		/**
		 * Enregistrement des armures
		 */
		//		ArmureCloutee armureCloutee = new ArmureCloutee() ;
		//		ArmureCuir armureCuir = new ArmureCuir() ;
		//		em.persist(armureCloutee);
		//		em.persist(armureCuir);
		/**
		 * Enregistrement des armes
		 */
		//		EpeeBatarde epeeBatarde = new EpeeBatarde() ;
		//		EpeeLongue eppeLongue = new EpeeLongue() ;
		//		em.persist(epeeBatarde);
		//		em.persist(eppeLongue);

	}

	//aller mettre cela dans une facade pour les differents bonus
	public BonusRef getBonusRef(ClasseLvl clvl){
		return em.find(BonusRef.class, clvl);
	}

}
