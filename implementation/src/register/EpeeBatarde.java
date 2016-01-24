package register;

import java.util.ArrayList;

import bean.Arme;
import utilities.TypeDeDes;

public class EpeeBatarde {
	
	public EpeeBatarde() {
		/** Cr�ation d'une instance de la classe Arme */
		Arme a = new Arme("épée bâtarde") ;
		
		/** On Remplit un � un les champs */
		a.setDgtsP(new utilities.Des(TypeDeDes.D8, 1));
		a.setDgtsM(new utilities.Des(TypeDeDes.D10, 1));
		
		ArrayList<Integer> l = new ArrayList<Integer>() ;
		l.add(19,20) ;
		a.setZoneCritique(l);
		
		a.setFacteurCritique(2);
	}
	
}
