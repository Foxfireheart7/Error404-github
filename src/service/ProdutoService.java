package service;

import java.util.ArrayList;

import model.Usuario;
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
	
	public Produto carregarNome(Produto produto) {
		return dao.carregarNome(produto);
	}
	
	//--------------------------------//
	
	public ArrayList<Produto> listarProduto(){
		return dao.listarProduto();
	}
	public ArrayList<Produto> listarProduto(String chave){
		return dao.listarProduto(chave);
	}
	
	public ArrayList<Produto> maisVendidos(){
		return dao.maisVendidos();
	}
	
	public ArrayList<Produto> meusProdutos(Usuario usuario){
		return dao.meusProdutos(usuario);
	}
}
