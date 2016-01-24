package servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Fiche;
import bean.Partie;
import facade.FacadeFiche;
import facade.FacadePartie;

/**
 * Servlet implementation class servPartie
 */

@WebServlet("/ServPartie")
public class ServPartie extends HttpServlet {
	
	@EJB
	FacadePartie fp ;
	FacadeFiche ff ;
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
		
		
		
		//On créée la partie
		Partie p = fp.creerPartie(null) ;
		
		//On récupère les joueurs que le MJ ajoute à la partie
		String perso = request.getParameter("newPerso") ;
		p.ajouterPJ(ff.getFiche(Integer.parseInt(perso))) ;
		
		request.setAttribute("partie", p);
		request.getRequestDispatcher("partie-mj.html").forward(request, response);
		
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

