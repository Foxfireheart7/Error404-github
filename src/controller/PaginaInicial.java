package controller;

import java.util.ArrayList;
import java.util.Random;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.ProdutoService;
import model.Produto;

@WebServlet("/PaginaInicial")
public class PaginaInicial extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public PaginaInicial() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ProdutoService pService = new ProdutoService();
		ArrayList<Produto> lista1 = new ArrayList<>();
		ArrayList<Produto> lista2 = new ArrayList<>();
		HttpSession session = request.getSession();
		
		ArrayList<Produto> aux = new ArrayList<>();
		Random rand = new Random();
		aux = pService.listarProduto();
		for(int i = 0; i < 6; i++) {
			boolean presente = false;
			int num = rand.nextInt(aux.size());
			
			for(int j = 0; j < lista1.size(); j++) {
				if(lista1.get(j).getId() == aux.get(num).getId()) {
					presente = true;
					i--;
				}
			}
			if(presente == false) {
				lista1.add(aux.get(num));
			}
		}
		
		ArrayList<Produto> aux2 = pService.maisVendidos();
		for(int i = 0; i < 4; i++) {
			lista2.add(aux2.get(i));
		}
		
		System.out.println(lista1.size());
		System.out.println(lista2.size());
		session.removeAttribute("seisProdutos");
		session.removeAttribute("maisVendidos");
		session.setAttribute("seisProdutos", lista1);
		session.setAttribute("maisVendidos", lista2);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}
}
