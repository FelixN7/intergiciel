package register;

import java.util.ArrayList;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Arme;
import utilities.TypeDeDes;

@Singleton
public class EpeeBatarde {

	@PersistenceContext
	private EntityManager em ;
	
	public EpeeBatarde() {
		/** Cr�ation d'une instance de la classe Arme */
		Arme a = new Arme("�p�e b�tarde") ;
		
		/** On Remplit un � un les champs */
		a.setDgtsP(new utilities.Des(TypeDeDes.D8, 1));
		a.setDgtsM(new utilities.Des(TypeDeDes.D10, 1));
		
		ArrayList<Integer> l = new ArrayList<Integer>() ;
		l.add(19,20) ;
		a.setZoneCritique(l);
		
		a.setFacteurCritique(2);
		
		em.persist(a);
	}
	
	public Arme getEpeeBatarde(String nom) {
		return em.find(Arme.class, nom) ;
	}
	
}
