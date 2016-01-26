package utilities;

import java.io.Serializable;
import java.util.HashMap;

public class Competences implements Serializable{
	
	private HashMap<String, Integer> competences ;
	
	public Competences() {
		competences = new HashMap<String, Integer>() ;
		competences.put("Acrobaties", 0) ;
		competences.put("Art de la magie", 0) ;
		competences.put("Artisanat", 0) ;
		competences.put("Bluff", 0) ;
		competences.put("Concentration", 0) ;
		competences.put("Connaissance(Mysteres)", 0) ;
		competences.put("Connaissance(Nature)", 0) ;
		competences.put("Connaissance(Religion)", 0) ;
		competences.put("Contrefacon", 0) ;
		competences.put("Crochatege", 0) ;
		competences.put("Decryptage", 0) ;
		competences.put("Deguisement", 0) ;
		competences.put("Deplacement silencieux", 0) ;
		competences.put("Desamorcage/sabotage", 0) ;
		competences.put("Detection", 0) ;
		competences.put("Diplomatie", 0) ;
		competences.put("Discretion", 0) ;
		competences.put("Dressage", 0) ;
		competences.put("Equilibre", 0) ;
		competences.put("Equitation", 0) ;
		competences.put("Escalade", 0) ;
		competences.put("Escamotage", 0) ;
		competences.put("Estimation", 0) ;
		competences.put("Evasion", 0) ;
		competences.put("Fouille", 0) ;
		competences.put("Intimidation", 0) ;
		competences.put("Maitrise des cordes", 0) ;
		competences.put("Natation", 0) ;
		competences.put("Perception auditive", 0) ;
		competences.put("Premier secours", 0) ;
		competences.put("Profession", 0) ;
		competences.put("Psychologie", 0) ;
		competences.put("Renseignements", 0) ;
		competences.put("Representation", 0) ;
		competences.put("Saut", 0) ;
		competences.put("Survie", 0) ;
		competences.put("Utilisation d'objets magiques", 0) ;
	}
	
	public Competences(HashMap<String, Integer> competences) {
		this.competences = competences ;
		
	}

	public HashMap<String, Integer> getComp() {
		return competences;
	}

	public void setComp(HashMap<String, Integer> competences) {
		this.competences = competences;
	}
	
}
