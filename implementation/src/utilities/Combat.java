package utilities;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

import bean.Fiche;
import facade.FacadeBonus;

/**
 * Classe permettant de réaliser un combat
 * @author Maxime
 * @version 1.0
 */

public class Combat {

	// La liste des Joueurs participants au combat
	private ArrayList<Fiche> listePJS ;
	//La liste des adversaires des joueurs participant au combat
	private ArrayList<Fiche> listeOPPOSANTS ;
	//La table Hachage contenant les initiatives des combattant
	private HashMap<String, Integer> initiatives ;
	
	/**
	 * Le constructeur du combat
	 * @param PJS
	 * @param Opposants
	 */
	public Combat(ArrayList<Fiche> PJS, ArrayList<Fiche> Opposants) {
		this.listePJS = PJS ;
		this.listeOPPOSANTS = Opposants ;
		this.initiatives = new HashMap<String, Integer>() ;
	}
	
	/**
	 * Ajoute un joueur au combat
	 * @param joueur
	 */
	public void ajouterJoueur(Fiche joueur) {
		this.listePJS.add(joueur) ;
	}
	
	/**
	 * Ajoute un adversaire au combat
	 * @param opposant
	 */
	public void ajouterOpposant(Fiche opposant) {
		this.listeOPPOSANTS.add(opposant) ;
	}
	
	/**
	 * Ajout l'initiative du combattant dans la table 
	 * @param combattant
	 * @param initiative
	 */
	public void ajoutInit(Fiche combattant, Integer initiative) {
		initiatives.put(combattant.getNomPerso(), initiative) ;
	}
	
	/**
	 * Retourne la liste des PJs participants au combat
	 * @return listePJS
	 */
	public ArrayList<Fiche> getPJS() {
		return this.listePJS ;
	}
	
	/**
	 * Retourne la liste des Opposants
	 * @return listeOpposants
	 */
	public ArrayList<Fiche> getOpposants() {
		return this.listeOPPOSANTS ;
	}
	
	/**
	 * Retourne la liste des initiatives
	 * @return initiatives
	 */
	public HashMap<String, Integer> getInitiatives() {
		return this.initiatives ;
	}
	
	/**
	 * Initie le combat
	 */
	public void demarrerCombat() {
		
		/**On Commence par récupérer l'initiative de participant au combat */
		ArrayList<Fiche> listeTours = new ArrayList<Fiche>() ;
		
		/** On concatène la liste des PJs et celle des combattants */
		ArrayList<Fiche> listeParticipants = new ArrayList<Fiche>() ;
		listeParticipants.addAll(listePJS) ;
		listeParticipants.addAll(listeOPPOSANTS) ;
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
			/** listeTours correspond à la liste triée dans l'ordre de jeu */
			listeTours.add(joueurMax) ;
			listeParticipants.remove(joueurMax);
		}
	}
	
	/**
	 * Attaque d'un joueur1 sur un joueur2
	 * @param Joueur1 le joueur attaquant
	 * @param resD le résultat de son jet de dé
	 * @param Joueur2 le joueur attaqué
	 * @return touche le joueur a été touché ou non
	 */
	public boolean attaque(Fiche Joueur1, int resD, boolean droite, Fiche Joueur2) {
		boolean touche ;
		FacadeBonus fb = new FacadeBonus() ;
		
		//Si le joueur 1 attaque de la main de droite
		if (droite) {
			//Et si ce joueur ne possède pas d'arme dans la main gauche
			if (Joueur1.getArmeGauche() == null) {
				//Alors le jet n'a pas de malus
				if (resD +  fb.getBonusAtt(Joueur1.getClasse().getNom(), Joueur1.getLevel()) + Joueur1.getCaracteristiques().getModFor() >= Joueur2.getCa()) {
					touche = true ;
				} else {
					touche = false ;
				}
			//Si le joueur possède une arme dans la main gauche
			} else {
				//Le jet possède un malus de -2
				if (resD +  fb.getBonusAtt(Joueur1.getClasse().getNom(), Joueur1.getLevel()) + Joueur1.getCaracteristiques().getModFor() - 2>= Joueur2.getCa()) {
					touche = true ;
				} else {
					touche = false ;
				}
			}
		//Si le joueur 2 attaque de la main gauche
		} else {
			//Si le joueur ne possède pas d'arme dans la main droite
			if (Joueur1.getArmeDroite() == null) {
				//Pas de malus
				if (resD +  fb.getBonusAtt(Joueur1.getClasse().getNom(), Joueur1.getLevel()) + Joueur1.getCaracteristiques().getModFor() >= Joueur2.getCa()) {
					touche = true ;
				} else {
					touche = false ;
				}
			//Si le joueur possède une arme dans chaque main
			} else {
				//Malus de -6 sur sa main non directrice
				if (resD +  fb.getBonusAtt(Joueur1.getClasse().getNom(), Joueur1.getLevel()) + Joueur1.getCaracteristiques().getModFor() - 6 >= Joueur2.getCa()) {
					touche = true ;
				} else {
					touche = false ;
				}
			}
		}
		return touche ;
	}
	
	/**
	 * Calcule les degats d'un joueur1 sur un joueur2 et les soustrait au total de pv du joueur2
	 * @param Joueur1
	 * @param jetDe
	 * @param Joueur2
	 * @return
	 */
	public int calculDgts(Fiche Joueur1, int jetDe, boolean droite, Fiche Joueur2) {
		int dgts = 0 ;
		if (Joueur1.getType() == PersoType.PNJ || Joueur1.getType() == PersoType.MONSTRES) {
			if (droite) {
				dgts = Joueur1.getArmeDroite().getDgtsM().lancer() ;
				dgts += Joueur1.getCaracteristiques().getModFor() ;
				
				Joueur2.setVieCourante(Joueur2.getVieCourante()-dgts) ;
			} else {
				dgts = Joueur1.getArmeGauche().getDgtsM().lancer() ;
				dgts += Joueur1.getCaracteristiques().getModFor() ;
				
				Joueur2.setVieCourante(Joueur2.getVieCourante()-dgts) ;
			}
		} else {
			dgts = Joueur1.getCaracteristiques().getModFor() + jetDe;
			
			Joueur2.setVieCourante(Joueur2.getVieCourante()-dgts) ;
		}
		return dgts ;
	}
	
}
