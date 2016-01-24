package register;

import bean.Armure;

public class ArmureCuir {
	public ArmureCuir() {
		/** Cr�ation d'une instance de la classe Armure */
		Armure a = new Armure("Armure de cuir") ;
		
		/** On remplit les diff�rents champs */
		a.setBonusArmure(2);
		a.setBonusDexMax(6);
		a.setMalusTests(0);
		a.setRisqueEchec(10);
		
	}	
}
