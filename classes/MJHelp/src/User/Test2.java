package User;

import java.util.ArrayList;
import java.util.HashMap;

public class Test2 {

	
	public static void main (String[] args) {
		
		HashMap<Integer, ArrayList<Integer>> tableAtt = new HashMap<Integer, ArrayList<Integer>>() ;
		HashMap<Integer, Integer> tableRef = new HashMap<Integer, Integer>(); 
		HashMap<Integer, Integer> tableVig = new HashMap<Integer, Integer>() ;
		HashMap<Integer, Integer> tableVol = new HashMap<Integer, Integer>() ;
		int j ;

		/** Création d'une instance de la classe Classe*/
		Classe g = new Classe() ;
		
		/** On remplit les tables pour chaque niveau */
		for(int i=1; i<=20; i++) {
			
			/** On remplit la table du bonus de base à l'attaque */
			ArrayList<Integer> l = new ArrayList<Integer>() ;
			j = i - 1 - (i-1)/4 ;
			l.add(j) ;
			if (j>5 && 10>=j) {
				l.add(j-5) ;
			}
			else if (j>10 && 15>=j) {
				l.add(j-5) ;
				l.add(j-10) ;
			}
			else if (j>15) {
				l.add(j-5) ;
				l.add(j-10) ;
				l.add(j-15)	;
			}
			tableAtt.put(i, l) ;
			
			/** On remplit la table du bonus de base de Vigueur*/
				tableVig.put(i, (i-i%3)/3) ;
			/** On remplit la table du bonus de base de Réflexes*/
				tableRef.put(i, 2+(i-i%2)/2) ;
			/** On remplit la table du bonus de base de Volonté*/
				tableVol.put(i, (i-i%3)/3) ;
		}
		/** Ajout de chaque table dans g */
		g.setBonusAtt(tableAtt) ;
		g.setBonusVol(tableVol) ;
		g.setBonusVig(tableVig) ;
		g.setBonusRef(tableRef);
		
		for (int i = 1; i<=20; i++) {
			System.out.println("Réflexes " + i + " : " + g.getBonusRef().get(i));
		}
		for (int i = 1; i <=20; i++) {
			System.out.println("Volonté " + i + " : " + g.getBonusVol().get(i));
		}
		for (int i = 1; i<=20; i++) {
			System.out.println("Vigueur " + i + " : " + g.getBonusVig().get(i));
		}
		for (int i = 1; i<=20; i++) {
			for (int k = 0; k<g.getBonusAtt().get(i).size(); k++) {
				System.out.println("Niveau " + i + " Attaque n° " + k + " : " + g.getBonusAtt().get(i).get(k));
			}
		}
	}
	
}
