package Utilities;

import java.util.ArrayList;

import bean.Fiche;

public class Combat {

	private ArrayList<Fiche> listePJS ;
	private ArrayList<Fiche> listeOPPOSANTS ;
	
	public Combat(ArrayList<Fiche> PJS, ArrayList<Fiche> Opposants) {
		this.listePJS = PJS ;
		this.listeOPPOSANTS = Opposants ;
	}
	
	public void ajouterJoueur(Fiche joueur) {
		this.listePJS.add(joueur) ;
	}
	
	public void ajouterOpposant(Fiche opposant) {
		this.listeOPPOSANTS.add(opposant) ;
	}
	
	public void demarrerCombat() {
		/**On Ccommence par r�cup�rer l'initiative de chaque joueur */
		
	}
	
}
