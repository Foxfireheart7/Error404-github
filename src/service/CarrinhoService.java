package service;

import java.util.ArrayList;

import model.Produto;

public class CarrinhoService {
	ArrayList<Produto> carrinho;
	
	public CarrinhoService() {
		carrinho = new ArrayList<Produto>();
	}
	
	public void setCarrinho(ArrayList<Produto> list) {
		carrinho = list;
	}
	
	public void addCarrinho(Produto produto) {
		carrinho.add(produto);
	}
	
	public void removeCarrinho(int id) {
		int index = buscarNoCarrinho(id);
		
		carrinho.remove(index);
	}
	
	public int buscarNoCarrinho(int id) {
		int index = -1;
		
		for(int i = 0; i < carrinho.size(); i++) {
			
			if(carrinho.get(i).getId() == id) {
				return i;
			}
		}
		return index;
	}
	
	public void limparCarrinho() {
		carrinho.clear();
	}
	
	public ArrayList<Produto> itensCarrinho(){
		return carrinho;
	}
}
