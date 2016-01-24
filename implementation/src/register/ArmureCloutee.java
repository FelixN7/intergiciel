package register;

import bean.Armure;

public class ArmureCloutee {
	
	public ArmureCloutee() {
		/** Cr�ation d'une instance de la classe Armure */
		Armure a = new Armure("Armure de cuir cloutée") ;
		
		/** On remplit les diff�rents champs */
		a.setBonusArmure(3);
		a.setBonusDexMax(5);
		a.setMalusTests(1);
		a.setRisqueEchec(15);
	}
	
}