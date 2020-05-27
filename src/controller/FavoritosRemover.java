package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.FavoritosService;
import model.Produto;
import model.Usuario;

@WebServlet("/FavoritosRemover")
public class FavoritosRemover extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public FavoritosRemover() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String pIdProduto = request.getParameter("idProduto");
		
		FavoritosService fService = new FavoritosService();
		Usuario usuario = new Usuario();
		Produto produto = new Produto();
		HttpSession session = request.getSession();
		
		usuario = (Usuario)session.getAttribute("usuario");
		produto.setId(Integer.parseInt(pIdProduto));
		fService.removerFavoritos(usuario, produto);

		

		RequestDispatcher dispatcher = request.getRequestDispatcher("FavoritosListar");
		dispatcher.forward(request, response);
	}

}
