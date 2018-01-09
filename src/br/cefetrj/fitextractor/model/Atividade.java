package br.cefetrj.fitextractor.model;

import java.sql.Time;
import java.util.Calendar;

public class Atividade {
	
	private Long id_atividade;
	private Long id_app;
	private String nome_app;
	private Long id_atividade_fitrank;
	private Long id_usuario;
	private String nome_usuario;
	private String tipo_atividade;
	private String data_atividade;
	private String hora_atividade;
	private String duracao;
	private Float distancia;
	private Float velocidade_media;
	private Float velocidade_maxima;
	private Integer frequencia_cardiaca_media;
	private Integer frequencia_cardiaca_maxima;
	private Integer frequencia_cardiaca_minima;
	private Integer calorias;
	private String ritmo_medio;
	private String ritmo_maximo;
	private Integer temperatura_ambiente;
	private String clima;
	private Integer elevacao;
	
		
	
	
	
	public Integer getElevacao() {
		return elevacao;
	}
	public void setElevacao(Integer elevacao) {
		this.elevacao = elevacao;
	}
	public String getHora_atividade() {
		return hora_atividade;
	}
	public void setHora_atividade(String hora_usuario) {
		this.hora_atividade = hora_usuario;
	}
	public String getClima() {
		return clima;
	}
	public void setClima(String clima) {
		this.clima = clima;
	}
	public String getMeteorologia() {
		return clima;
	}
	public void setMeteorologia(String meteorologia) {
		this.clima = meteorologia;
	}
	public Long getId_usuario() {
		return id_usuario;
	}
	public void setId_usuario(Long id_usuario) {
		this.id_usuario = id_usuario;
	}
	public String getNome_usuario() {
		return nome_usuario;
	}
	public void setNome_usuario(String nome_usuario) {
		this.nome_usuario = nome_usuario;
	}
	public Long getId_atividade() {
		return id_atividade;
	}
	public void setId_atividade(Long id_atividade) {
		this.id_atividade = id_atividade;
	}
	public Long getId_app() {
		return id_app;
	}
	public void setId_app(Long id_app) {
		this.id_app = id_app;
	}
	public String getNome_app() {
		return nome_app;
	}
	public void setNome_app(String nome_app) {
		this.nome_app = nome_app;
	}
	public Long getId_atividade_fitrank() {
		return id_atividade_fitrank;
	}
	public void setId_atividade_fitrank(Long id_atividade_fitrank) {
		this.id_atividade_fitrank = id_atividade_fitrank;
	}
	public String getTipo_atividade() {
		return tipo_atividade;
	}
	public void setTipo_atividade(String tipo_atividade) {
		this.tipo_atividade = tipo_atividade;
	}
	public String getData_atividade() {
		return data_atividade;
	}
	public void setData_atividade(String h2) {
		this.data_atividade = h2;
	}
	public String getDuracao() {
		return duracao;
	}
	public void setDuracao(String duracao) {
		this.duracao = duracao;
	}
	public Float getDistancia() {
		return distancia;
	}
	public void setDistancia(Float distancia) {
		this.distancia = distancia;
	}
	public Float getVelocidade_media() {
		return velocidade_media;
	}
	public void setVelocidade_media(Float velocidade_media) {
		this.velocidade_media = velocidade_media;
	}
	public Float getVelocidade_maxima() {
		return velocidade_maxima;
	}
	public void setVelocidade_maxima(Float velocidade_maxima) {
		this.velocidade_maxima = velocidade_maxima;
	}
	public Integer getFrequencia_cardiaca_media() {
		return frequencia_cardiaca_media;
	}
	public void setFrequencia_cardiaca_media(Integer frequencia_cardiaca_media) {
		this.frequencia_cardiaca_media = frequencia_cardiaca_media;
	}
	public Integer getFrequencia_cardiaca_maxima() {
		return frequencia_cardiaca_maxima;
	}
	public void setFrequencia_cardiaca_maxima(Integer frequencia_cardiaca_maxima) {
		this.frequencia_cardiaca_maxima = frequencia_cardiaca_maxima;
	}
	public Integer getFrequencia_cardiaca_minima() {
		return frequencia_cardiaca_minima;
	}
	public void setFrequencia_cardiaca_minima(Integer frequencia_cardiaca_minima) {
		this.frequencia_cardiaca_minima = frequencia_cardiaca_minima;
	}
	public Integer getCalorias() {
		return calorias;
	}
	public void setCalorias(Integer calorias) {
		this.calorias = calorias;
	}
	public String getRitmo_medio() {
		return ritmo_medio;
	}
	public void setRitmo_medio(String ritmo_medio) {
		this.ritmo_medio = ritmo_medio;
	}
	public String getRitmo_maximo() {
		return ritmo_maximo;
	}
	public void setRitmo_maximo(String ritmo_maximo) {
		this.ritmo_maximo = ritmo_maximo;
	}
	public Integer getTemperatura_ambiente() {
		return temperatura_ambiente;
	}
	public void setTemperatura_ambiente(Integer temperatura_ambiente) {
		this.temperatura_ambiente = temperatura_ambiente;
	}
	public Atividade(Long id_app, String nome_app, Long id_atividade_fitrank, Long id_usuario, String nome_usuario,
			String tipo_atividade, String data_atividade, String hora_atividade, String duracao, Float distancia,
			Float velocidade_media, Float velocidade_maxima, Integer frequencia_cardiaca_media,
			Integer frequencia_cardiaca_maxima, Integer frequencia_cardiaca_minima, Integer calorias,
			String ritmo_medio, String ritmo_maximo, Integer temperatura_ambiente, String clima, Integer elevacao) {
		super();
		this.id_app = id_app;
		this.nome_app = nome_app;
		this.id_atividade_fitrank = id_atividade_fitrank;
		this.id_usuario = id_usuario;
		this.nome_usuario = nome_usuario;
		this.tipo_atividade = tipo_atividade;
		this.data_atividade = data_atividade;
		this.hora_atividade = hora_atividade;
		this.duracao = duracao;
		this.distancia = distancia;
		this.velocidade_media = velocidade_media;
		this.velocidade_maxima = velocidade_maxima;
		this.frequencia_cardiaca_media = frequencia_cardiaca_media;
		this.frequencia_cardiaca_maxima = frequencia_cardiaca_maxima;
		this.frequencia_cardiaca_minima = frequencia_cardiaca_minima;
		this.calorias = calorias;
		this.ritmo_medio = ritmo_medio;
		this.ritmo_maximo = ritmo_maximo;
		this.temperatura_ambiente = temperatura_ambiente;
		this.clima = clima;
		this.elevacao = elevacao;
	}
		
	
	
	
	
}
