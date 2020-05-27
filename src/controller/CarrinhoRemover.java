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

@WebServlet("/CarrinhoRemover")
public class CarrinhoRemover extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public CarrinhoRemover() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pIdProduto = request.getParameter("idProduto");
		
		CarrinhoService cService = new CarrinhoService();
		RequestDispatcher dispatcher = null;
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		ArrayList<Produto> carrinho = (ArrayList<Produto>)session.getAttribute("carrinho");
		
		cService.setCarrinho(carrinho);
		
		cService.removeCarrinho(Integer.parseInt(pIdProduto));
		dispatcher = request.getRequestDispatcher("CarrinhoListar");
		dispatcher.forward(request, response);
	}

}
