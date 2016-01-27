package facade;

import java.util.Collection;
import java.util.List;
import java.util.Vector;

import javax.ejb.Singleton;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import bean.Fiche;
import bean.Partie;
import bean.PersoPseudo;

@Singleton
public class FacadeFiche {

	@PersistenceContext
	private EntityManager em ;
	
	public FacadeFiche() {}
	
	public Fiche insererFiche(Fiche fiche) {
		em.persist(fiche);
		return fiche ;
	}
	
	public void supprimerFiche(Fiche f) {
		if (em.contains(f)) {
			em.remove(f);
		} else {
			System.out.println("Ce personnage n'est pas présent");
		}
	}
	
	public void voirFiche() {
		
	}
	
	public Fiche getFiche(String pseudo,String nomPerso){
		PersoPseudo pp = new PersoPseudo(pseudo, nomPerso);
		return em.find(Fiche.class, pp);
	}
	
	public void ajouterPartie(Fiche f, Partie p){
		f.setPartie(p);
		em.refresh(f);
	}
	
	public Collection<String> getNomPersos(String pseudo){
		String reqString = "from Fiche where pseudo like ?1";
		Query query = em.createQuery(reqString);
		query.setParameter(1, pseudo);
		
		List<Fiche> fiches = query.getResultList();
		
		Collection<String> persos = new Vector<String>();
		for(Fiche f :fiches){
			persos.add(f.getNomPerso());
		}
		return persos;
	}
	
	
	
}
