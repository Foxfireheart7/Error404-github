package service;

import model.Usuario;

import java.util.ArrayList;

import dao.UsuarioDAO;

public class UsuarioService {
	UsuarioDAO dao = new UsuarioDAO();
	
	public void adicionarUsuario(Usuario usuario) {
		dao.adicionarUsuario(usuario);
	}
	
	public void logarUsuario(Usuario usuario) {
		dao.logarUsuario(usuario);
	}
	
	public ArrayList<Usuario> listarUsuarios(){
		return dao.listarUsuarios();
	}
}