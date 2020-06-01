package model;

public class Historico {
	private String nomeUsuario;
	private String nomeProduto;
	private double precoProduto;
	private int vendasProduto;
	
	public String getNomeUsuario() {
		return nomeUsuario;
	}
	
	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}
	
	public String getNomeProduto() {
		return nomeProduto;
	}
	
	public void setNomeProduto(String nomeProduto) {
		this.nomeProduto = nomeProduto;
	}
	
	public double getPrecoProduto() {
		return precoProduto;
	}
	
	public void setPrecoProduto(double precoProduto) {
		this.precoProduto = precoProduto;
	}
	
	public int getVendasProduto() {
		return vendasProduto;
	}
	
	public void setVendasProduto(int vendasProduto) {
		this.vendasProduto = vendasProduto;
	}
	
	
}
