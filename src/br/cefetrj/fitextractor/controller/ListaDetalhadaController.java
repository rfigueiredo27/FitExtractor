package br.cefetrj.fitextractor.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.cefetrj.fitextractor.model.Atividade;

/**
 * Servlet implementation class ListaPolarController
 */
@WebServlet(name = "ListaDetalhada", urlPatterns = { "/detalhes" })
public class ListaDetalhadaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListaDetalhadaController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Atividade> tabela = new ArrayList<Atividade>();
		Long id_usuario = Long.parseLong(request.getParameter("id_usu"));		
		String nome_usuario = request.getParameter("nome");
		Long id_app = Long.parseLong(request.getParameter("id_app"));
		String nome_app = request.getParameter("nome_app");
		Long id_atividade_fitrank = Long.parseLong(request.getParameter("id_atividade"));
		String tipo_atividade = request.getParameter("modalidade");
		String data_atividade = request.getParameter("data");
		String hora = request.getParameter("hora");
		String duracao = request.getParameter("duracao");
		int calorias = Integer.parseInt(request.getParameter("calorias"));
		String ritmo_medio= request.getParameter("ritmo");
		Float velocidade_media = Float.parseFloat(request.getParameter("velocidade"));
		Float distancia = Float.parseFloat(request.getParameter("distancia"));
		
		Atividade pf = new Atividade();
		
		pf.setId_usuario(id_usuario);
		pf.setNome_usuario(nome_usuario);
		pf.setId_app(id_app);
		pf.setNome_app(nome_app);
		pf.setId_atividade_fitrank(id_atividade_fitrank);
		pf.setTipo_atividade(tipo_atividade);
		pf.setData_atividade(data_atividade);
		pf.setHora_atividade(hora);
		pf.setDuracao(duracao);
		pf.setCalorias(calorias);
		pf.setRitmo_medio(ritmo_medio);
		pf.setVelocidade_media(velocidade_media);
		pf.setDistancia(distancia);
		
		tabela.add(pf);
		
		request.getServletContext().setAttribute("tabela", tabela);
		request.setAttribute("tabela", request.getServletContext().getAttribute("tabela"));

		RequestDispatcher rd = request.getRequestDispatcher("detalhes.jsp");
		rd.forward(request, response);
	}

}