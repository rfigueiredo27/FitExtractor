package br.cefetrj.fitextractor.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.cefetrj.fitextractor.dao.InsercaoDao;
import br.cefetrj.fitextractor.dao.ListarDao;
import br.cefetrj.fitextractor.model.Atividade;

/**
 * Servlet implementation class ListaURLController
 */
@WebServlet("/insereTudo")
public class InsereTudoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		InsercaoDao atividade = new InsercaoDao();
		atividade.insereTudo();
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
}

}
