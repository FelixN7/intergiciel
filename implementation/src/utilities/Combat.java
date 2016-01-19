package utilities;

import java.util.ArrayList;

import bean.Fiche;

/**
 * Classe permettant de r�aliser un combat
 * @author Maxime
 * @version 1.0
 */

public class Combat {

	// La liste des Joueurs participants au combat
	private ArrayList<Fiche> listePJS ;
	//La liste des adversaires des joueurs participant au combat
	private ArrayList<Fiche> listeOPPOSANTS ;
	
	/**
	 * Le constructeur du combat
	 * @param PJS
	 * @param Opposants
	 */
	public Combat(ArrayList<Fiche> PJS, ArrayList<Fiche> Opposants) {
		this.listePJS = PJS ;
		this.listeOPPOSANTS = Opposants ;
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
	 * Initie le combat
	 */
	public void demarrerCombat() {
		/**On Commence par r�cup�rer l'initiative de chaque joueur */
		
	}
	
	/**
	 * Attaque d'un joueur1 sur un joueur2
	 * @param Joueur1 le joueur attaquant
	 * @param resD le r�sultat de son jet de d�
	 * @param nbAttaque le nombre d'attaque dont il dispose
	 * @param Joueur2 le joueur attaqu�
	 */
	public void attaque(Fiche Joueur1, int resD, int nbAttaque, Fiche Joueur2) {
		boolean touche ;
		if (resD +  Joueur1.getAttaque().get(nbAttaque) >= Joueur2.getCa()) {
			touche = true ;
		} else {
			touche = false ;
		}
	}
	
}
