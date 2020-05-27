package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Usuario;
import model.Produto;

public class FavoritosDAO {
	public void adicionarFavoritos(Usuario usuario, Produto produto) {
		String sqlInsert = "INSERT INTO favoritos(ID_usuario, ID_produto) VALUES(?, ?)";
		
		try(Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlInsert)){
			stm.setInt(1, usuario.getId());
			stm.setInt(2, produto.getId());
			stm.execute();
			
			ConnectionFactory.fecharConexao();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void removerFavoritos(Usuario usuario, Produto produto) {
		String sqlDelete = "DELETE FROM favoritos WHERE ID_usuario = ? and ID_produto = ?";
		try(Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlDelete)){
			stm.setInt(1, usuario.getId());
			stm.setInt(2, produto.getId());
			stm.execute();
			
			ConnectionFactory.fecharConexao();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Integer> carregarFavoritos(Usuario usuario){
		ArrayList<Integer> list = new ArrayList<>();
		String sqlSelect = "SELECT ID_produto FROM favoritos WHERE ID_usuario = ?";
		
		try(Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect)){
			stm.setInt(1, usuario.getId());
			
			try(ResultSet rs = stm.executeQuery()){
				while(rs.next()) {
					int id;
					id = rs.getInt("ID_produto");
					list.add(id);
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
			
			ConnectionFactory.fecharConexao();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
