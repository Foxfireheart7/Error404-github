package service;

import model.Usuario;
import dao.UsuarioDAO;

public class UsuarioService {
	UsuarioDAO dao = new UsuarioDAO();
	
	public void adicionarUsuario(Usuario usuario) {
		dao.adicionarUsuario(usuario);
	}
	
	public void logarUsuario(Usuario usuario) {
		dao.logarUsuario(usuario);
	}
}
/*
ClienteDAO dao;

public UsuarioService(){
	dao = new ClienteDAO();
}
public ArrayList<Cliente> listarClientes(){
	return dao.listarClientes();
}
public ArrayList<Cliente> listarClientes(String chave){
	return dao.listarClientes(chave);
}
*/