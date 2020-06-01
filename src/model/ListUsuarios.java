package model;

public class ListUsuarios {
	private String nome;
	private String tipo;
	private int id;
	private int produtos;
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getTipo() {
		return tipo;
	}
	
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getProdutos() {
		return produtos;
	}
	
	public void setProdutos(int produtos) {
		this.produtos = produtos;
	}
	
}
