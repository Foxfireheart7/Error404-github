package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Produto;
import model.Usuario;


public class ProdutoDAO {
	public void criar(Produto produto) {
		String sqlInsert = "INSERT INTO produto(nome, categoria, descricao, preco, vendidos, fk_idUsuario) VALUES (?, ?, ?, ?, ?, ?)";
		try (Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setString(1, produto.getNome());
			stm.setString(2, produto.getCategoria());
			stm.setString(3, produto.getDescricao());
			stm.setDouble(4, produto.getPreco());
			stm.setInt(5, produto.getVendidos());
			stm.setInt(6, produto.getIdUsuario());
			stm.execute();
			
			ConnectionFactory.fecharConexao();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void atualizar(Produto produto) {
		String sqlUpdate = "UPDATE produto SET nome = ?, categoria = ?, descricao = ?, preco = ? WHERE ID = ?";
		try (Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlUpdate);) {
			stm.setString(1, produto.getNome());
			stm.setString(2, produto.getCategoria());
			stm.setString(3, produto.getDescricao());
			stm.setDouble(4, produto.getPreco());
			stm.setInt(5, produto.getId());
			stm.execute();
			
			ConnectionFactory.fecharConexao();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void excluir(int id) {
		String sqlDelete = "DELETE FROM produto WHERE ID = ?";
		try (Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlDelete);) {
			stm.setInt(1, id);
			stm.execute();
			
			ConnectionFactory.fecharConexao();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Produto carregar(Produto produto) {
		String sqlSelect = "SELECT * FROM produto WHERE ID = ?";
		try (Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setInt(1, produto.getId());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					produto.setNome(rs.getString("nome"));
					produto.setCategoria(rs.getString("categoria"));
					produto.setDescricao(rs.getString("descricao"));
					produto.setPreco(rs.getDouble("preco"));
					produto.setVendidos(rs.getInt("vendidos"));
					produto.setIdUsuario(rs.getInt("fk_idUsuario"));
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			ConnectionFactory.fecharConexao();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return produto;
	}
	
	public Produto carregarNome(Produto produto) {
		String sqlSelect = "SELECT * FROM produto WHERE nome = ?";
		try (Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setString(1, produto.getNome());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					produto.setId(rs.getInt("ID"));
					produto.setCategoria(rs.getString("categoria"));
					produto.setDescricao(rs.getString("descricao"));
					produto.setPreco(rs.getDouble("preco"));
					produto.setVendidos(rs.getInt("vendidos"));
					produto.setIdUsuario(rs.getInt("fk_idUsuario"));
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			ConnectionFactory.fecharConexao();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return produto;
	}
	
	public ArrayList<Produto> listarProduto() {
		Produto produto;
		ArrayList<Produto> lista = new ArrayList<>();
		String sqlSelect = "SELECT * FROM produto";
		try (Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					produto = new Produto();
					produto.setId(rs.getInt("id"));
					produto.setNome(rs.getString("nome"));
					produto.setCategoria(rs.getString("categoria"));
					produto.setDescricao(rs.getString("descricao"));
					produto.setPreco(rs.getDouble("preco"));
					produto.setVendidos(rs.getInt("vendidos"));
					produto.setIdUsuario(rs.getInt("fk_idUsuario"));
					lista.add(produto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			ConnectionFactory.fecharConexao();
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}

	public ArrayList<Produto> listarProduto(String chave) {
		Produto produto;
		ArrayList<Produto> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, descricao, preco FROM produto where upper(nome) like ?";
		try (Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setString(1, "%" + chave.toUpperCase() + "%");
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					produto = new Produto();
					produto.setId(rs.getInt("id"));
					produto.setNome(rs.getString("nome"));
					produto.setDescricao(rs.getString("descricao"));
					produto.setPreco(rs.getDouble("preco"));
					lista.add(produto);
				}	
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			ConnectionFactory.fecharConexao();
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}
	
	public ArrayList<Produto> maisVendidos(){
		ArrayList<Produto> list = new ArrayList<>();
		String sqlSelect = "SELECT * FROM produto ORDER BY vendidos DESC";
		try(Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect)){
			try(ResultSet rs = stm.executeQuery()){
				while(rs.next()) {
					Produto produto = new Produto();
					produto.setId(rs.getInt("ID"));
					produto.setNome(rs.getString("nome"));
					produto.setCategoria(rs.getString("categoria"));
					produto.setDescricao(rs.getString("descricao"));
					produto.setPreco(rs.getDouble("preco"));
					list.add(produto);
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
	
	public ArrayList<Produto> meusProdutos(Usuario usuario){
		ArrayList<Produto> list = new ArrayList<>();
		String sqlSelect = "SELECT * FROM produto WHERE fk_idUsuario = ?";
		try(Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect)){
			stm.setInt(1, usuario.getId());
			try(ResultSet rs = stm.executeQuery()){
				while(rs.next()) {
					Produto produto = new Produto();
					produto.setId(rs.getInt("ID"));
					produto.setNome(rs.getString("nome"));
					produto.setCategoria(rs.getString("categoria"));
					produto.setDescricao(rs.getString("descricao"));
					produto.setPreco(rs.getDouble("preco"));
					produto.setVendidos(rs.getInt("vendidos"));
					list.add(produto);
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
