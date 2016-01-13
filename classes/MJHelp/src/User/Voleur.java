package User;

import java.util.ArrayList;
import java.util.HashMap;

import Core.TypeDeDes;

@Singleton
public class Voleur {

	@PersistenceContext
	private EntityManager em;

	private Core.Des DVie ;
	private HashMap<Integer, ArrayList<Integer>> tableAtt;
	private HashMap<Integer, Integer> tableRef ; 
	private HashMap<Integer, Integer> tableVig ;
	private HashMap<Integer, Integer> tableVol ;
	
	public Voleur() {
		/** Création d'une instance de la classe Classe*/
		Classe v = new Classe("Voleur") ;
		/** On remplit les tables pour chaque niveau */
		for(int i=1; i<=20; i++) {
			/** On remplit la table du bonus de base à l'attaque */
			ArrayList<Integer> l = new ArrayList<Integer>() ;
			int j = i - 1 - (i-1)/4 ;
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
		/** Ajout de chaque table dans v */
		v.setDVie(new Core.Des(TypeDeDes.D10));
		v.setBonusAtt(tableAtt) ;
		v.setBonusVol(tableVol) ;
		v.setBonusVig(tableVig) ;
		v.setBonusRef(tableRef);
		em.persist(v);
	}
	
	public Classe getVoleur(String nom) {
		return em.find(Classe.class, nom) ;
	}
	
}
