package controller;

import java.util.ArrayList;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Produto;
import model.Usuario;
import service.ProdutoService;

@WebServlet("/ProdutoCadastrar")
public class ProdutoCadastrar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ProdutoCadastrar() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pNome = request.getParameter("nome");
		String pCategoria = request.getParameter("categoria");
		String pDescricao = request.getParameter("descricao");
		double pPreco = Double.parseDouble(request.getParameter("preco"));
		String pPath = request.getParameter("path") + "\\";
		String saida = "";
		int pVendidos = 0, inicio = 0;
		
		Produto produto = new Produto();
		ProdutoService service = new ProdutoService();
		HttpSession session = request.getSession();
		Usuario usuario = (Usuario)session.getAttribute("usuario");
		ArrayList<String> array = new ArrayList<>();
		
		for(int i = 0; i < pPath.length(); i++) {
			char letra = pPath.charAt(i);
			
			if(letra == '\\') {
				String palavra = pPath.substring(inicio, i);
				inicio = i + 1;
				array.add(palavra);
			}
		}
		
		for(int i = 0; i < array.size(); i++) {
			if(i == array.size() - 1) {
				saida += array.get(i);
			}
			else {
				saida += array.get(i) + "/";
			}
		}
		
		produto.setNome(pNome);
		produto.setCategoria(pCategoria);
		produto.setDescricao(pDescricao);
		produto.setPreco(pPreco);
		produto.setVendidos(pVendidos);
		produto.setIdUsuario(usuario.getId());
		produto.setPath(saida);
		
		service.criar(produto);
		
		response.sendRedirect("MeusProdutos");
	}
}
