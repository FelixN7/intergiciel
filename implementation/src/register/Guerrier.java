package register;

import java.util.ArrayList;
import java.util.HashMap;

import bean.Classe;
import utilities.TypeDeDes;

public class Guerrier {
	Classe cl;
	private HashMap<Integer, ArrayList<Integer>> tableAtt = new HashMap<Integer, ArrayList<Integer>>();
	private HashMap<Integer, Integer> tableRef = new HashMap<Integer, Integer>(); 
	private HashMap<Integer, Integer> tableVig = new HashMap<Integer, Integer>();
	private HashMap<Integer, Integer> tableVol = new HashMap<Integer, Integer>();
	
	public Guerrier() {
		/** Création d'une instance de la classe Classe*/
		cl = new Classe("Guerrier") ;
		/** On remplit les tables pour chaque niveau */
		for(int i=1; i<=20; i++) {
			/** On remplit la table du bonus de base � l'attaque */
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
			
			/** On remplit la table du bonus de base de R�flexes*/
				tableRef.put(i, (i-i%3)/3);
			/** On remplit la table du bonus de base de Vigueur*/
				tableVig.put(i, 2+(i-i%2)/2) ;
			/** On remplit la table du bonus de base de Volont�*/
				tableVol.put(i, (i-i%3)/3) ;
		}
		/** Ajour de chaque table dans g */
		cl.setDVie(new utilities.Des(TypeDeDes.D10, 1));
//		cl.setBonusAtt(tableAtt) ;
//		cl.setBonusVol(tableVol) ;
//		cl.setBonusVig(tableVig) ;
//		cl.setBonusRef(tableRef);
	}
	
}
