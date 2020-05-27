package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Produto;
import service.ProdutoService;

@WebServlet("/ProdutoAlterar")
public class ProdutoAlterar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ProdutoAlterar() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pAcao = request.getParameter("acao");
		String pIdProduto = request.getParameter("idProduto");
		String pNome = request.getParameter("nome");
		String pPreco = request.getParameter("preco");
		String pCategoria = request.getParameter("categoria");
		String pDescricao = request.getParameter("descricao");
		
		HttpSession session = request.getSession();
		Produto produto = new Produto();
		ProdutoService pService = new ProdutoService();
		
		produto.setId(Integer.parseInt(pIdProduto));
		pService.carregar(produto);
		
		if(pAcao.equals("detalhe")) {
			response.sendRedirect("AlterarProduto.jsp");
		}
		else if(pAcao.equals("salvar")){
			produto.setNome(pNome);
			produto.setPreco(Double.parseDouble(pPreco));
			produto.setCategoria(pCategoria);
			produto.setDescricao(pDescricao);
			pService.atualizar(produto);
			session.removeAttribute("produtoDetalhado");
			session.setAttribute("produtoDetalhado", produto);
			response.sendRedirect("detalheMain.jsp");
		}
	}

}
