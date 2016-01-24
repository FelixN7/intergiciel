package bean;

import java.io.Serializable;
import java.util.ArrayList;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Classe implements Serializable {

	private static final long serialVersionUID = 1L ;
	@Id
	private String nom ;
	private utilities.Des DVie ;
//	private HashMap<Integer, ArrayList<Integer>> bonusAtt;
	
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

	@Override
	public int hashCode() {
		return nom.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Classe other = (Classe) obj;
		return nom.equals(other.nom);
	}

	

//	public Collection<BonusRef> getBonusReff() {
//		return bonusReff;
//	}
//
//	public void setBonusReff(Collection<BonusRef> bonusReff) {
//		this.bonusReff = bonusReff;
//	}
	
}
