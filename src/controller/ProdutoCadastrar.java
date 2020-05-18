package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
		String pAcao = request.getParameter("acao");
		String pNome = request.getParameter("nome");
		String pCategoria = request.getParameter("categoria");
		String pDescricao = request.getParameter("descricao");
		double pPreco = Double.parseDouble(request.getParameter("preco"));
		int pVendidos = 0;
		
		Produto produto = new Produto();
		ProdutoService service = new ProdutoService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		Usuario usuario = (Usuario)session.getAttribute("usuario");
		
		produto.setNome(pNome);
		produto.setCategoria(pCategoria);
		produto.setDescricao(pDescricao);
		produto.setPreco(pPreco);
		produto.setVendidos(pVendidos);
		produto.setIdUsuario(usuario.getId());
		//produto.setImagem(pImagem);
		
		if(pAcao.equals("criar")) {
			service.criar(produto);
			view = request.getRequestDispatcher("ListarProduto.jsp");
			view.forward(request, response);
		}
	}
}
