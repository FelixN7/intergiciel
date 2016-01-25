package servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Utilisateur;
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
				
			Utilisateur util = fu.getUtilisateur(invitedNick);
			if (util == null || util.getPersonnages().isEmpty()) {
				
				request.setAttribute("erreur", true);
				request.getRequestDispatcher("partie/SearchPlayer.jsp").forward(request, response);
				
			} else {
				
				request.setAttribute("erreur", false);
				request.setAttribute("fiches", util.getPersonnages());	
				request.getRequestDispatcher("partie/SearchPlayer.jsp").forward(request, response);
			}	
		} 
		
		
		
//		//On créée la partie
//		Partie p = fp.creerPartie(null) ;
//		
//		//On récupère les joueurs que le MJ ajoute à la partie
//		String perso = request.getParameter("newPerso") ;
//		p.ajouterPJ(ff.getFiche(Integer.parseInt(perso))) ;
//		
//		request.setAttribute("partie", p);
//		request.getRequestDispatcher("partie-mj.html").forward(request, response);
		
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

