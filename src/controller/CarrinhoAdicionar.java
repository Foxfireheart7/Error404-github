package controller;

import java.util.ArrayList;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CarrinhoService;
import service.ProdutoService;
import model.Produto;

@WebServlet("/CarrinhoAdicionar")
public class CarrinhoAdicionar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public CarrinhoAdicionar() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pIdProduto = request.getParameter("idProduto");
		String pUrl = request.getParameter("url");
		
		Produto produto = new Produto();
		ProdutoService pService = new ProdutoService();
		CarrinhoService cService = new CarrinhoService();
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		ArrayList<Produto> carrinho = (ArrayList<Produto>)session.getAttribute("carrinho");
		
		if(carrinho != null && !carrinho.isEmpty()) {
			cService.setCarrinho(carrinho);
		}
		
		produto.setId(Integer.parseInt(pIdProduto));
		pService.carregar(produto);
		cService.addCarrinho(produto);
		session.removeAttribute("carrinho");
		session.setAttribute("carrinho", cService.itensCarrinho());
		response.sendRedirect(pUrl);
	}

}
