package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Usuario;

public class UsuarioDAO {
	public void adicionarUsuario(Usuario usuario) {
		String sqlInsert = "INSERT INTO usuario(nome, cpf, cep, endereco, numero, telefone, email, senha, adm) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try(Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlInsert)){
			stm.setString(1, usuario.getNome());
			stm.setString(2, usuario.getCpf());
			stm.setString(3, usuario.getCep());
			stm.setString(4, usuario.getEndereco());
			stm.setInt(5, usuario.getNumero());
			stm.setString(6, usuario.getTelefone());
			stm.setString(7, usuario.getEmail());
			stm.setString(8, usuario.getSenha());
			stm.setBoolean(9, Usuario.isAdm());
			stm.execute();
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void logarUsuario(Usuario usuario) {
		String sqlSelect = "SELECT * FROM usuario WHERE email = ?";
		
		try(Connection conn = ConnectionFactory.obterConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect)){
			stm.setString(1, usuario.getEmail());
			
			try(ResultSet rs = stm.executeQuery()){
				if(rs.next()) {
					usuario.setId(rs.getInt("ID"));
					usuario.setNome(rs.getString("nome"));
					usuario.setCpf(rs.getString("CPF"));
					usuario.setCep(rs.getString("cep"));
					usuario.setEndereco(rs.getString("endereco"));
					usuario.setNumero(rs.getInt("numero"));
					usuario.setTelefone(rs.getString("telefone"));
					usuario.setSenha(rs.getString("senha"));
					Usuario.setAdm(rs.getBoolean("ADM"));
				}
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
