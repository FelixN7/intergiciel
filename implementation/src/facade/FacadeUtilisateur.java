package facade;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.Utilisateur;
import utilities.TypeUtilisateur;

@Singleton
public class FacadeUtilisateur {
	
	@PersistenceContext
	private EntityManager em;
	
	public FacadeUtilisateur() {}
	
	public void ajoutUtilisateur(String pseudo,String mdp,TypeUtilisateur type){
		Utilisateur u = new Utilisateur(pseudo, encrypt(mdp), type);
		em.persist(u);
	}
	
	public boolean checkUtilisateur(String pseudo,String mdp){
		Utilisateur u = em.find(Utilisateur.class, pseudo);
		if(u != null){
		return u.getMdp().equals(encrypt(mdp));
		}else{
			return false;
		}
	}
	
	public Utilisateur getUtilisateur(String pseudo){
		return em.find(Utilisateur.class, pseudo);
	}
	
    private static String encrypt(String password){
        String crypte="";
        for (int i=0; i<password.length();i++)  {
            int c=password.charAt(i)^24;  
            crypte=crypte+(char)c; 
        }
        return crypte;
    }
}
