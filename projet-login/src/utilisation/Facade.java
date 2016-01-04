package utilisation;
import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Utilisateur;
import utils.TypeUtilisateur;

@Singleton
public class Facade {
	
	@PersistenceContext
	private EntityManager em;
	
	public Facade() {}
	
	public void ajoutUtilisateur(String pseudo,String mdp,TypeUtilisateur type){
		Utilisateur u = new Utilisateur(pseudo, mdp, type);
		em.persist(u);
	}
	
	public boolean checkUtilisateur(String pseudo,String mdp){
		Utilisateur u = em.find(Utilisateur.class, pseudo);
		if(u != null){
		return u.getMdp().equals(mdp);
		}else{
			return false;
		}
	}
	
	public Utilisateur getUtilisateur(String pseudo){
		return em.find(Utilisateur.class, pseudo);
	}
}
