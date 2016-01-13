package User;

import java.util.ArrayList;

import Core.TypeDeDes;

@Singleton
public class EpeeLongue {

	@PersistenceContext
	EntityManager em ;
	
	public EpeeLongue() {
		/** Création d'une instance de la classe arme */
		Arme a = new Arme("épée longue") ;
		
		/** On remplit les différents champs */
		a.setDgtsP(new Core.Des(TypeDeDes.D6));
		a.setDgtsM(new Core.Des(TypeDeDes.D8));
		
		ArrayList<Integer> l = new ArrayList<Integer>() ;
		l.add(19,20) ;
		a.setZoneCritique(l) ;
		
		a.setFacteurCritique(2) ;
		
		em.persist(a);
	}
	
	public Classe getEpeeLongue(String nom) {
		return em.find(Arme.class, nom) ;
	}
}
