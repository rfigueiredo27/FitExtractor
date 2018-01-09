package br.cefetrj.fitextractor.commons.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.cefetrj.fitextractor.commons.dao.AtividadeDao;
import br.cefetrj.fitextractor.commons.dao.UrlDAO;
import br.cefetrj.fitextractor.commons.model.URL;

/**
 * Servlet implementation class ListaURLController
 */
@WebServlet("/insereTudo")
public class InsereTudoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsereTudoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AtividadeDao atividade = new AtividadeDao();
		atividade.insereTudo();
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
}

}
