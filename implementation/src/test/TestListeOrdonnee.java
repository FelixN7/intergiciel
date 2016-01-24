package test;

import java.util.ArrayList;
import java.util.HashMap;

import bean.Fiche;
import utilities.Caracteristiques;

public class TestListeOrdonnee {

	//La table Hachage contenant les initiatives des combattant
	private static HashMap<String, Integer> initiatives ;
	private static ArrayList<Fiche> listePJS ;
	
	public static void main(String[] args) {
		/** Initialisation */
		listePJS = new ArrayList<Fiche>() ;
		Fiche Jacques = new Fiche() ;
		Jacques.setNomPerso("Jacques");
		Jacques.setCaracteristiques(new Caracteristiques(10, 12, 10, 10, 10, 10));
		listePJS.add(Jacques) ;
		Fiche Pierre = new Fiche() ;
		Pierre.setNomPerso("Pierre");
		Pierre.setCaracteristiques(new Caracteristiques(10, 12, 10, 10, 10, 10));
		listePJS.add(Pierre) ;
		Fiche Simon = new Fiche() ;
		Simon.setNomPerso("Simon");
		Simon.setCaracteristiques(new Caracteristiques(10, 12, 10, 10, 10, 10));
		listePJS.add(Simon) ;
		Fiche Felix = new Fiche() ;
		Felix.setNomPerso("Felix");
		Felix.setCaracteristiques(new Caracteristiques(10, 17, 10, 10, 10, 10));
		listePJS.add(Felix) ;
		Fiche Yvette = new Fiche() ;
		Yvette.setNomPerso("Yvette");
		Yvette.setCaracteristiques(new Caracteristiques(2, 5, 2, 10, 6, 8));
		listePJS.add(Yvette) ;
		Fiche Kevin = new Fiche() ;
		Kevin.setNomPerso("Kevin");
		Kevin.setCaracteristiques(new Caracteristiques(14, 70, 12, 18, 15, 25));
		listePJS.add(Kevin) ;
		Fiche Tonmar = new Fiche() ;
		Tonmar.setNomPerso("Tonmar");
		Tonmar.setCaracteristiques(new Caracteristiques(1000, 1000, 1000, 1000, 1000, 1000));
		listePJS.add(Tonmar) ;
		
		initiatives = new HashMap<String, Integer>() ;
		initiatives.put("Jacques", 18) ;
		initiatives.put("Pierre", 14) ;
		initiatives.put("Simon", 3) ;
		initiatives.put("Felix", 3) ;
		initiatives.put("Yvette", 2) ;
		initiatives.put("Kevin", 35) ;
		initiatives.put("Tonmar", 150) ;
		
		/**On Commence par récupérer l'initiative de participant au combat */
		ArrayList<Fiche> listeTours = new ArrayList<Fiche>() ;
		
		/** On concatène la liste des PJs et celle des combattants */
		ArrayList<Fiche> listeParticipants = new ArrayList<Fiche>() ;
		listeParticipants.addAll(listePJS) ;
		Fiche j = null ;
		Fiche joueurMax = null ;
		
		/**On récupère l'initiative des pj */
		while(listeParticipants.size() > 0) {
			j = listeParticipants.get(0) ;
			int max = initiatives.get(j.getNomPerso());
			for (Fiche pj : listeParticipants) {
				if (max < initiatives.get(pj.getNomPerso())) {
					max = initiatives.get(pj.getNomPerso()) ;
					joueurMax = pj ;
				} else if (max == initiatives.get(pj.getNomPerso())) {
					if (j.getCaracteristiques().getDex() <= pj.getCaracteristiques().getDex()) {
						max = initiatives.get(pj.getNomPerso()) ;
						joueurMax = pj ;
					}
				}
			}
			listeTours.add(joueurMax) ;
			listeParticipants.remove(joueurMax);
		}
		
		for (int i = 0; i< listeTours.size(); i++) {
			System.out.println(listeTours.get(i).getNomPerso().toString());
		}
		
	}

}
