package register;

import javax.persistence.EntityManager;

import bean.BonusAtt;
import bean.BonusRef;
import bean.BonusVig;
import bean.BonusVol;
import bean.Classe;
import utilities.Des;
import utilities.TypeDeDes;

public class Roublard {

	public static void inserer(EntityManager em) {
		//insere la classe roublard dans la table de classe
		Classe c = new Classe("roublard");
		c.setDVie(new Des(TypeDeDes.D6, 1));
		em.persist(c);

		//insertion de toute la table d attaque pour la classe roublard en bdd
		for(int i=1;i<=20;i++){
			BonusAtt batt = new BonusAtt();
			batt.setClasseName(c.getNom());
			batt.setLvl(i);
			batt.setModificateur(i-1-(i-1)/4);
			em.persist(batt);
		}
		//insertion de toute la table de reflexe pour la classe roublard en bdd
		for(int i=1;i<=20;i++){
			BonusRef bref = new BonusRef();
			bref.setClasseName(c.getNom());
			bref.setLvl(i);
			bref.setModificateur(2+i/2);
			em.persist(bref);
		}
		//insertion de toute la table de vigueur pour la classe roublard en bdd
		for(int i=1;i<=20;i++){
			BonusVig bvig = new BonusVig();
			bvig.setClasseName(c.getNom());
			bvig.setLvl(i);
			bvig.setModificateur(i/3);
			em.persist(bvig);
		}
		//insertion de toute la table de volonte pour la classe roublard en bdd
		for(int i=1;i<=20;i++){
			BonusVol bvol = new BonusVol();
			bvol.setClasseName(c.getNom());
			bvol.setLvl(i);
			bvol.setModificateur(i/3);
			em.persist(bvol);
		}
	}			
}

