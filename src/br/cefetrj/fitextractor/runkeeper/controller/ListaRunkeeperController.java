package br.cefetrj.fitextractor.runkeeper.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.cefetrj.fitextractor.runkeeper.model.Runkeeper;
import br.cefetrj.fitextractor.runkeeper.service.RunkeeperService;

/**
 * Servlet implementation class ListaRunkeeperController
 */
@WebServlet("/ListaRunkeeper")
public class ListaRunkeeperController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListaRunkeeperController() {
        super();
        // TODO Auto-generated constructor stub
    }

protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String url = request.getParameter("url");
		
		String url = "http://localhost:8081/FitExtractor/runkeeper.html";
		
		//Extrair os dados da Tabela de URL's
		List<Runkeeper> tabela = new ArrayList<Runkeeper>();
		String id_usuario = request.getParameter("id_usu");		
		String nome_usuario = request.getParameter("nome");
		String id_app = request.getParameter("id_app");
		String nome_app = request.getParameter("nome_app");
		String id_atividade_fitrank = request.getParameter("id_atividade");
		String tipo_atividade = request.getParameter("modalidade");
		String data_atividade = request.getParameter("data");
		
		Runkeeper pf = new Runkeeper();
		
		pf.setId_usuario(id_usuario);
		pf.setNome_usuario(nome_usuario);
		pf.setId_app(id_app);
		pf.setNome_app(nome_app);
		pf.setId_atividade_fitrank(id_atividade_fitrank);
		pf.setTipo_atividade(tipo_atividade);
		pf.setData_atividade(data_atividade);
		
		tabela.add(pf);

		List<Runkeeper> runkeeper = new RunkeeperService().getRunkeeper(url);
		
		request.getServletContext().setAttribute("runkeeper", runkeeper);
		request.setAttribute("runkeeper", request.getServletContext().getAttribute("runkeeper"));
		
		request.getServletContext().setAttribute("tabela", tabela);
		request.setAttribute("tabela", request.getServletContext().getAttribute("tabela"));

		RequestDispatcher rd = request.getRequestDispatcher("Runkeeper/lista_runkeeper.jsp");
		rd.forward(request, response);
	}

}
