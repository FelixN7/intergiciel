package facade;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import bean.BonusAtt;
import bean.BonusRef;
import bean.BonusVig;
import bean.BonusVol;
import bean.ClasseLvl;

@Singleton
public class FacadeBonus {

	@PersistenceContext
	private EntityManager em;

	public FacadeBonus(){}


	public int getBonusAtt(String classeName, int lvl){
		ClasseLvl clvl = new ClasseLvl(classeName, lvl);
		return em.find(BonusAtt.class, clvl).getModificateur();
	}

	public int getBonusRef(String classeName, int lvl){
		ClasseLvl clvl = new ClasseLvl(classeName, lvl);
		return em.find(BonusRef.class, clvl).getModificateur();
	}

	public int getBonusVig(String classeName, int lvl){
		ClasseLvl clvl = new ClasseLvl(classeName, lvl);
		return em.find(BonusVig.class, clvl).getModificateur();
	}
	
	public int getBonusVol(String classeName, int lvl){
		ClasseLvl clvl = new ClasseLvl(classeName, lvl);
		return em.find(BonusVol.class, clvl).getModificateur();
	}
}
