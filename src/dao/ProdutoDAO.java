package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Produto;


public class ProdutoDAO {
	public int criar(Produto produto) {
		String sqlInsert = "INSERT INTO produto(nome, descricao, preco) VALUES (?, ?, ?)";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setString(1, produto.getNome());
			stm.setString(2, produto.getDescricao());
			stm.setString(3, produto.getPreco());
			stm.execute();
			String sqlQuery = "SELECT LAST_INSERT_ID()";
			try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
					ResultSet rs = stm2.executeQuery();) {
				if (rs.next()) {
					produto.setId(rs.getInt(1));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return produto.getId();
	}

	public void atualizar(Produto produto) {
		String sqlUpdate = "UPDATE produto SET nome=?, descricao=?, preco=? WHERE ID=?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlUpdate);) {
			stm.setString(1, produto.getNome());
			stm.setString(2, produto.getDescricao());
			stm.setString(3, produto.getPreco());
			stm.setInt(4, produto.getId());
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void excluir(int id) {
		String sqlDelete = "DELETE FROM produto WHERE ID = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlDelete);) {
			stm.setInt(1, id);
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Produto carregar(int id) {
		Produto produto = new Produto();
		produto.setId(id);
		String sqlSelect = "SELECT nome, descricao, preco FROM produto WHERE produto.ID = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setInt(1, produto.getId());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					produto.setNome(rs.getString("nome"));
					produto.setDescricao(rs.getString("descricao"));
					produto.setPreco(rs.getString("preco"));
				} else {
					produto.setId(-1);
					produto.setNome(null);
					produto.setDescricao(null);
					produto.setPreco(null);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return produto;
	}
	
	public ArrayList<Produto> listarProduto() {
		Produto produto;
		ArrayList<Produto> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, descricao, preco FROM produto";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					produto = new Produto();
					produto.setId(rs.getInt("id"));
					produto.setNome(rs.getString("nome"));
					produto.setDescricao(rs.getString("descricao"));
					produto.setPreco(rs.getString("preco"));
					lista.add(produto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}

	public ArrayList<Produto> listarProduto(String chave) {
		Produto produto;
		ArrayList<Produto> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, descricao, preco FROM produto where upper(nome) like ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setString(1, "%" + chave.toUpperCase() + "%");
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					produto = new Produto();
					produto.setId(rs.getInt("id"));
					produto.setNome(rs.getString("nome"));
					produto.setDescricao(rs.getString("descricao"));
					produto.setPreco(rs.getString("preco"));
					lista.add(produto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}
}
