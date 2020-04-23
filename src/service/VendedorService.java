package service;

import java.util.ArrayList;

import model.Produto;
import dao.ProdutoDAO;

public class VendedorService {
	ProdutoDAO dao;
	
	public VendedorService(){
		dao = new ProdutoDAO();
	}
	public ArrayList<Produto> listarProduto(){
		return dao.listarProduto();
	}
	public ArrayList<Produto> listarProduto(String chave){
		return dao.listarProduto(chave);
	}

}
