package utilities;

import java.util.ArrayList;
import java.util.HashMap;

import bean.Fiche;

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
	 * Initie le combat
	 */
	public void demarrerCombat() {
		/**On Commence par récupérer l'initiative de participant au combat */
		ListeOrdonnee lo = new ListeOrdonnee() ;
		/**On récupère l'initiative des pj */
		for (Fiche pj : listePJS) {
			lo.inserer(initiatives.get(pj.getNomPerso())) ;
		}
		/**On récupère l'initiative des opposants*/
		for (Fiche opposant : listeOPPOSANTS) {
			lo.inserer(initiatives.get(opposant.getNomPerso()));
		}
		
	}
	
	/**
	 * Attaque d'un joueur1 sur un joueur2
	 * @param Joueur1 le joueur attaquant
	 * @param resD le résultat de son jet de dé
	 * @param nbAttaque le nombre d'attaque dont il dispose
	 * @param Joueur2 le joueur attaqué
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
