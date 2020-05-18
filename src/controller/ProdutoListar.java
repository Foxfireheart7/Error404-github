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

import service.ProdutoService;
import model.Produto;

@WebServlet("/ProdutoListar")
public class ProdutoListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String pChave = request.getParameter("data[search]");
		String pFiltro = request.getParameter("filtro");
		String pAcao = request.getParameter("acao");
		pAcao = "buscar";
		
		ProdutoService pService = new ProdutoService();
		ArrayList<Produto> lista = null;
		HttpSession session = request.getSession();
		
		if (pAcao.equals("buscar")) {
			if (pChave != null && pChave.length() > 0) {
				lista = pService.listarProduto(pChave);
			} else {
				if(pFiltro.equals("todos")) {
					lista = pService.listarProduto();
					session.setAttribute("jFiltro", pFiltro);
				}
				else if(pFiltro.equals("maisVendidos")) {
					lista = pService.maisVendidos();
				}
			}
			session.removeAttribute("lista");
			session.setAttribute("lista", lista);
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("shop.jsp");
		dispatcher.forward(request, response);
	}
}
