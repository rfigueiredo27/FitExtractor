package br.cefetrj.fitextractor.commons.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionFactory {

	private static final String URL_MYSQL= "jdbc:mysql://";
	private static final String IP = "albali.eic.cefet-rj.br:3306";
	private static final String NOME_BANCO = "fitrank";
	private static final String URL_DA_CONEXAO = URL_MYSQL + IP + "/" + NOME_BANCO;
	
	public Connection getConnection(){
				
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		
		Connection conexao = null;
		
		try{
			conexao = (Connection)DriverManager.getConnection(URL_DA_CONEXAO , "fitrank" , "fitrank2015!");
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return conexao;
	}
	
	public static void main(String[] args) throws SQLException {
		Connection conexao = DriverManager.getConnection(URL_DA_CONEXAO , "root" , "1234");
		System.out.println("Conectado!");
		conexao.close();
	}
	
}
