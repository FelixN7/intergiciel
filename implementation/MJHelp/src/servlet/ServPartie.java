package servlet;

import javax.ejb.EJB;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import facade.FacadePartie;

/**
 * Servlet implementation class servPartie
 */
public class ServPartie extends HttpServlet {
	
	@EJB
	FacadePartie fp ;
	private static final long serialVersionUID = 5504876312795472403L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServPartie() {
		super() ;
	}
	
	/**
	 * @see HttpServlet#doGet (HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		
	}
	
	/**
	 * @see HttpServlet#doPost (HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		doGet(request, response) ;
	}
}