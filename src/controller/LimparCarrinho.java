package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Produto;
import service.CarrinhoService;

@WebServlet("/LimparCarrinho")
public class LimparCarrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public LimparCarrinho() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CarrinhoService cService = new CarrinhoService();
		HttpSession session = request.getSession();
		
		cService.setCarrinho((ArrayList<Produto>)session.getAttribute("carrinho"));
		cService.limparCarrinho();
		
		session.removeAttribute("carrinhoAtual");
		session.setAttribute("carrinhoAtual", cService.itensCarrinho());
		
		response.sendRedirect("CarrinhoListar");
	}

}
