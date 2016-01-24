package bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Classe implements Serializable {

	private static final long serialVersionUID = 1L ;
	@Id
	private String nom ;
	private utilities.Des DVie ;
//	private HashMap<Integer, ArrayList<Integer>> bonusAtt;
//	@OneToMany (mappedBy="classe", fetch=FetchType.EAGER )
//	private Collection<BonusRef> bonusReff; 
//	private HashMap<Integer, Integer> bonusVig ;
//	private HashMap<Integer, Integer> bonusVol ; 
	
	public Classe() {}
	
	public Classe(String nom) {
		this.nom = nom ;
	}
	
	public void setNom(String nom) {
		this.nom = nom ;
	}
	
	public String getNom() {
		return (this.nom) ;
	}
	
	public utilities.Des getDVie() {
		return DVie;
	}

	public void setDVie(utilities.Des dVie) {
		DVie = dVie;
	}
//	
//	public void setBonusAtt(HashMap<Integer, ArrayList<Integer>> tableAtt) {
//		this.bonusAtt = tableAtt ;
//	}
//	
//	public HashMap<Integer, ArrayList<Integer>> getBonusAtt() {
//		return (this.bonusAtt) ;
//	}
//	
//	public Collection<BonusRef> getBonusReff() {
//		return bonusReff;
//	}
//
//	public void setBonusReff(Collection<BonusRef> bonusReff) {
//		this.bonusReff = bonusReff;
//	}
//	
//	public void setBonusVig(HashMap<Integer, Integer> tableVig) {
//		this.bonusVig = tableVig ;
//	}
//	
//	public HashMap<Integer, Integer> getBonusVig() {
//		return (this.bonusVig) ;
//	}
//	
//	public void setBonusVol(HashMap<Integer, Integer> tableVol) {
//		this.bonusVol = tableVol ;
//	}
//	
//	public HashMap<Integer, Integer> getBonusVol() {
//		return (this.bonusVol) ;
//	}

	public String toString(ArrayList<Integer> l) {
		if (l.size() != 0) {
			String s = new String() ;
			for (int i = 0; i<l.size(); i++) {
				s = s+"+"+l.get(i)+"/" ;
			}
			return s ;
		}
		return null ;
	}


	
}
