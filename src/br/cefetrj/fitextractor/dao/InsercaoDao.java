package br.cefetrj.fitextractor.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mysql.jdbc.CallableStatement;

import br.cefetrj.fitextractor.connection.ConnectionFactory;
import br.cefetrj.fitextractor.model.Atividade;

public class InsercaoDao {
	
	public void insereTudo(){
		Connection conexao = new ConnectionFactory().getConnection();
		PreparedStatement stmt = null;
		CallableStatement cs = null;
		
		String sql = "CALL `fitrank`.`inserir_tudo`(); ";
		
		try{
			cs = (CallableStatement) conexao.prepareCall(sql);
			cs.execute();
			
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				if(cs!= null){
					cs.close();
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
	}//fim insere
	
	
}
