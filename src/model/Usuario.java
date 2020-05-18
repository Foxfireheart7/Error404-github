package model;

public class Usuario {
	private int id;
	private String nome;
	private String cpf;
	private String cep;
	private String endereco;
	private int numero;
	private String telefone;
	private String email;
	private String senha;
	private static boolean adm;
	public static boolean logado = false;
	
	public static boolean isLogado() {
		return logado;
	}

	public static void setLogado(boolean logado) {
		Usuario.logado = logado;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getCpf() {
		return cpf;
	}
	
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	public String getCep() {
		return cep;
	}
	
	public void setCep(String cep) {
		this.cep = cep;
	}
	
	public String getEndereco() {
		return endereco;
	}
	
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	public int getNumero() {
		return numero;
	}
	
	public void setNumero(int nuemro) {
		this.numero = nuemro;
	}
	
	public String getTelefone() {
		return telefone;
	}
	
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSenha() {
		return senha;
	}
	
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	public static boolean isAdm() {
		return adm;
	}
	
	public static void setAdm(boolean adm) {
		Usuario.adm = adm;
	}
}
