package br.cefetrj.fitextractor.strava.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.cefetrj.fitextractor.strava.model.Strava;
import br.cefetrj.fitextractor.strava.service.StravaService;

/**
 * Servlet implementation class ListaStravaController
 */
@WebServlet("/ListaStrava")
public class ListaStravaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListaStravaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = request.getParameter("url");
		
		//String url = "http://localhost:8081/FitExtractor/Strava.html";
		
		//Extrair os dados da Tabela de URL's
		List<Strava> tabela = new ArrayList<Strava>();
		String id_usuario = request.getParameter("id_usu");		
		String nome_usuario = request.getParameter("nome");
		String id_app = request.getParameter("id_app");
		String nome_app = request.getParameter("nome_app");
		String id_atividade_fitrank = request.getParameter("id_atividade");
		String tipo_atividade = request.getParameter("modalidade");
		String data_atividade = request.getParameter("data");
		String duracao = request.getParameter("duracao");
		String distancia = request.getParameter("distancia");
		Float velocidade_media = Float.parseFloat(request.getParameter("velocidade_media"));
		
		Strava pf = new Strava();
		
		pf.setId_usuario(id_usuario);
		pf.setNome_usuario(nome_usuario);
		pf.setId_app(id_app);
		pf.setNome_app(nome_app);
		pf.setId_atividade_fitrank(id_atividade_fitrank);
		pf.setTipo_atividade(tipo_atividade);
		pf.setData_atividade(data_atividade);
		pf.setDuracao(duracao);
		pf.setDistancia(distancia);
		pf.setVelocidade_media(velocidade_media);
		
		tabela.add(pf);

		List<Strava> strava = new StravaService().getStrava(url);
		
		request.getServletContext().setAttribute("strava", strava);
		request.setAttribute("strava", request.getServletContext().getAttribute("strava"));
		
		request.getServletContext().setAttribute("tabela", tabela);
		request.setAttribute("tabela", request.getServletContext().getAttribute("tabela"));

		RequestDispatcher rd = request.getRequestDispatcher("Strava/lista_strava.jsp");
		rd.forward(request, response);
	}

}
