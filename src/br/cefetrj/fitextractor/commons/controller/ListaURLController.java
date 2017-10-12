package br.cefetrj.fitextractor.commons.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.cefetrj.fitextractor.commons.dao.UrlDAO;
import br.cefetrj.fitextractor.commons.model.URL;

/**
 * Servlet implementation class ListaURLController
 */
@WebServlet("/ListaURL")
public class ListaURLController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListaURLController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String app = request.getParameter("app");
		System.out.println(app);
		if(app.equals("284597785309")){
			List<URL> urls = new UrlDAO().getListaURLByApp(app);
			//List<Usuario> usuarios = new ArrayList<Usuario>();
			request.getServletContext().setAttribute("urls", urls);
			request.setAttribute("urls", request.getServletContext().getAttribute("urls"));

			RequestDispatcher rd = request.getRequestDispatcher("Strava/lista_urls_strava.jsp");
			rd.forward(request, response);
		}

		if(app.equals("1571997839755230")){
			List<URL> urls = new UrlDAO().getListaURLByApp(app);
			//List<Usuario> usuarios = new ArrayList<Usuario>();
			request.getServletContext().setAttribute("urls", urls);
			request.setAttribute("urls", request.getServletContext().getAttribute("urls"));

			RequestDispatcher rd = request.getRequestDispatcher("Polar/lista_urls_polar.jsp");
			rd.forward(request, response);

		}
		
		if(app.equals("62572192129")){
			List<URL> urls = new UrlDAO().getListaURLByApp(app);
			//List<Usuario> usuarios = new ArrayList<Usuario>();
			request.getServletContext().setAttribute("urls", urls);
			request.setAttribute("urls", request.getServletContext().getAttribute("urls"));

			RequestDispatcher rd = request.getRequestDispatcher("Runkeeper/lista_urls_runkeeper.jsp");
			rd.forward(request, response);

		}
		else{
			List<URL> urls = new UrlDAO().getListaURLByApp(app);
			//List<Usuario> usuarios = new ArrayList<Usuario>();
			request.getServletContext().setAttribute("urls", urls);
			request.setAttribute("urls", request.getServletContext().getAttribute("urls"));

			RequestDispatcher rd = request.getRequestDispatcher("Polar/lista_urls_polar.jsp");
			rd.forward(request, response);
		}
	}

}
