package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Fiche;
import utilities.Combat;

/**
 * Servlet implemententation servCombat
 */
public class ServCombat extends HttpServlet {

	private static final long serialVersionUID = 5504876312795472403L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServCombat() {
		super() ;
	}
	
	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * @see HttpServlet#doGet (HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//On initialise la liste des PJs et la liste des opposants
		ArrayList<Fiche> PJS = new ArrayList<Fiche>() ;
		ArrayList<Fiche> Opposants = new ArrayList<Fiche>() ;
		HashMap<String, Integer> initiatives = new HashMap<String, Integer>() ;
		
		//On crée le combat
		Combat combat = new Combat(PJS, Opposants) ;		
		
		//On récupère et on ajoute un à un les participants au combat
		//combat.ajouterJoueur(joueur);
		
		//On ajoute leurs initiatives
		//combat.ajoutInit(combattant, initiative);
		
		//On démarre le combat
		combat.demarrerCombat();
		
		
	}
	
	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * @see HttpServlet#doPost (HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response) ;
	}
	
}
