package register;

import java.util.ArrayList;

import bean.Arme;
import utilities.TypeDeDes;

public class EpeeLongue {
	
	public EpeeLongue() {
		/** Cr�ation d'une instance de la classe arme */
		Arme a = new Arme("épée longue") ;
		
		/** On remplit les diff�rents champs */
		a.setDgtsP(new utilities.Des(TypeDeDes.D6, 1));
		a.setDgtsM(new utilities.Des(TypeDeDes.D8, 1));
		
		ArrayList<Integer> l = new ArrayList<Integer>() ;
		l.add(19,20) ;
		a.setZoneCritique(l) ;
		
		a.setFacteurCritique(2) ;
	}
}
