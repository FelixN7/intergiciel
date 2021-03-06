package servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.ejb.EJBTransactionRolledbackException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Utilisateur;
import facade.FacadeUtilisateur;
import utilities.TypeUtilisateur;

/**
 * Servlet implementation class servConnection
 */
@WebServlet("/ServConnection")
public class ServConnection extends HttpServlet {
	@EJB
	FacadeUtilisateur f;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServConnection() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		if(op.equals("connection")){
			String pseudo = request.getParameter("pseudo");
			String mdp = request.getParameter("mdp");
			if(f.checkUtilisateur(pseudo, mdp)){
				Utilisateur currentUser = f.getUtilisateur(pseudo);
				request.getSession().setAttribute("utilisateur", currentUser.getPseudo());
				request.getSession().setAttribute("typeUtil", currentUser.getType());
				request.getRequestDispatcher("/inscription-connection/accueil.jsp").forward(request, response);
				//voir comment faire pour ne pas retransmettre le mdp contenu dans la requete
			}else{
				//erreur authentification
				response.sendRedirect("/JDR/inscription-connection/erreurLogin.html");
			}
		}else if (op.equals("inscription")){
			String pseudo = request.getParameter("pseudo");
			String mdp = request.getParameter("mdp");
			String confirmation = request.getParameter("confirmation");
			String typeS = request.getParameter("type");
			TypeUtilisateur type = typeS.equals("joueur")? TypeUtilisateur.Joueur : TypeUtilisateur.MaitreDuJeu;
			if(mdp.equals(confirmation)){
					try {
						f.ajoutUtilisateur(pseudo, mdp, type);
						response.sendRedirect("/JDR/");
					} catch (EJBTransactionRolledbackException e) {
						response.sendRedirect("/JDR/inscription-connection/inscription.html");//ajouter le message : pseudo deja utilise
					}
			}else{
				response.sendRedirect("/JDR/inscription-connection/inscription.html");//ajouter un message d'erreur dans la page
			}
		}else if (op.equals("disconnect")){
			request.getSession().invalidate();
			response.sendRedirect("/JDR/");
		}else if (op.equals("accueil")) {
			request.getRequestDispatcher("/inscription-connection/accueil.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
