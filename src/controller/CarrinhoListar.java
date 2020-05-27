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

import model.Produto;
import service.CarrinhoService;

@WebServlet("/CarrinhoListar")
public class CarrinhoListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public CarrinhoListar() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double precoTotal = 0;
		
		CarrinhoService cService = new CarrinhoService();
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		@SuppressWarnings("unchecked")
		ArrayList<Produto> carrinho = (ArrayList<Produto>)session.getAttribute("carrinho");
		
		cService.setCarrinho(carrinho);
		
		for(int i = 0; i < cService.itensCarrinho().size(); i++) {
			precoTotal += cService.itensCarrinho().get(i).getPreco();
		}
		
		session.removeAttribute("total");
		session.removeAttribute("carrinhoAtual");
		session.setAttribute("total", precoTotal);
		session.setAttribute("carrinhoAtual", cService.itensCarrinho());
		dispatcher = request.getRequestDispatcher("carrinho.jsp");
		dispatcher.forward(request, response);
		
		
		for(int i = 0; i < cService.itensCarrinho().size(); i++) {
			System.out.println(cService.itensCarrinho().get(i));
		}
	}

}
