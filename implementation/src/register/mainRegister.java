package register;

/**
 * Classe permettant la création de la BDD
 * @author Maxime
 * @version 1.0
 */
public class mainRegister {

	
	public static void main(String[] argv) {
	
		/**
		 * Enregistrement des classes de personnages
		 */
		Guerrier guerrier = new Guerrier() ;
		Voleur voleur = new Voleur() ;
		
		/**
		 * Enregistrement des armures
		 */
		ArmureCloutee armureCloutee = new ArmureCloutee() ;
		ArmureCuir armureCuir = new ArmureCuir() ;
		
		/**
		 * Enregistrement des armes
		 */
		EpeeBatarde epeeBatarde = new EpeeBatarde() ;
		EpeeLongue eppeLongue = new EpeeLongue() ;
		
	}
	
	
}
