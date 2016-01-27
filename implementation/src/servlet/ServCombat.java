package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Fiche;
import facade.FacadeFiche;
import utilities.Combat;
import utilities.PersoType;

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
		String op = request.getParameter("op");
		
		if (op.equals("creation")) {
			//On initialise la liste des PJs et la liste des opposants
			ArrayList<Fiche> PJS = new ArrayList<Fiche>() ;
			ArrayList<Fiche> Opposants = new ArrayList<Fiche>() ;
			HashMap<String, Integer> initiatives = new HashMap<String, Integer>() ;
			FacadeFiche ff = new FacadeFiche() ;
			
			//On crée le combat
			Combat combat = new Combat(PJS, Opposants) ;		
			
			//On récupère et on ajoute un à un les participants au combat
			Fiche joueur = (Fiche) request.getAttribute("nomPerso") ;
			combat.ajouterJoueur(joueur);

			//On ajoute leurs initiatives
			Integer initiativeJoueur = Integer.parseInt(request.getParameter("initJoueur")) ;
			combat.ajoutInit(joueur, initiativeJoueur);
			
			//On récupère et on ajoute un à un les participants au combat
			Fiche opposant = (Fiche) request.getAttribute("nomOpposant") ;
			combat.ajouterOpposant(opposant);
			
			//On ajoute leurs initiatives
			Integer initiativeOpposant = Integer.parseInt(request.getParameter("initJoueur")) ;
			combat.ajoutInit(opposant, initiativeOpposant);
			
			//On démarre le combat
			combat.lancerInit();	
			request.setAttribute("combat", combat);
			request.getRequestDispatcher("/combat/combat.jsp").forward(request, response);
			
		} else if (op.equals("combat")) {
			Combat combat = (Combat) request.getAttribute("combat") ;
			
			Fiche attaquant = (Fiche) request.getAttribute("attaquant") ;
			Fiche defenseur = (Fiche) request.getAttribute("defenseur") ;
			int resD = (Integer) request.getAttribute("resD") ;
			
			boolean touche ;
			//Différencier si l'attaque se fait avec la main droite ou gauche
			touche = combat.attaque(attaquant, resD, true, defenseur) ;
			//Si le joueur a été touché alors on calcule les degats
			if (touche) {
				combat.calculDgts(attaquant, 0, true, defenseur) ;
				if (defenseur.getVieCourante() == 0) {
					if (defenseur.getType() == PersoType.PJ) {
						combat.supprimerJoueur(defenseur);
					} else {
						combat.supprimerOpposant(defenseur);
					}
				}
			}
			
		} else if (op.equals("partie")) {
			request.getRequestDispatcher("/combat/creationCombat.jsp").forward(request, response);
		}		
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
