package br.cefetrj.fitextractor.model;

import java.sql.Timestamp;
import java.util.Calendar;

public class URL {
	
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
