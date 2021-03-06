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
		
		String sql = "select max(DATE_FORMAT(data_insercao, '%d/%m/%Y %H:%i:%s'))as ultima_data from fitrank.atividades ";

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
	
	String sql = "select distinct desc_atividade from fitrank.atividades ";

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
	
	String sql = "select count(*) as total, nome_app, round(count(*) / (select count(a.id_atividade_fitrank) from atividades a) * 100, 2) as percent "
			+ "from fitrank.atividades group by nome_app order by count(*) desc ";

	try{
		stmt = conexao.prepareStatement(sql);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setTotal_atividades(rs.getLong("total"));
			url.setNome_app(rs.getString("nome_app"));
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

public List<Atividade> getPercentHorario(){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select substr(horario, 1, 2) as horario, round(count(*) / (select count(*) from fitrank.atividades where "
			+ "horario is not null and horario not in ('00:00:00', '01:00:00')) * 100, 4) percent "
			+ "from fitrank.atividades where horario is not null "
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
			+ "where horario is not null and horario not in ('00:00:00', '01:00:00')) * 100, 2) percent, "
			+ "round((count(*) / (select count(desc_periodo) from fitrank.atividades "
			+ "where horario is not null and horario not in ('00:00:00', '01:00:00'))) * "
			+ "(select count(*) from atividades b),0) as total "
			+ "from fitrank.atividades where horario is not null and horario not in ('00:00:00', '01:00:00') "
			+ "group by desc_periodo order by 2 desc; ";

	try{
		stmt = conexao.prepareStatement(sql);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setDesc_periodo(rs.getString("desc_periodo"));
			url.setPercentual(rs.getFloat("percent"));
			url.setTotal_atividades(rs.getLong("total"));
			
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

public List<Atividade> getPercentPeriodoAtiv(String atividade){
	
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "select desc_periodo, round(count(*) / (select count(desc_periodo) from fitrank.atividades "
			+ "where horario is not null and horario not in ('00:00:00', '01:00:00')) * 100, 2) percent, "
			+ "round((count(*) / (select count(desc_periodo) from fitrank.atividades "
			+ "where horario is not null and horario not in ('00:00:00', '01:00:00') and desc_atividade = ?)) * "
			+ "(select count(*) from atividades b where b.desc_atividade = ?),0) as total "
			+ "from fitrank.atividades where horario is not null and horario not in ('00:00:00', '01:00:00') "
			+ "and desc_atividade = ? "
			+ "group by desc_periodo order by 2 desc; ";

	try{
		stmt = conexao.prepareStatement(sql);
		stmt.setString(1, atividade);
		stmt.setString(2, atividade);
		stmt.setString(3, atividade);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setDesc_periodo(rs.getString("desc_periodo"));
			url.setPercentual(rs.getFloat("percent"));
			url.setTotal_atividades(rs.getLong("total"));
			
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
	
	String sql = "select count(*) as total, genero, round(count(*) / (select count(a.id_atividade_fitrank) from atividades a) * 100, 2) as percent"
			+ " from fitrank.atividades group by genero order by count(*) desc";

	try{
		stmt = conexao.prepareStatement(sql);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			
			url.setTotal_atividades(rs.getLong("total"));
			url.setGenero(rs.getString("genero"));
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

public List<Atividade> getTotalFaixaAtiv(String desc_atividade){
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	//System.out.println("Atividade: " +desc_atividade);
	
	String sql = "select  faixa_etaria, "
			+"round(count(*) / (select count(a.idade) from atividades a where a.faixa_etaria is not null and a.desc_atividade = ?) * 100, 1) as percentual_total, "
			+"round(count(*) / (select count(*) from fitrank.atividades where faixa_etaria is not null and desc_atividade = ?) * "
			+"(select count(*) from atividades b where b.desc_atividade = ?),0) as total "
			+"from atividades where faixa_etaria is not null and desc_atividade = ? "
			+"group by faixa_etaria order by 2 desc";

	try{
		stmt = conexao.prepareStatement(sql);
		stmt.setString(1, desc_atividade);
		stmt.setString(2, desc_atividade);
		stmt.setString(3, desc_atividade);
		stmt.setString(4, desc_atividade);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			url.setPercentual(rs.getFloat("percentual_total"));
			url.setFaixa_etaria(rs.getString("faixa_etaria"));
			url.setTotal_atividades(rs.getLong("total"));
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
	
public List<Atividade> getTotalFaixa(){
		Connection conexao = new ConnectionFactory().getConnection();
		List<Atividade> lista_url = new ArrayList<Atividade>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "select  faixa_etaria, "
				+"round(count(*) / (select count(a.idade) from atividades a where a.faixa_etaria is not null) * 100, 1) as percentual_total, "
				+"round(count(*) / (select count(*) from fitrank.atividades where faixa_etaria is not null) * "
				+"(select count(*) from atividades b),0) as total "
				+"from atividades where faixa_etaria is not null "
				+"group by faixa_etaria order by 2 desc";

		try{
			stmt = conexao.prepareStatement(sql);
			rs = stmt.executeQuery();

			while(rs.next()){
				Atividade url = new Atividade();
				url.setPercentual(rs.getFloat("percentual_total"));
				url.setFaixa_etaria(rs.getString("faixa_etaria"));
				url.setTotal_atividades(rs.getLong("total"));
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
	
public List<Atividade> getTotalFaixaGeneroAtiv(String desc_atividade, String genero){
		Connection conexao = new ConnectionFactory().getConnection();
		List<Atividade> lista_url = new ArrayList<Atividade>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		//System.out.println("Atividade: " +desc_atividade);
		
		String sql = "select faixa_etaria, "
						+"round(count(*) / (select count(a.idade) from atividades a where a.faixa_etaria is "
						+ "not null and a.desc_atividade = ? and a.genero = ?) * 100, 1) as percentual_total, "
						
						+"round(count(*) / (select count(*) from fitrank.atividades where faixa_etaria is "
						+" not null and desc_atividade = ? and genero = ?) * "
						+"(select count(*) from atividades b where b.desc_atividade = ?),0) as total "
						
						+"from atividades where faixa_etaria is not null and desc_atividade = ? and genero = ? "
						+"group by faixa_etaria order by 2 desc";

		try{
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, desc_atividade);
			stmt.setString(2, genero);
			stmt.setString(3, desc_atividade);
			stmt.setString(4, genero);
			stmt.setString(5, desc_atividade);
			stmt.setString(6, desc_atividade);
			stmt.setString(7, genero);
			rs = stmt.executeQuery();

			while(rs.next()){
				Atividade url = new Atividade();
				url.setPercentual(rs.getFloat("percentual_total"));
				url.setFaixa_etaria(rs.getString("faixa_etaria"));
				url.setTotal_atividades(rs.getLong("total"));
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
		
public List<Atividade> getParametrosFaixa(){
		Connection conexao = new ConnectionFactory().getConnection();
		List<Atividade> lista_url = new ArrayList<Atividade>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "select faixa_etaria, desc_atividade, round(avg(distancia), 2) as distancia_media, "
				+ "sec_to_time(round(avg(time_to_sec(duracao)), 0)) as duracao_media, "
				+ "round(avg(caloria_aproximada), 2) as caloria_media, "
				+ "round(avg(velocidade_media), 2) as velocidade_media, "
				+ "sec_to_time(round(avg(time_to_sec(ritmo_medio)), 0)) as ritmo_medio "
				+ "from atividades where data_nascimento is not null and desc_periodo is not null "
				+ "group by faixa_etaria, desc_atividade ";

		try{
			stmt = conexao.prepareStatement(sql);
			rs = stmt.executeQuery();

			while(rs.next()){
				Atividade url = new Atividade();
				url.setFaixa_etaria(rs.getString("faixa_etaria"));
				url.setDesc_atividade(rs.getString("desc_atividade"));
				url.setDistancia_media(rs.getFloat("distancia_media"));
				url.setDuracao_media(rs.getString("duracao_media"));
				url.setCaloria_media(rs.getFloat("caloria_media"));
				url.setVelocidade_media(rs.getFloat("velocidade_media"));
				url.setRitmo_medio(rs.getString("ritmo_medio"));
				//System.out.println(rs.getString("faixa_etaria"));
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
	
public List<Atividade> getParametrosGenero(){
		Connection conexao = new ConnectionFactory().getConnection();
		List<Atividade> lista_url = new ArrayList<Atividade>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "select genero, desc_atividade, round(avg(distancia), 2) as distancia_media, "
				+ "sec_to_time(round(avg(time_to_sec(duracao)), 0)) as duracao_media, "
				+ "round(avg(caloria_aproximada), 2) as caloria_media, "
				+ "round(avg(velocidade_media), 2) as velocidade_media, "
				+ "sec_to_time(round(avg(time_to_sec(ritmo_medio)), 0)) as ritmo_medio "
				+ "from atividades where data_nascimento is not null and desc_periodo is not null "
				+ "group by genero, desc_atividade ";

		try{
			stmt = conexao.prepareStatement(sql);
			rs = stmt.executeQuery();

			while(rs.next()){
				Atividade url = new Atividade();
				url.setGenero(rs.getString("genero"));
				url.setDesc_atividade(rs.getString("desc_atividade"));
				url.setDistancia_media(rs.getFloat("distancia_media"));
				url.setDuracao_media(rs.getString("duracao_media"));
				url.setCaloria_media(rs.getFloat("caloria_media"));
				url.setVelocidade_media(rs.getFloat("velocidade_media"));
				url.setRitmo_medio(rs.getString("ritmo_medio"));
				lista_url.add(url);
				//System.out.println(rs.getString("genero"));
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
	
public List<Atividade> getParametrosAglomerados(){
	Connection conexao = new ConnectionFactory().getConnection();
	List<Atividade> lista_url = new ArrayList<Atividade>();
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String faixa = "";
	
	String sql = "select genero, faixa_etaria, desc_atividade, desc_periodo, "
				+"round(count(*) / (select count(desc_periodo) from fitrank.atividades "
				+"where horario is not null and horario not in ('00:00:00', '01:00:00') and faixa_etaria is not null) * 100, 2) percent, "
				+"round((count(*) / (select count(desc_periodo) from fitrank.atividades "
				+"where horario is not null and horario not in ('00:00:00', '01:00:00') and faixa_etaria is not null)) * "
				+"(select count(*) from atividades b),0) as total "
				+"from fitrank.atividades where horario is not null and horario not in ('00:00:00', '01:00:00') and faixa_etaria is not null "
				+"group by genero, faixa_etaria, desc_atividade, desc_periodo ";

	try{
		stmt = conexao.prepareStatement(sql);
		rs = stmt.executeQuery();

		while(rs.next()){
			Atividade url = new Atividade();
			url.setGenero(rs.getString("genero"));
			//faixa = rs.getString("faixa_etaria");
			url.setFaixa_etaria(rs.getString("faixa_etaria"));
			url.setDesc_atividade(rs.getString("desc_atividade"));
			url.setDesc_periodo(rs.getString("desc_periodo"));
			url.setPercentual(rs.getFloat("percent"));
			url.setTotal_atividades(rs.getLong("total"));
			lista_url.add(url);
			//System.out.println(rs.getString("genero"));
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


//	public static void main(String[] args) {
//		ListarDao dao = new ListarDao();
//		dao.getParametrosFaixa();
//	}
}

