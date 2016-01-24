package register;

import bean.Arme;
import utilities.TypeDeDes;

public class EpeeBatarde {
	
	public EpeeBatarde() {
		/** Cr�ation d'une instance de la classe Arme */
		Arme a = new Arme("épée bâtarde") ;
		
		/** On Remplit un � un les champs */
		a.setDgtsP(new utilities.Des(TypeDeDes.D8, 1));
		a.setDgtsM(new utilities.Des(TypeDeDes.D10, 1));
		
		a.setMinCrit(19);
		
		a.setFacteurCritique(2);
	}
	
}
