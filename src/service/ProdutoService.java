package service;

import java.util.ArrayList;

import model.Produto;
import dao.ProdutoDAO;


public class ProdutoService {
	ProdutoDAO dao = new ProdutoDAO();
	
	public void criar(Produto produto) {
		dao.criar(produto);
	}
	
	public void atualizar(Produto produto){
		dao.atualizar(produto);
	}
	
	public void excluir(int id){
		dao.excluir(id);
	}
	
	public Produto carregar(Produto produto){
		return dao.carregar(produto);
	}
	
	//--------------------------------//
	
	public ArrayList<Produto> listarProduto(){
		return dao.listarProduto();
	}
	public ArrayList<Produto> listarProduto(String chave){
		return dao.listarProduto(chave);
	}
	
	public ArrayList<Produto> seisProdutos(){
		return dao.seisProdutos();
	}
	
	public ArrayList<Produto> maisVendidos(){
		return dao.maisVendidos();
	}
}
