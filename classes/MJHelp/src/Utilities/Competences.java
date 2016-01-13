package Utilities;

import java.util.HashMap;

public class Competences {

	private HashMap<String, Integer> competences ;
	
	public Competences() {
		competences = new HashMap<String, Integer>() ;
		competences.put("Acrobaties", 0) ;
		competences.put("Art de la magie", 0) ;
		competences.put("Artisanat", 0) ;
		competences.put("Bluff", 0) ;
		competences.put("Concentration", 0) ;
		competences.put("Connaissance(Mystères)", 0) ;
		competences.put("Connaissance(Nature)", 0) ;
		competences.put("Connaissance(Religion)", 0) ;
		competences.put("Contrefaçon", 0) ;
		competences.put("Crochatege", 0) ;
		competences.put("Décryptage", 0) ;
		competences.put("Déguisement", 0) ;
		competences.put("Déplacement silencieux", 0) ;
		competences.put("désamorcçage/sabotage", 0) ;
		competences.put("Détection", 0) ;
		competences.put("Diplomatie", 0) ;
		competences.put("Discrétion", 0) ;
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
		competences.put("Représentation", 0) ;
		competences.put("Saut", 0) ;
		competences.put("Survie", 0) ;
		competences.put("Utilisation d'objets magiques", 0) ;
	}

	public HashMap<String, Integer> getCompetences() {
		return competences;
	}

	public void setCompetences(HashMap<String, Integer> competences) {
		this.competences = competences;
	}
	
}
