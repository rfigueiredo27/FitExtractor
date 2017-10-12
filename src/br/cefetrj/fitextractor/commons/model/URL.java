package br.cefetrj.fitextractor.commons.model;

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
	private String data_publicacao;
	private String url_atividade;

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
