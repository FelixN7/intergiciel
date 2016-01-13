package User;

import java.util.ArrayList;

import Core.TypeDeDes;

@Singleton
public class EpeeBatarde {

	@PersistenceContext
	private EntityManager em ;
	
	public EpeeBatarde() {
		/** Cr�ation d'une instance de la classe Arme */
		Arme a = new Arme("�p�e b�tarde") ;
		
		/** On Remplit un � un les champs */
		a.setDgtsP(new Core.Des(TypeDeDes.D8));
		a.setDgtsM(new Core.Des(TypeDeDes.D10));
		
		ArrayList<Integer> l = new ArrayList<Integer>() ;
		l.add(19,20) ;
		a.setZoneCritique(l);
		
		a.setFacteurCritique(2);
		
		em.persist(a);
	}
	
	public Classe getEpeeBatarde(String nom) {
		return em.find(Arme.class, nom) ;
	}
	
}
