package br.cefetrj.fitextractor.commons.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.cefetrj.fitextractor.commons.connection.ConnectionFactory;
import br.cefetrj.fitextractor.commons.model.URL;

public class UrlDAO {

	public List<URL> getListaUsuarios() throws DAOException{
		Connection conexao = new ConnectionFactory().getConnection();
		List<URL> lista_url = new ArrayList<URL>();
		PreparedStatement stmt = null;
		ResultSet rs = null;

		//String = "SELECT * FROM lista_url where usuario like 'JR%' ";

		String sql = "";

		sql += "select distinct p.id_usuario as nome_usu, p.nome as nome_usuario, a.id_aplicativo as id_app, a.nome as nome_app, "; 
		sql += "c.id_course as id_atividade, pf.modalidade, pf.distancia_percorrida, convert((sec_to_time(pf.duracao * 3600 + 0)), char) as duracao, pf.data_publicacao, pf.url as url_atividade ";
		sql += "from course c ";
		sql += "join post_fitness pf on c.id_post = pf.id_publicacao ";
		sql += "join aplicativo a on pf.id_app = a.id_aplicativo ";
		sql += "join pessoa p on pf.id_pessoa = p.id_usuario ";
		//sql += "where NOT EXISTS (SELECT * FROM atividades WHERE c.id_course = atividades.id_atividade_fitrank)";




		try{
			stmt = (PreparedStatement) conexao.prepareStatement(sql);			
			rs = stmt.executeQuery();

			while(rs.next()){
				URL url = new URL();

				url.setId_usuario(rs.getLong("nome_usu"));
				url.setNome_usuario(rs.getString("nome_usuario"));
				url.setId_app(rs.getLong("id_app"));
				url.setNome_app(rs.getString("nome_app"));
				url.setId_atividade(rs.getLong("id_atividade"));

				switch (rs.getString("modalidade")) {
				case "R":
					url.setModalidade("Corrida");
					break;
				case "B":
					url.setModalidade("Ciclismo");
					break;
				case "W":
					url.setModalidade("Caminhada");
					break;
				default: url.setModalidade("Misto");
				}

				url.setData_publicacao(rs.getString("data_publicacao"));
				url.setUrl_atividade(rs.getString("url_atividade"));

				lista_url.add(url);
			}

		}catch(SQLException e){
			throw new DAOException("Ocorreu um erro no Sistema", e);
		}finally{
			try{
				if(rs!=null){
					rs.close();
				}
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try{
					if(stmt!=null){
						stmt.close();
					}
				}catch(SQLException e){
					e.printStackTrace();
				}finally{
					try{
						if(conexao!=null){
							conexao.close();
						}
					}catch(SQLException e){
						e.printStackTrace();
					}
				}
			}
		}


		return (lista_url);
	} // fim getListaUsuarios

	public List<URL> getListaURLByApp(String app) throws DAOException{ 

		Connection conexao = new ConnectionFactory().getConnection();
		List<URL> lista_url = new ArrayList<URL>();
		PreparedStatement stmt = null;
		ResultSet rs = null;

		String sql = "";

		sql += "select distinct p.id_usuario as nome_usu, p.nome as nome_usuario, a.id_aplicativo as id_app, a.nome as nome_app, "; 
		sql += "c.id_course as id_atividade, pf.modalidade, pf.distancia_percorrida, convert((sec_to_time(pf.duracao * 3600 + 0)), char) as duracao, pf.data_publicacao, pf.url as url_atividade ";
		sql += "from course c ";
		sql += "join post_fitness pf on c.id_post = pf.id_publicacao ";
		sql += "join aplicativo a on pf.id_app = a.id_aplicativo ";
		sql += "join pessoa p on pf.id_pessoa = p.id_usuario ";
		//sql += "where NOT EXISTS (SELECT * FROM atividades WHERE c.id_course = atividades.id_atividade_fitrank) AND a.id_aplicativo = ? ";
		sql += "where a.id_aplicativo = ? ";

		try {
			stmt = conexao.prepareStatement(sql);

			stmt.setString(1, app);
			rs = stmt.executeQuery();

			while(rs.next()){
				URL url = new URL();

				url.setId_usuario(rs.getLong("nome_usu"));
				url.setNome_usuario(rs.getString("nome_usuario"));
				url.setId_app(rs.getLong("id_app"));
				url.setNome_app(rs.getString("nome_app"));
				url.setId_atividade(rs.getLong("id_atividade"));

				switch (rs.getString("modalidade")) {
				case "R":
					url.setModalidade("Corrida");
					break;
				case "B":
					url.setModalidade("Ciclismo");
					break;
				case "W":
					url.setModalidade("Caminhada");
					break;
				default: url.setModalidade("Misto");
				}
				Float distancia = rs.getFloat("distancia_percorrida");
				DecimalFormat nf= new DecimalFormat("0.00");
				url.setDistancia_percorrida(Float.parseFloat(nf.format(distancia).replace(",", ".")));
				url.setDuracao(rs.getString("duracao").substring(0, 8));
				
				
				String data = rs.getString("data_publicacao");
				url.setData_publicacao(data);
				
				
				url.setUrl_atividade(rs.getString("url_atividade"));

				lista_url.add(url);
			}

		}catch(SQLException e){
			throw new DAOException("Ocorreu um erro no Sistema", e);
		}finally{
			try{
				if(rs!=null){
					rs.close();
				}
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try{
					if(stmt!=null){
						stmt.close();
					}
				}catch(SQLException e){
					e.printStackTrace();
				}finally{
					try{
						if(conexao!=null){
							conexao.close();
						}
					}catch(SQLException e){
						e.printStackTrace();
					}
				}
			}

		}return (lista_url);
	}// fim getListaUsuarios

}

