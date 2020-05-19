package controller;

import java.util.ArrayList;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.FavoritosService;
import service.ProdutoService;
import model.Produto;
import model.Usuario;

@WebServlet("/FavoritosListar")
public class FavoritosListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public FavoritosListar() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		FavoritosService fService = new FavoritosService();
		ProdutoService pService = new ProdutoService();
		Usuario usuario = new Usuario();
		usuario = (Usuario)session.getAttribute("usuario");
		ArrayList<Produto> listProduto = new ArrayList<>();
		
		if(usuario != null) {
			ArrayList<Integer> list = fService.carregarFavoritos(usuario);
			
			for(int i = 0; i < list.size(); i++) {
				Produto produto = new Produto();
				produto.setId(list.get(i));
				pService.carregar(produto);
				
				listProduto.add(produto);
			}
			
			for(int i = 0; i < listProduto.size(); i++) {
				System.out.println(listProduto.get(i));
			}
			
			session.setAttribute("favoritosListar", listProduto);
			RequestDispatcher dispatcher = request.getRequestDispatcher("favoritos.jsp");
			dispatcher.forward(request, response);
		}
	}

}
