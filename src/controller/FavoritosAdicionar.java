package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.FavoritosService;
import model.Produto;
import model.Usuario;

@WebServlet("/FavoritosAdicionar")
public class FavoritosAdicionar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public FavoritosAdicionar() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String pIdProduto = request.getParameter("idProduto");
		String pUrl = request.getParameter("url");
		
		FavoritosService fService = new FavoritosService();
		Produto produto = new Produto();
		Usuario usuario = new Usuario();
		HttpSession session = request.getSession();
		
		usuario = (Usuario)session.getAttribute("usuario");
		
		if(usuario != null) {
			produto.setId(Integer.parseInt(pIdProduto));
			fService.adcionarFavoritos(usuario, produto);
			
			response.sendRedirect(pUrl);
		}
	}
}