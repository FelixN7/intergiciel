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
			String nomUtilisateur = request.getParameter("nomUtilisateur") ;
			String nomPerso = request.getParameter("nomPerso") ;
			Fiche combattant = ff.getFiche(nomUtilisateur, nomPerso) ;
			combat.ajouterJoueur(combattant);
			
			//On ajoute leurs initiatives
			Integer initiative = Integer.parseInt(request.getParameter("init")) ;
			combat.ajoutInit(combattant, initiative);
			
			//On démarre le combat
			combat.demarrerCombat();	
			request.setAttribute("combat", combat);
		} else if (op.equals("combat")) {
			Combat combat = (Combat) request.getAttribute("combat") ;
			
			Fiche attaquant = (Fiche) request.getAttribute("attaquant") ;
			Fiche defenseur = (Fiche) request.getAttribute("defenseur") ;
			int resD = (Integer) request.getAttribute("resD") ;
			
			//Différencier si l'attaque se fait avec la main droite ou gauche
			combat.attaque(attaquant, resD, true, defenseur) ;
			
			
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
