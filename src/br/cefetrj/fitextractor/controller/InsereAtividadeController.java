package br.cefetrj.fitextractor.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.cefetrj.fitextractor.dao.AtividadeDao;
import br.cefetrj.fitextractor.model.Atividade;

/**
 * Servlet implementation class InsereAtividade
 */

@WebServlet(name = "InsereAtividade", urlPatterns = { "/InsereAtividade" })
public class InsereAtividadeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsereAtividadeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Long id_usu = Long.parseLong(request.getParameter("id_usu"));
		String nome_usu = request.getParameter("nome_usu");
		Long id_app = Long.parseLong(request.getParameter("id_app"));
		String nome_app = request.getParameter("nome_app");
		Long id_course = Long.parseLong(request.getParameter("id_course"));
		String modalidade = request.getParameter("modalidade");
		String data = request.getParameter("data");
		String duracao = request.getParameter("duracao");
		
		Float distancia = 0f;
		if(request.getParameter("distancia") != "")
		{
		distancia = Float.parseFloat(request.getParameter("distancia"));
		}
		
		Integer freq_media = 0;
		if(request.getParameter("freq_media") != "")
		{
		freq_media = Integer.parseInt(request.getParameter("freq_media"));
		}
		
		Integer freq_max = 0;
		if(request.getParameter("freq_max") != "")
		{
		freq_max = Integer.parseInt(request.getParameter("freq_max"));
		}
		
		Integer freq_min = 0;
		if(request.getParameter("freq_min") != "")
		{
		freq_min = Integer.parseInt(request.getParameter("freq_min"));
		}
		
		Integer calorias = 0;
		if(request.getParameter("calorias") != "")
		{
		calorias = Integer.parseInt(request.getParameter("calorias"));
		}
		
		String ritmo_medio = request.getParameter("ritmo_medio");
		String ritmo_max = request.getParameter("ritmo_max");
		
		Float vel_media = 0f;
		if(request.getParameter("vel_media") != "")
		{
		vel_media = Float.parseFloat(request.getParameter("vel_media"));
		}
		
		Float vel_max = 0f;
		
		String hora = request.getParameter("hora");
		
		Integer temp = 0;
		
		String clima = " - ";
		
		Integer elevacao = 0;
		if(request.getParameter("elevacao") != "")
		{
		elevacao = Integer.parseInt(request.getParameter("elevacao"));
		}
		
		Atividade atividade = new Atividade(id_app, nome_app, id_course, id_usu, nome_usu, 
				modalidade, data, hora, duracao, 
				distancia, vel_media, vel_max, 
				freq_media, freq_max, freq_min, 
				calorias, ritmo_medio, ritmo_max, temp, clima, elevacao);

		AtividadeDao dao = new AtividadeDao();
		
		dao.insereAtividade(atividade);
		
		RequestDispatcher rd = request.getRequestDispatcher("ListaURL?app=" + id_app);
		rd.forward(request,response);
	}

}