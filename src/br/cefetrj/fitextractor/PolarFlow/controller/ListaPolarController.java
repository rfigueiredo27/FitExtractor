package br.cefetrj.fitextractor.PolarFlow.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.cefetrj.fitextractor.PolarFlow.model.PolarFlow;
import br.cefetrj.fitextractor.PolarFlow.service.PolarFlowService;

/**
 * Servlet implementation class ListaPolarController
 */
@WebServlet(name = "ListaPolar", urlPatterns = { "/ListaPolar" })
public class ListaPolarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListaPolarController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String url = request.getParameter("url");
		
		String url = "http://localhost:8081/FitExtractor/polar2.html";
		
		//Extrair os dados da Tabela de URL's
		List<PolarFlow> tabela = new ArrayList<PolarFlow>();
		String id_usuario = request.getParameter("id_usu");		
		String nome_usuario = request.getParameter("nome");
		String id_app = request.getParameter("id_app");
		String nome_app = request.getParameter("nome_app");
		String id_atividade_fitrank = request.getParameter("id_atividade");
		String tipo_atividade = request.getParameter("modalidade");
		String data_atividade = request.getParameter("data");
		
		PolarFlow pf = new PolarFlow();
		
		pf.setId_usuario(id_usuario);
		pf.setNome_usuario(nome_usuario);
		pf.setId_app(id_app);
		pf.setNome_app(nome_app);
		pf.setId_atividade_fitrank(id_atividade_fitrank);
		pf.setTipo_atividade(tipo_atividade);
		pf.setData_atividade(data_atividade);
		
		tabela.add(pf);

		List<PolarFlow> polar = new PolarFlowService().getPolar(url);
		
		request.getServletContext().setAttribute("polar", polar);
		request.setAttribute("polar", request.getServletContext().getAttribute("polar"));
		
		request.getServletContext().setAttribute("tabela", tabela);
		request.setAttribute("tabela", request.getServletContext().getAttribute("tabela"));

		RequestDispatcher rd = request.getRequestDispatcher("Polar/lista_polar.jsp");
		rd.forward(request, response);
	}

}
