package controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CarrinhoService;
//import service.UsuarioService;
import service.ProdutoService;
import model.Produto;

@WebServlet("/Carrinho")
public class Carrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Carrinho() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pAcao = request.getParameter("acao");
		int pIdProduto = Integer.parseInt(request.getParameter("idProduto"));
		String pPagina = request.getParameter("pagina");
		
		ProdutoService pService = new ProdutoService();
		CarrinhoService cService = new CarrinhoService();
		RequestDispatcher dispatcher = null;
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		ArrayList<Produto> carrinho = (ArrayList<Produto>)session.getAttribute("carrinho");
		if(carrinho != null && !carrinho.isEmpty()) {
			cService.setCarrinho(carrinho);
		}
		
		if(pAcao.equals("adicionar")) {
			//Produto produto = pService.carregar(pIdProduto);
			//cService.addCarrinho(produto);
			System.out.println(cService.itensCarrinho().size());
			session.removeAttribute("carrinho");
			session.setAttribute("carrinho", cService.itensCarrinho());
			dispatcher = request.getRequestDispatcher(pPagina);
			dispatcher.forward(request, response);
		}
		else if(pAcao.equals("remover")) {
			cService.removeCarrinho(pIdProduto);
			dispatcher = request.getRequestDispatcher(pPagina);
			dispatcher.forward(request, response);
		}
		
		else if(pAcao.equals("visualizar")) {
			session.removeAttribute("carrinhoAtual");
			session.setAttribute("carrinhoAtual", cService.itensCarrinho());
			dispatcher = request.getRequestDispatcher("PaginaCarrinho.jsp");
			dispatcher.forward(request, response);
		}
	}

}
