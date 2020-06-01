package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Historico;

public class HistoricoDAO {
	public ArrayList<Historico> relatorio(){
		ArrayList<Historico> list = new ArrayList<>();
		String sqlSelect = "SELECT * FROM historico h JOIN usuario u ON u.ID = h.ID_usuario JOIN produto p ON p.ID = h.ID_produto";
		try(Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect); ResultSet rs = stm.executeQuery()){
			while(rs.next()) {
				Historico historico = new Historico();
				historico.setNomeUsuario(rs.getString("u.nome"));
				historico.setNomeProduto(rs.getString("p.nome"));
				historico.setPrecoProduto(rs.getDouble("p.preco"));
				historico.setVendasProduto(rs.getInt("p.vendidos"));
				
				list.add(historico);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
