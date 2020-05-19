package service;

import java.util.ArrayList;

import dao.FavoritosDAO;
import model.Produto;
import model.Usuario;

public class FavoritosService {
	FavoritosDAO dao = new FavoritosDAO();
	
	public void adcionarFavoritos(Usuario usuario, Produto produto) {
		dao.adicionarFavoritos(usuario, produto);
	}
	
	public void removerFavoritos(Produto produto) {
		dao.removerFavoritos(produto);
	}
	
	public ArrayList<Integer> carregarFavoritos(Usuario usuario){
		return dao.carregarFavoritos(usuario);
	}
}
