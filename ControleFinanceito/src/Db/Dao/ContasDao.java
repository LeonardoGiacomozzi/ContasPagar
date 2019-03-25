package Db.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public ContasPagarBean Consulta(int prCodigo) 
	{
		
		Connection conexao = Conexao.abreConexao();
		Statement st = conexao.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM conteudoprova ORDER BY cd_cont DESC LIMIT 1;");
		ContasPagarBean conta;
		List< ContasPagarBean> contas = new ArrayList<ContasPagarBean>();
		try {
			while (rs.next()) {
				contas.add(new ContasPagarBean(rs.getInt("CODIGO"),rs.getString("NOMECREDOR"),rs.getDouble("VALORBRUTO"),
								rs.getDouble("VALORDESCONTO"), rs.getDouble("LIMITECREDITO"), rs.getDouble("LIMITECREDITO"),
								rs.getString(""), valorPago));

			}
		} finally {
			Conexao.fechaConexao();
		}
		
		
		return ;
	}
}

