package br.cefetrj.fitextractor.runkeeper.service;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import br.cefetrj.fitextractor.runkeeper.model.Runkeeper;

public class RunkeeperService {

	public RunkeeperService() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public List<Runkeeper> getRunkeeper(String url) throws IOException{
	
	//String url = "http://localhost:8081/FitExtractor/polar2.html";

    Document document = Jsoup.connect(url).get();
	List<Runkeeper> lista = new ArrayList<Runkeeper>();
	
	//duração = segundos convertidos para hh:mm:ss
	int segundos = Integer.parseInt(document.getElementsByTag("meta").get(35).attr("content"));
	int segundo = segundos % 60;
	int minutos = segundos / 60;
	int minuto = minutos % 60;
	int hora = minutos / 60;
	String duracao = "0" + Integer.toString(hora) + ":" + Integer.toString(minuto) + ":" + Integer.toString(segundo);	
	
	//calorias
	String calorias = document.getElementsByTag("meta").get(37).attr("content");
	
	//distância
	String distancia = document.getElementsByTag("meta").get(38).attr("content");
	
	//velocidade (KM/h) = metros por segundo * 3,6
	Float metros_segundos = Float.parseFloat(document.getElementsByTag("meta").get(40).attr("content"));
	Float velocidade_media = (metros_segundos*3.6f);
	DecimalFormat df = new DecimalFormat("#.##");
	velocidade_media = Float.parseFloat(df.format(velocidade_media).replace(",", "."));
	
	//ritmo médio
	String[] ritmo_medioA = document.getElementsByTag("meta").get(25).attr("content").split(" ");
	String ritmo_medio = "0"+ritmo_medioA[9]+":00";
	
	
	
	Runkeeper runkeeper = new Runkeeper();
	runkeeper.setDuracao(duracao);
	runkeeper.setCalorias(calorias);
	runkeeper.setDistancia(distancia);
	runkeeper.setVelocidade_media(velocidade_media);
	runkeeper.setRitmo_medio(ritmo_medio);
	
	lista.add(runkeeper);
	
	return lista;
	}
	
	public static void main(String[] args) throws IOException {
		RunkeeperService rs = new RunkeeperService();
		Document document = Jsoup.connect("http://localhost:8081/FitExtractor/runkeeper.html").get();
		rs.getRunkeeper("http://localhost:8081/FitExtractor/runkeeper.html");
	}

}
