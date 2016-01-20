package servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Arme;
import bean.Classe;
import bean.Fiche;
import bean.Race;
import bean.Utilisateur;
import facade.FacadeFiche;
import facade.FacadeUtilisateur;
import utilities.Alignement;
import utilities.Caracteristiques;
import utilities.Competences;

/**
 * Servlet implementation class ServFiche
 */
@WebServlet("/ServFiche")
public class ServFiche extends HttpServlet {

	@EJB
	FacadeFiche f ;
	FacadeUtilisateur fu ;
	private static final long serialVersionUID = 1L ;
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServFiche() {
		super() ;
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response) 
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		/**
		 * On commence par récupérer toutes les données relatives à la création de la nouvelle fiche
		 */
		//On commence par le nom du joueur
		String nomJoueur = request.getParameter("nomJoueur") ; 
		Utilisateur u = fu.getUtilisateur(nomJoueur) ;
		
		//On récupère ensuite les informations relatives à son personnage
		String nomPerso = request.getParameter("nomPerso") ;
		Integer level = Integer.parseInt(request.getParameter("level")) ;
		Classe classe = new Classe(request.getParameter("nomClasse")) ;
		Race race = new Race(request.getParameter("nomRace")) ;
		Alignement alignement = Fiche.toAlignement(request.getParameter("alignement")) ;
		
		Integer For = Integer.parseInt(request.getParameter("for")) ;
		Integer Dex = Integer.parseInt(request.getParameter("dex")) ;
		Integer Con = Integer.parseInt(request.getParameter("con")) ;
		Integer Int = Integer.parseInt(request.getParameter("int")) ;
		Integer Sag = Integer.parseInt(request.getParameter("sag")) ;
		Integer Cha = Integer.parseInt(request.getParameter("cha")) ;
		Caracteristiques c = new Caracteristiques(For, Dex, Con, Int, Sag, Cha) ;
		
		Arme arme = new Arme(request.getParameter("arme")) ;
		
		HashMap<String, Integer> HM = new HashMap<String, Integer>() ;
		HM.put("Acrobaties", Integer.parseInt(request.getParameter("acrobatiesRank"))) ;
		HM.put("Art de la magie", Integer.parseInt(request.getParameter("artdelamagieRank"))) ;
		HM.put("Artisanat", Integer.parseInt(request.getParameter("artisanatRank"))) ;
		HM.put("Bluff", Integer.parseInt(request.getParameter("bluffRank"))) ;
		HM.put("Concentration", Integer.parseInt(request.getParameter("concentrationRank"))) ;
		HM.put("Connaissance(Mystï¿½res)", Integer.parseInt(request.getParameter("connaissanceMysteresRank"))) ;
		HM.put("Connaissance(Nature)", Integer.parseInt(request.getParameter("connaissanceNatureRank"))) ;
		HM.put("Connaissance(Religion)", Integer.parseInt(request.getParameter("connaissanceReligionRank"))) ;
		HM.put("Contrefacon", Integer.parseInt(request.getParameter("contrefacon"))) ;
		HM.put("Dï¿½cryptage", Integer.parseInt(request.getParameter("decryptageRank"))) ;
		HM.put("Dï¿½guisement", Integer.parseInt(request.getParameter("deguisementRank"))) ;
		HM.put("Dï¿½placement Silencieux", Integer.parseInt(request.getParameter("deplacementsilencieuxRank"))) ;
		HM.put("Dï¿½samorï¿½age/sabotage", Integer.parseInt(request.getParameter("desamorcageRank"))) ;
		HM.put("Dï¿½tection", Integer.parseInt(request.getParameter("detectionRank"))) ;
		HM.put("Diplomatie", Integer.parseInt(request.getParameter("diplomatieRank"))) ;
		HM.put("Discretion", Integer.parseInt(request.getParameter("discretionRank"))) ;
		HM.put("Dressage", Integer.parseInt(request.getParameter("dressageRank"))) ;
		HM.put("Equilibre", Integer.parseInt(request.getParameter("equilibreRank"))) ;
		HM.put("Equitation", Integer.parseInt(request.getParameter("equitationRank"))) ;
		HM.put("Escalade", Integer.parseInt(request.getParameter("escaladeRank"))) ;
		HM.put("Estimation", Integer.parseInt(request.getParameter("estimationRank"))) ;
		HM.put("Evasion", Integer.parseInt(request.getParameter("evasionRank"))) ;
		HM.put("Fouille", Integer.parseInt(request.getParameter("fouilleRank"))) ;
		HM.put("Intimidation", Integer.parseInt(request.getParameter("intimidationRank"))) ;
		HM.put("Maitrise des cordes", Integer.parseInt(request.getParameter("maitrisedescordesRank"))) ;
		HM.put("Natation", Integer.parseInt(request.getParameter("natationRank"))) ;
		HM.put("Perception auditive", Integer.parseInt(request.getParameter("perceptionauditiveRank"))) ;
		HM.put("Premiers secours", Integer.parseInt(request.getParameter("premiersecoursRank"))) ;
		HM.put("Profession", Integer.parseInt(request.getParameter("professionRank"))) ;
		HM.put("Psychologie", Integer.parseInt(request.getParameter("psychologieRank"))) ;
		HM.put("Renseignements", Integer.parseInt(request.getParameter("renseignementsRank"))) ;
		HM.put("Reprï¿½sentation", Integer.parseInt(request.getParameter("representationsRank"))) ;
		HM.put("Saut", Integer.parseInt(request.getParameter("sautRank"))) ;
		HM.put("Survie", Integer.parseInt(request.getParameter("survieRank"))) ;
		HM.put("Utilisation d'objets magiques", Integer.parseInt(request.getParameter("utilisationobjetsmagiquesRank"))) ;	
		Competences competences = new Competences(HM) ;
		
		//On créée sa fiche et on l'enregistre en base de données
		f.creerFiche(nomPerso, u, c, competences, classe, race);
		request.setAttribute("fiche", f);
		request.getRequestDispatcher("FichePage.jsp").forward(request, response) ;
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response) 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doGet(request, response) ;
	}
}
