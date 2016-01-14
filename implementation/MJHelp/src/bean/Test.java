package bean;

import java.util.ArrayList;
import java.util.HashMap;

public class Test {

	
	public static void main (String[] args) {
		
		HashMap<Integer, ArrayList<Integer>> tableAtt = new HashMap<Integer, ArrayList<Integer>>() ;
		HashMap<Integer, Integer> tableRef = new HashMap<Integer, Integer>(); 
		HashMap<Integer, Integer> tableVig = new HashMap<Integer, Integer>() ;
		HashMap<Integer, Integer> tableVol = new HashMap<Integer, Integer>() ;
		

		/** Création d'une instance de la classe Classe*/
		Classe g = new Classe() ;
		
		/** On remplit les tables pour chaque niveau */
		for(int i=1; i<=20; i++) {
			
			/** On remplit la table du bonus de base à l'attaque */
			ArrayList<Integer> l = new ArrayList<Integer>() ;
			l.add(i) ;
			if (i>5 && 10>=i) {
				l.add(i-5) ;
			}
			else if (i>10 && 15>=i) {
				l.add(i-5) ;
				l.add(i-10) ;
			}
			else if (i>15) {
				l.add(i-5) ;
				l.add(i-10) ;
				l.add(i-15)	;
			}
			tableAtt.put(i, l) ;
			
			/** On remplit la table du bonus de base de Réflexes*/
				tableRef.put(i, (i-i%3)/3) ;
			/** On remplit la table du bonus de base de Vigueur*/
				tableVig.put(i, 2+(i-i%2)/2) ;
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
			for (int j = 0; j<g.getBonusAtt().get(i).size(); j++) {
				System.out.println("Niveau " + i + " Attaque n° " + j + " : " + g.getBonusAtt().get(i).get(j));
			}
		}
	}
	
}
