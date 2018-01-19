package br.cefetrj.fitextractor.dao;

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

import br.cefetrj.fitextractor.connection.ConnectionFactory;
import br.cefetrj.fitextractor.model.Atividade;

public class ListarDao {


public List<Atividade> getAtivPosApp(String app){
		Connection conexao = new ConnectionFactory().getConnection();
		List<Atividade> lista_url = new ArrayList<Atividade>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT id_usuario,nome_usuario, id_app, nome_app, id_atividade_fitrank, "
				+ "modalidade, desc_atividade, duracao_decimal, distancia, duracao, velocidade_media, "
				+ "ritmo_medio, caloria_aproximada, data_publicacao, horario, desc_periodo, url_atividade "
				+ "FROM atividades where id_app = ? ";

		try{
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, app);
			rs = stmt.executeQuery();

			while(rs.next()){
				Atividade url = new Atividade();
				
				url.setId_usuario(rs.getLong("id_usuario"));
				url.setNome_usuario(rs.getString("nome_usuario"));
				url.setId_app(rs.getLong("id_app"));
				url.setNome_app(rs.getString("nome_app"));
				url.setId_atividade(rs.getLong("id_atividade_fitrank"));
				url.setModalidade(rs.getString("modalidade"));
				url.setDesc_atividade(rs.getString("desc_atividade"));
				url.setDuracao_decimal(rs.getFloat("duracao_decimal"));
				url.setDistancia_percorrida(rs.getFloat("distancia"));
				url.setDuracao(rs.getString("duracao"));
				url.setVelocidade_media(rs.getFloat("velocidade_media"));
				url.setRitmo_medio(rs.getString("ritmo_medio"));
				url.setCalorias(rs.getInt("caloria_aproximada"));
				url.setData_publicacao(rs.getString("data_publicacao"));
				url.setHorario(rs.getString("horario"));
				url.setDesc_periodo(rs.getString("desc_periodo"));
				url.setUrl_atividade(rs.getString("url_atividade"));
				
				lista_url.add(url);
			}

		}catch(SQLException e){
			e.printStackTrace();
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

public List<Atividade> getTotal(){
		
		Connection conexao = new ConnectionFactory().getConnection();
		List<Atividade> lista_url = new ArrayList<Atividade>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT count(*) as total_atividade FROM fitrank.atividades ";

		try{
			stmt = conexao.prepareStatement(sql);
			rs = stmt.executeQuery();

			while(rs.next()){
				Atividade url = new Atividade();
				
				url.setTotal_atividades(rs.getLong("total_atividade"));
				
				lista_url.add(url);
			}

		}catch(SQLException e){
			e.printStackTrace();
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
	} // fim
	
public List<Atividade> getTotalAtiv(String desc_atividade){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "SELECT count(*) as total_atividade FROM fitrank.atividades where desc_atividade = ? ";

	try{
		stmt = conexao.prepareStatement(sql);
		stmt.setString(1, desc_atividade);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setTotal_atividades(rs.getLong("total_atividade"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
} // fim

public List<Atividade> getUltimaData(){
		
		Connection conexao = new ConnectionFactory().getConnection();
		List<Atividade> lista_url = new ArrayList<Atividade>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "select max(data_insercao) as ultima_data from fitrank.atividades ";

		try{
			stmt = conexao.prepareStatement(sql);
			rs = stmt.executeQuery();

			while(rs.next()){
				Atividade url = new Atividade();
				
				url.setUltima_data(rs.getString("ultima_data"));
				
				lista_url.add(url);
			}

		}catch(SQLException e){
			e.printStackTrace();
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
	} // fim

public List<Atividade> getApps(){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select distinct id_app, nome_app from fitrank.atividades order by nome_app ";

	try{
		stmt = conexao.prepareStatement(sql);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setId_app(rs.getLong("id_app"));
			url.setNome_app(rs.getString("nome_app"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getApp(Long id_app){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select nome_app from fitrank.atividades where id_app = ? ";

	try{
		stmt = conexao.prepareStatement(sql);
		stmt.setLong(1, id_app);
		rs = stmt.executeQuery();

		if(rs.next()){
			Atividade url = new Atividade();
			url.setNome_app(rs.getString("nome_app"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getAtividades(){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select distinct desc_atividade from fitrank.atividades order by nome_app ";

	try{
		stmt = conexao.prepareStatement(sql);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setDesc_atividade(rs.getString("desc_atividade"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getTotalPorApps(){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select count(*) as total, nome_app from fitrank.atividades group by nome_app order by count(*) desc ";

	try{
		stmt = conexao.prepareStatement(sql);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setTotal_atividades(rs.getLong("total"));
			url.setNome_app(rs.getString("nome_app"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getPercentHorario(){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select substr(horario, 1, 2) as horario, round(count(*) / (select count(*) from fitrank.atividades where "
			+ "horario is not null and horario not in ('00:00:00', '01:00:00')) * 100, 4) percent from fitrank.atividades where horario is not null "
			+ "and horario not in ('00:00:00', '01:00:00') group by substr(horario, 1, 2) order by 2 desc; ";

	try{
		stmt = conexao.prepareStatement(sql);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setPercentual(rs.getFloat("percent"));
			url.setHorario(rs.getString("horario"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getPercentPeriodo(){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select desc_periodo, round(count(*) / (select count(desc_periodo) from fitrank.atividades "
			+ "where horario is not null and horario not in ('00:00:00', '01:00:00')) * 100, 2) percent "
			+ "from fitrank.atividades where horario is not null and horario not in ('00:00:00', '01:00:00') "
			+ "group by desc_periodo order by 2 desc; ";

	try{
		stmt = conexao.prepareStatement(sql);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setDesc_periodo(rs.getString("desc_periodo"));
			url.setPercentual(rs.getFloat("percent"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getMediaDistancia(String desc_atividade){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select round(avg(distancia), 2) as media, desc_periodo, desc_atividade from fitrank.atividades "
			+ "where horario is not null and horario not in ('00:00:00', '01:00:00') "
			+ "and desc_atividade = ? group by desc_periodo, desc_atividade order by round(avg(distancia), 2) desc";

	try{
		stmt = conexao.prepareStatement(sql);
		stmt.setString(1, desc_atividade);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setDesc_periodo(rs.getString("desc_periodo"));
			url.setKmedia(rs.getFloat("media"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getMediaDuracao(String desc_atividade){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select sec_to_time(round(avg(time_to_sec(duracao)), 0)) as media, round(avg(time_to_sec(duracao)), 2) as media_decimal, "
			+ "desc_periodo, desc_atividade from fitrank.atividades where horario is not null and horario not in ('00:00:00', '01:00:00') "
			+ "and desc_atividade = ? group by desc_periodo, desc_atividade order by sec_to_time(round(avg(time_to_sec(duracao)), 0)) desc ";

	try{
		stmt = conexao.prepareStatement(sql);
		stmt.setString(1, desc_atividade);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setDesc_periodo(rs.getString("desc_periodo"));
			url.setKmedia_tempo(rs.getString("media"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getMediaCalorias(String desc_atividade){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select round(avg(caloria_aproximada), 2) as media, desc_periodo, desc_atividade from fitrank.atividades "
			+ "where horario is not null and horario not in ('00:00:00', '01:00:00') "
			+ "and desc_atividade = ? group by desc_periodo, desc_atividade order by round(avg(caloria_aproximada), 2) desc ";

	try{
		stmt = conexao.prepareStatement(sql);
		stmt.setString(1, desc_atividade);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setDesc_periodo(rs.getString("desc_periodo"));
			url.setKmedia(rs.getFloat("media"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getMediaVelocidadeMedia(String desc_atividade){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select round(avg(velocidade_media), 2) as media, desc_periodo, desc_atividade from fitrank.atividades "
			+ "where horario is not null and horario not in ('00:00:00', '01:00:00') "
			+ "and desc_atividade = ? group by desc_periodo, desc_atividade order by round(avg(velocidade_media), 2) desc ";

	try{
		stmt = conexao.prepareStatement(sql);
		stmt.setString(1, desc_atividade);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setDesc_periodo(rs.getString("desc_periodo"));
			url.setKmedia(rs.getFloat("media"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getMediaRitmo(String desc_atividade){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select sec_to_time(round(avg(time_to_sec(ritmo_medio)), 0)) as media, round(avg(time_to_sec(ritmo_medio)), 2) as media_decimal, "
			+ "desc_periodo, desc_atividade from fitrank.atividades where horario is not null and horario not in ('00:00:00', '01:00:00') "
			+ "and desc_atividade = ? group by desc_periodo, desc_atividade order by sec_to_time(round(avg(time_to_sec(ritmo_medio)), 0)) ";

	try{
		stmt = conexao.prepareStatement(sql);
		stmt.setString(1, desc_atividade);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setDesc_periodo(rs.getString("desc_periodo"));
			url.setKmedia_tempo(rs.getString("media"));
			
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

public List<Atividade> getAtivGenero(){
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select count(*) as total, genero from fitrank.atividades group by genero order by count(*) desc";

	try{
		stmt = conexao.prepareStatement(sql);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setTotal_atividades(rs.getLong("total"));
			url.setGenero(rs.getString("genero"));
			lista_url.add(url);
		}

	}catch(SQLException e){
		e.printStackTrace();
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
	} // fim

}

