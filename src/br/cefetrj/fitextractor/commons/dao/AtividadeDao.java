package br.cefetrj.fitextractor.commons.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.cefetrj.fitextractor.commons.connection.ConnectionFactory;
import br.cefetrj.fitextractor.commons.model.Atividade;

public class AtividadeDao {
	
	public void insereAtividade(Atividade atividade) throws DAOException{
		Connection conexao = new ConnectionFactory().getConnection();
		PreparedStatement stmt = null;
		
		String sql = "insert into atividades(id_app, nome_app, id_atividade_fitrank, id_usuario, nome_usuario, modalidade, " +
					"data_atividade, hora_atividade, duracao, distancia, velocidade_media, velocidade_maxima, frequencia_cardiaca_media, frequencia_cardiaca_maxima, " +
					"frequencia_cardiaca_minima, calorias, ritmo_medio, ritmo_maximo, temperatura_ambiente, clima) " +
					"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try{
			stmt = (PreparedStatement) conexao.prepareStatement(sql);
			stmt.setLong(1, atividade.getId_app());
			stmt.setString(2, atividade.getNome_app());
			stmt.setLong(3, atividade.getId_atividade_fitrank());
			stmt.setLong(4, atividade.getId_usuario());
			stmt.setString(5, atividade.getNome_usuario());
			stmt.setString(6, atividade.getTipo_atividade());
			stmt.setString(7, atividade.getData_atividade());
			stmt.setString(8, atividade.getHora_atividade());
			stmt.setString(9, atividade.getDuracao());
			stmt.setFloat(10, atividade.getDistancia());
			stmt.setFloat(11, atividade.getVelocidade_media());
			stmt.setFloat(12, atividade.getVelocidade_maxima());
			stmt.setInt(13, atividade.getFrequencia_cardiaca_media());
			stmt.setInt(14, atividade.getFrequencia_cardiaca_maxima());
			stmt.setInt(15, atividade.getFrequencia_cardiaca_minima());
			stmt.setInt(16, atividade.getCalorias());
			stmt.setString(17, atividade.getRitmo_medio());
			stmt.setString(18, atividade.getRitmo_maximo());
			stmt.setInt(19, atividade.getTemperatura_ambiente());
			stmt.setString(20, atividade.getClima());
					
			stmt.execute();
			
			
		}catch(SQLException e){
			throw new DAOException("Ocorreu um erro no Sistema", e);
		}finally{
			try{
				if(stmt!= null){
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
	}//fim insereUsuario

}
