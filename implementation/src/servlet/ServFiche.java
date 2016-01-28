package servlet;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Vector;

import javax.ejb.EJB;
import javax.ejb.EJBTransactionRolledbackException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Arme;
import bean.Armure;
import bean.Classe;
import bean.Fiche;
import bean.Race;
import facade.FacadeBonus;
import facade.FacadeFiche;
import utilities.Alignement;
import utilities.Caracteristiques;
import utilities.Competences;
import utilities.PersoType;
import utilities.TypeUtilisateur;

/**
 * Servlet implementation class ServFiche
 */
@WebServlet("/ServFiche")
public class ServFiche extends HttpServlet {

	@EJB
	FacadeFiche f;
	@EJB
	FacadeBonus fb;
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

		String op = request.getParameter("op");
		String nomJoueur = (String) request.getSession().getAttribute("utilisateur"); 
		if(op.equals("creationFiche")){
			//On r�cup�re ensuite les informations relatives � son personnage
			String nomPerso = request.getParameter("nomPerso") ;
			Classe classe = new Classe(request.getParameter("nomClasse"));
			classe.setDVie(fb.getDeVieClasse(classe.getNom()));
			Race race = new Race(request.getParameter("nomRace"));
			Alignement alignement = Fiche.toAlignement(request.getParameter("alignement")) ;

			Integer For = Integer.parseInt(request.getParameter("for"));
			Integer Dex = Integer.parseInt(request.getParameter("dex"));
			Integer Con = Integer.parseInt(request.getParameter("con"));
			Integer Int = Integer.parseInt(request.getParameter("int"));
			Integer Sag = Integer.parseInt(request.getParameter("sag"));
			Integer Cha = Integer.parseInt(request.getParameter("cha"));
			Caracteristiques c = new Caracteristiques(For, Dex, Con, Int, Sag, Cha) ;

			Arme armeG = f.getArme(request.getParameter("armeG")) ;
			Arme armeD= f.getArme(request.getParameter("armeD"));
			String arm = request.getParameter("armure");
			Armure armure = arm.equals("sans armure")?null:f.getArmure(arm);

			HashMap<String, Integer> HM = new HashMap<String, Integer>() ;
			HM.put("Acrobaties", Integer.parseInt(request.getParameter("acrobatiesRank"))) ;
			HM.put("Art de la magie", Integer.parseInt(request.getParameter("artdelamagieRank"))) ;
			HM.put("Artisanat", Integer.parseInt(request.getParameter("artisanatRank"))) ;
			HM.put("Bluff", Integer.parseInt(request.getParameter("bluffRank"))) ;
			HM.put("Concentration", Integer.parseInt(request.getParameter("concentrationRank"))) ;
			HM.put("Connaissance(Mysteres)", Integer.parseInt(request.getParameter("connaissanceMystereRank")));
			HM.put("Connaissance(Nature)", Integer.parseInt(request.getParameter("connaissanceNatureRank"))) ;
			HM.put("Connaissance(Religion)", Integer.parseInt(request.getParameter("connaissanceReligionRank"))) ;
			HM.put("Contrefacon", Integer.parseInt(request.getParameter("contrefaconRank")));
			HM.put("Crochetage", Integer.parseInt(request.getParameter("crochetageRank")));
			HM.put("Decryptage", Integer.parseInt(request.getParameter("decryptageRank"))) ;
			HM.put("Deguisement", Integer.parseInt(request.getParameter("deguisementRank"))) ;
			HM.put("Deplacement Silencieux", Integer.parseInt(request.getParameter("deplacementsilencieuxRank"))) ;
			HM.put("Desamorcage/sabotage", Integer.parseInt(request.getParameter("desamorcageRank"))) ;
			HM.put("Detection", Integer.parseInt(request.getParameter("detectionRank"))) ;
			HM.put("Diplomatie", Integer.parseInt(request.getParameter("diplomatieRank"))) ;
			HM.put("Discretion", Integer.parseInt(request.getParameter("discretionRank"))) ;
			HM.put("Dressage", Integer.parseInt(request.getParameter("dressageRank"))) ;
			HM.put("Equilibre", Integer.parseInt(request.getParameter("equilibreRank"))) ;
			HM.put("Equitation", Integer.parseInt(request.getParameter("equitationRank"))) ;
			HM.put("Escalade", Integer.parseInt(request.getParameter("escaladeRank"))) ;
			HM.put("Escamotage", Integer.parseInt(request.getParameter("escamotageRank"))) ;
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
			HM.put("Renseignements", Integer.parseInt(request.getParameter("renseigementsRank"))) ;
			HM.put("Representation", Integer.parseInt(request.getParameter("representationRank")));
			HM.put("Saut", Integer.parseInt(request.getParameter("sautRank"))) ;
			HM.put("Survie", Integer.parseInt(request.getParameter("survieRank"))) ;
			HM.put("Utilisation d objets magiques", Integer.parseInt(request.getParameter("utilisationobjetsmagiquesRank"))) ;	
			Competences competences = new Competences(HM) ;

			//On cr��e sa fiche et on l'enregistre en base de donn�es
			Fiche fiche = new Fiche(nomPerso, nomJoueur, c, competences, classe, race);
			fiche.setAlignement(alignement);
			fiche.setCompetences(competences);
			fiche.setArmeDroite(armeD);
			fiche.setArmeGauche(armeG);
			fiche.setArmure(armure);
			PersoType type = (request.getSession().getAttribute("typeUtil") == TypeUtilisateur.Joueur)?PersoType.PJ:PersoType.PNJ;
			fiche.setType(type);
			try {
				f.insererFiche(fiche);
			} catch (EJBTransactionRolledbackException e) {
				request.setAttribute("erreur", "nomPersoDejaUtilise");
				request.getRequestDispatcher("/fiche/CreationFichePage.jsp").forward(request, response);
			}
			request.setAttribute("fiche", fiche);
			request.setAttribute("facadeBonus", fb);
			request.getRequestDispatcher("/fiche/FichePage.jsp").forward(request, response);
		}else if(op.equals("afficherFiche")){
			Collection<String> nomPersos= f.getNomPersos(nomJoueur);
			Collection<Fiche> fiches = new Vector<Fiche>();
			for(String nomPers: nomPersos){
				fiches.add(f.getFiche(nomJoueur, nomPers));
			}
			request.setAttribute("fiches", fiches);
			request.getRequestDispatcher("/fiche/AfficherFiches.jsp").forward(request, response);

		}else if (op.equals("detailsJoueur"))	{		
			String pseudo = request.getParameter("pseudo");
			String personnage = request.getParameter("personnage");

			if (pseudo!=null & personnage != null) {

				Fiche fichePerso = f.getFiche(pseudo, personnage);
				request.setAttribute("fiche", fichePerso);
				request.setAttribute("facadeBonus", fb );
				request.getRequestDispatcher("/partie/detailsJoueur.jsp").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response) 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doGet(request, response) ;
	}
}
