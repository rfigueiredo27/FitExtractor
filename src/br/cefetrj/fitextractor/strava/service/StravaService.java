package br.cefetrj.fitextractor.strava.service;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import br.cefetrj.fitextractor.commons.dao.UrlDAO;
import br.cefetrj.fitextractor.strava.model.Strava;

public class StravaService {

	public StravaService() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public List<Strava> getStrava(String url) throws IOException{
		
		Document document = Jsoup.connect(url).get();
		
		List<Strava> lista = new ArrayList<Strava>();
		
		//String[] distancias = document.getElementsByClass("distance").first().getElementsByTag("strong").first().text().split("k");
		//String distancia = distancias[0].replace(",", ".");
		//String duracao = document.getElementsByClass("moving-time").first().getElementsByTag("strong").text();
		String calorias = "0";
		if((document.getElementsByClass("calories").first()) != null)
		{
		calorias = (document.getElementsByClass("calories").first().getElementsByTag("strong").text().replace(".", ""));
		//long caloria = Integer.parseInt(calorias);
		//System.out.println(caloria);
		}
		System.out.println(calorias);
		
//		Float velocidade_media;
//		Float distancia2 = Float.parseFloat(distancia);
//		Float duracao2 = ((Float.parseFloat(duracao.substring(0, 2)) * 60) + Float.parseFloat(duracao.substring(4, 5))) / 60;
//		
//		velocidade_media = distancia2 / duracao2;
//		DecimalFormat df = new DecimalFormat("#.##");
//		velocidade_media = Float.parseFloat(df.format(velocidade_media).replace(",", "."));
		String elevacao = "0";
		if((document.getElementsByClass("elevation").first()) != null)
		{
		String elevacao2[] = document.getElementsByClass("elevation").first().getElementsByTag("strong").text().replace(".", "").split("m");
		elevacao = elevacao2[0].replace(".", "");
		
		}
		System.out.println(elevacao);
		
		//System.out.println(velocidade_media);
		
		Strava strava = new Strava();
		strava.setCalorias(calorias);
		strava.setElevacao(elevacao);
		
		lista.add(strava);
		
		return lista;
	}
	
	public static void main(String[] args) throws IOException {
		StravaService strava = new StravaService();
		strava.getStrava("http://localhost:8081/FitExtractor/Strava.html");
	}

}
