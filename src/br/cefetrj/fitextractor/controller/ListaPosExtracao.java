package br.cefetrj.fitextractor.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.cefetrj.fitextractor.dao.UrlDAO;
import br.cefetrj.fitextractor.model.URL;

/**
 * Servlet implementation class ListaURLController
 */
@WebServlet("/ListaPos")
public class ListaPosExtracao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListaPosExtracao() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	   	
		List<URL> urls = new UrlDAO().getAtivPos();
		request.getServletContext().setAttribute("urls", urls);
		request.setAttribute("urls", request.getServletContext().getAttribute("urls"));

RequestDispatcher rd = request.getRequestDispatcher("lista_pos.jsp");
rd.forward(request, response);
}

}
