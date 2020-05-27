package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;
import model.Produto;
import service.ProdutoService;

@WebServlet("/MeusProdutos")
public class MeusProdutos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public MeusProdutos() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario usuario = new Usuario();
		ProdutoService pService = new ProdutoService();
		HttpSession session = request.getSession();
		ArrayList<Produto> meusProdutos = new ArrayList<>();
		
		usuario = (Usuario)session.getAttribute("usuario");
		
		if(usuario != null) {
			meusProdutos = pService.meusProdutos(usuario);
		}
		
		session.removeAttribute("meusProdutos");
		session.setAttribute("meusProdutos", meusProdutos);
		
		response.sendRedirect("MeusProdutos.jsp");
	}

}
