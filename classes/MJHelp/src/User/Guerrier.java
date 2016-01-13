package User;

import java.util.ArrayList;
import java.util.HashMap;

import Core.TypeDeDes;

@Singleton
public class Guerrier {

	@PersistenceContext
	private EntityManager em;

	private HashMap<Integer, ArrayList<Integer>> tableAtt;
	private HashMap<Integer, Integer> tableRef ; 
	private HashMap<Integer, Integer> tableVig ;
	private HashMap<Integer, Integer> tableVol ;
	
	public Guerrier() {
		/** Création d'une instance de la classe Classe*/
		Classe g = new Classe("Guerrier") ;
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
		/** Ajour de chaque table dans g */
		g.setDVie(new Core.Des(TypeDeDes.D10));
		g.setBonusAtt(tableAtt) ;
		g.setBonusVol(tableVol) ;
		g.setBonusVig(tableVig) ;
		g.setBonusRef(tableRef);
		em.persist(g);
	}
	
	public Classe getGuerrier(String nom) {
		return em.find(Classe.class, nom) ;
	}
	
}
