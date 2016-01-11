package User;

import java.util.ArrayList;
import java.util.HashMap;

@Singleton
public class Voleur {

	@PersistenceContext
	private EntityManager em;

	private HashMap<Integer, ArrayList<Integer>> tableAtt;
	private HashMap<Integer, Integer> tableRef ; 
	private HashMap<Integer, Integer> tableVig ;
	private HashMap<Integer, Integer> tableVol ;
	
	public Voleur() {
		/** Création d'une instance de la classe Classe*/
		Classe g = new Classe() ;
		/** On remplit les tables pour chaque niveau */
		for(int i=1; i<=20; i++) {
			/** On remplit la table du bonus de base à l'attaque */
			ArrayList<Integer> l = new ArrayList<Integer>() ;
			l.add(i - 1 - (i-i%5)/5) ;
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
		em.persist(g);
	}
	
	public Classe getVoleur(String nom) {
		return em.find(Classe.class, nom) ;
	}
	
}
