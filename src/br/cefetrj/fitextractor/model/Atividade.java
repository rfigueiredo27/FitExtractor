package br.cefetrj.fitextractor.model;

import java.sql.Timestamp;
import java.util.Calendar;

public class Atividade {
	
	private Long id_usuario;
	private String nome_usuario;
	private Long id_app;
	private String nome_app;
	private Long id_atividade;
	private String modalidade;
	private Float distancia_percorrida;
	private String duracao;
	private Float duracao_decimal;
	private String data_publicacao;
	private String url_atividade;
	private Float velocidade_media;
	private String desc_atividade;
	private String ritmo_medio;
	private int calorias;
	private String horario;
	private int id_periodo;
	private String desc_periodo;
	private Long total_atividades;
	private String ultima_data;
	private Float percentual;
	private Float kmedia;
	private String kmedia_tempo;
	private String genero;
	private String data_nascimento;
	private String faixa_etaria;
	private Float distancia_media;
	private String duracao_media;
	private Float caloria_media;
	private Float velocidade_media_media;
	private Float ritmo_medio_media;
	
	

	public Float getDistancia_media() {
		return distancia_media;
	}
	public void setDistancia_media(Float distancia_media) {
		this.distancia_media = distancia_media;
	}
	public String getDuracao_media() {
		return duracao_media;
	}
	public void setDuracao_media(String duracao_media) {
		this.duracao_media = duracao_media;
	}
	public Float getCaloria_media() {
		return caloria_media;
	}
	public void setCaloria_media(Float caloria_media) {
		this.caloria_media = caloria_media;
	}
	public Float getVelocidade_media_media() {
		return velocidade_media_media;
	}
	public void setVelocidade_media_media(Float velocidade_media_media) {
		this.velocidade_media_media = velocidade_media_media;
	}
	public Float getRitmo_medio_media() {
		return ritmo_medio_media;
	}
	public void setRitmo_medio_media(Float ritmo_medio_media) {
		this.ritmo_medio_media = ritmo_medio_media;
	}
	public String getFaixa_etaria() {
		return faixa_etaria;
	}
	public void setFaixa_etaria(String faixa_etaria) {
		this.faixa_etaria = faixa_etaria;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public String getData_nascimento() {
		return data_nascimento;
	}
	public void setData_nascimento(String data_nascimento) {
		this.data_nascimento = data_nascimento;
	}
	public String getKmedia_tempo() {
		return kmedia_tempo;
	}
	public void setKmedia_tempo(String kmedia_tempo) {
		this.kmedia_tempo = kmedia_tempo;
	}
	public Float getKmedia() {
		return kmedia;
	}
	public void setKmedia(Float kmedia) {
		this.kmedia = kmedia;
	}
	public Float getPercentual() {
		return percentual;
	}
	public void setPercentual(Float percentual) {
		this.percentual = percentual;
	}
	public String getUltima_data() {
		return ultima_data;
	}
	public void setUltima_data(String ultima_data) {
		this.ultima_data = ultima_data;
	}
	public Long getTotal_atividades() {
		return total_atividades;
	}
	public void setTotal_atividades(Long total_atividades) {
		this.total_atividades = total_atividades;
	}
	public Float getDuracao_decimal() {
		return duracao_decimal;
	}
	public void setDuracao_decimal(Float duracao_decimal) {
		this.duracao_decimal = duracao_decimal;
	}
	public String getDesc_atividade() {
		return desc_atividade;
	}
	public void setDesc_atividade(String desc_atividade) {
		this.desc_atividade = desc_atividade;
	}
	public String getRitmo_medio() {
		return ritmo_medio;
	}
	public void setRitmo_medio(String ritmo_medio) {
		this.ritmo_medio = ritmo_medio;
	}
	public int getCalorias() {
		return calorias;
	}
	public void setCalorias(int calorias) {
		this.calorias = calorias;
	}
	public String getHorario() {
		return horario;
	}
	public void setHorario(String horario) {
		this.horario = horario;
	}
	public int getId_periodo() {
		return id_periodo;
	}
	public void setId_periodo(int id_periodo) {
		this.id_periodo = id_periodo;
	}
	public String getDesc_periodo() {
		return desc_periodo;
	}
	public void setDesc_periodo(String desc_periodo) {
		this.desc_periodo = desc_periodo;
	}
	public Float getVelocidade_media() {
		return velocidade_media;
	}
	public void setVelocidade_media(Float velocidade_media) {
		this.velocidade_media = velocidade_media;
	}
	public String getDuracao() {
		return duracao;
	}
	public void setDuracao(String duracao) {
		this.duracao = duracao;
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
	public Long getId_atividade() {
		return id_atividade;
	}
	public void setId_atividade(Long id_atividade) {
		this.id_atividade = id_atividade;
	}
	public String getModalidade() {
		return modalidade;
	}
	public void setModalidade(String modalidade) {
		this.modalidade = modalidade;
	}
	public Float getDistancia_percorrida() {
		return distancia_percorrida;
	}
	
	
	public void setDistancia_percorrida(Float distancia_percorrida) {
		this.distancia_percorrida = distancia_percorrida;
	}
	public String getData_publicacao() {
		return data_publicacao;
	}
	public void setData_publicacao(String data_publicacao) {
		this.data_publicacao = data_publicacao;
	}
	public String getUrl_atividade() {
		return url_atividade;
	}
	public void setUrl_atividade(String url_atividade) {
		this.url_atividade = url_atividade;
	}
	
	
	

}
