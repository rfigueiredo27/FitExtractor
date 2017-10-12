package br.cefetrj.fitextractor.PolarFlow.service;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

import org.eclipse.jdt.internal.compiler.batch.Main;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import br.cefetrj.fitextractor.PolarFlow.model.PolarFlow;

public class PolarFlowService {
	
	public PolarFlowService() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public List<PolarFlow> getPolar(String url) throws IOException{



		//String url = "http://localhost:8081/FitExtractor/polar2.html";

		Document document = Jsoup.connect(url).get();
		//HtmlParserRuntastic parserRuntastic = new HtmlParserRuntastic(document);

		List<PolarFlow> polar = new ArrayList<PolarFlow>();

		Element e_hora = document.getElementById("sportHeading");
		String[] s_hora = e_hora.text().split(" ");
		String hora = s_hora[5]+":00";
		
		Element e_duracao = document.getElementsByClass("basic-data-panel__value-container").first();
		String duracao = e_duracao.text();
		
		Element e_distancia = document.getElementsByClass("basic-data-panel__value-container").get(1);
		String distancia = e_distancia.text();
		
		Element e_frequencia_media = document.getElementsByClass("basic-data-panel__value-container").get(2);
		String frequencia_media = e_frequencia_media.text();
		
		Element e_frequencia_maxima = document.getElementById("hrMaxMin");
		String frequencia_maxima = e_frequencia_maxima.text().substring(4, 7);
		
		Element e_frequencia_minima= document.getElementById("hrMaxMin");
		String frequencia_minima = e_frequencia_minima.text().substring(16, 18);
		
		Element e_calorias = document.getElementsByClass("basic-data-panel__value-container").get(3);
		String calorias = e_calorias.text();
		
		Element e_ritmo = document.getElementsByClass("basic-data-panel__value-container").get(4);
		String ritmo = e_ritmo.text()+":00";
		
		Element e_ritmo_maximo = document.getElementsByClass("basic-data-panel__label--black").get(1);
		String ritmo_maximo = e_ritmo_maximo.text().substring(4, 9)+":00";
		
//		Element e_percentual_gordura = document.getElementsByClass("basic-data-panel__value-container").get(9);
//		String percentual_gordura = e_percentual_gordura.text();
		
		Float velocidade_media;
		Float distancia2 = Float.parseFloat(distancia);
		Float duracao2 = ((Float.parseFloat(duracao.substring(0, 2)) * 60) + Float.parseFloat(duracao.substring(4, 5))) / 60;
		
		velocidade_media = distancia2 / duracao2;
		DecimalFormat df = new DecimalFormat("#.##");
		velocidade_media = Float.parseFloat(df.format(velocidade_media).replace(",", "."));
		
//		System.out.println(duracao);
//		System.out.println(distancia);
//		System.out.println(frequencia_media);
//		System.out.println(frequencia_maxima);
//		System.out.println(frequencia_minima);
//		System.out.println(calorias);
//		System.out.println(ritmo);
//		System.out.println(ritmo_maximo);
//		System.out.println(percentual_gordura);
//		System.out.println(duracao2);
//		System.out.println(velocidade_media);

		PolarFlow polarFlow = new PolarFlow();
		polarFlow.setDuracao(duracao);
		polarFlow.setDistancia(distancia);
		polarFlow.setFrequencia_cardiaca_media(frequencia_media);
		polarFlow.setFrequencia_cardiaca_maxima(frequencia_maxima);
		polarFlow.setFrequencia_cardiaca_minima(frequencia_minima);
		polarFlow.setCalorias(calorias);
		polarFlow.setRitmo_medio(ritmo);
		polarFlow.setRitmo_maximo(ritmo_maximo);
		polarFlow.setVelocidade_media(velocidade_media);
		polarFlow.setHora_atividade(hora);
		
		polar.add(polarFlow);

		return polar;

	}
	
}
