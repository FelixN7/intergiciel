package servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BonusRef;
import bean.ClasseLvl;
import register.mainRegister;

/**
 * Servlet implementation class ServBDD
 */
@WebServlet("/ServBDD")
public class ServBDD extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	mainRegister r;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServBDD() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		r.registerBdd();
		response.sendRedirect("index.html");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
