package Db.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bean.ContasPagarBean;
import Db.Conexao.Conexao;

public class ContasDao {
	
	
	
	public boolean Inserir(ContasPagarBean conta) 
	{
		Connection conexao = Conexao.abreConexao();

		try {
			PreparedStatement pst = conexao.prepareStatement("INSERT INTO CONTASPAGAR VALUES (?,?,?,?,?,?,?)");
			pst.setString(1, conta.getNomeCredor());
			pst.setDouble(2, conta.getValorBruto());
			pst.setDouble(3, conta.getValorDesconto());
			pst.setDouble(4, conta.getLimiteCredito());
			pst.setDouble(5, conta.getJuros());
			pst.setString(6, conta.getEndereco());
			pst.setDouble(7, conta.getValorPago());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	
	public boolean Consulta(int prCodigo) 
	{
		return true;
	}
}

