package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Fiche;
import bean.Partie;
import facade.FacadeBonus;
import facade.FacadeFiche;
import facade.FacadePartie;
import facade.FacadeUtilisateur;

/**
 * Servlet implementation class servPartie
 */

@WebServlet("/ServPartie")
public class ServPartie extends HttpServlet {
	
	@EJB
	FacadePartie fp ;
	
	@EJB
	FacadeFiche ff ;
	
	@EJB
	FacadeUtilisateur fu ;
	
	@EJB
	FacadeBonus fb;
	
	private static final long serialVersionUID = 5504876312795472403L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServPartie() {
		super() ;
	}
	
	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * @see HttpServlet#doGet (HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getSession().getAttribute("utilisateur") == null) {
			request.getSession().invalidate();
			response.sendRedirect("/JDR/index.html");
		}
			
		String action =  request.getParameter("op");
		
		if (action==null) {
			
			throw new ServletException();
		} else if (action.equals("invite")) {

			String invitedNick = request.getParameter("pseudo");
			
			if (invitedNick==null) {
				throw new ServletException("invitedNick = null");
			}
				
			Collection<String> listePersos = ff.getNomPersos(invitedNick);
			
			if (listePersos.isEmpty()) {
				
				request.setAttribute("erreur", true);
				request.getRequestDispatcher("partie/SearchPlayer.jsp").forward(request, response);
				
			} else {
				
				request.setAttribute("erreur", false);
				request.setAttribute("fiches", listePersos);	
				request.getRequestDispatcher("partie/SearchPlayer.jsp").forward(request, response);
			}	
		} else if (action.equals("create")) {
			
			String nomPartie = request.getParameter("nomPartie");
			int nbJoueurs = Integer.parseInt(request.getParameter("nbJoueurs"));
			
			ArrayList<String> nomJoueurs = new ArrayList<String>();
			ArrayList<String> nomPersos = new ArrayList<String>();
			
			for (int i=1; i<=nbJoueurs;i++) {
				nomJoueurs.add(request.getParameter("nomJoueur" + i));
				nomPersos.add(request.getParameter("nomPerso" + i));
			}
			
			
			Partie p = fp.creerPartie(nomPartie, (String) request.getSession().getAttribute("utilisateur") );
				
			ArrayList<Fiche> fichesJoueurs = new ArrayList<Fiche>();
			
			for (int i=0; i<nbJoueurs;i++) {
				fichesJoueurs.add(ff.getFiche(nomJoueurs.get(i),nomPersos.get(i)));
				ff.ajouterPartie(ff.getFiche(nomJoueurs.get(i),nomPersos.get(i)), p);
			}
			
			request.setAttribute("nomPartie", nomPartie);			
			request.setAttribute("fiches", fichesJoueurs);
			request.getRequestDispatcher("/partie/Partie.jsp").forward(request, response);
			
			
		} else if (action.equals("detailsJoueur"))	{		
			String pseudo = request.getParameter("pseudo");
			String personnage = request.getParameter("personnage");
			
			if (pseudo!=null & personnage != null) {
				
				Fiche fichePerso = ff.getFiche(pseudo, personnage);
				request.setAttribute("fiche", fichePerso);
				request.setAttribute("facadeBonus", fb );
				request.getRequestDispatcher("/fiche/FichePage.jsp").forward(request, response);
			} 			
		} else if (action.equals("creationCombat")) {
			
			String pseudoMJ = request.getParameter("pseudomj");
			String nomPartie = request.getParameter("nomPartie");
			
			if(pseudoMJ != null & nomPartie != null) {
			
				Collection<Fiche> fiches = ff.getNomPersos(nomPartie, pseudoMJ);
				request.setAttribute("fiches", fiches);
				
				request.getRequestDispatcher("/combat/creationCombat.jsp").forward(request, response);
			}
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

