package User;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

public class Classe implements Serializable {

	private static final long serialVersionUID = 1L ;
	private String nom ; 
	private HashMap<Integer, ArrayList<Integer>> bonusAtt;
	private HashMap<Integer, Integer> bonusRef ; 
	private HashMap<Integer, Integer> bonusVig ;
	private HashMap<Integer, Integer> bonusVol ; 
	
	public Classe() {
		
	}
	
	public Classe(String nom) {
		this.nom = nom ;
	}
	
	public void setNom(String nom) {
		this.nom = nom ;
	}
	
	public String getNom() {
		return (this.nom) ;
	}
	
	public void setBonusAtt(HashMap<Integer, ArrayList<Integer>> tableAtt) {
		this.bonusAtt = tableAtt ;
	}
	
	public HashMap<Integer, ArrayList<Integer>> getBonusAtt() {
		return (this.bonusAtt) ;
	}
	
	public void setBonusRef(HashMap<Integer, Integer> tableRef) {
		this.bonusRef = tableRef ;
	}
	
	public HashMap<Integer, Integer> getBonusRef() {
		return (this.bonusRef) ;
	}
	
	public void setBonusVig(HashMap<Integer, Integer> tableVig) {
		this.bonusVig = tableVig ;
	}
	
	public HashMap<Integer, Integer> getBonusVig() {
		return (this.bonusVig) ;
	}
	
	public void setBonusVol(HashMap<Integer, Integer> tableVol) {
		this.bonusVol = tableVol ;
	}
	
	public HashMap<Integer, Integer> getBonusVol() {
		return (this.bonusVol) ;
	}
}
