package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Produto;
import service.ProdutoService;

@WebServlet("/ProdutoDetalhar")
public class ProdutoDetalhar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ProdutoDetalhar() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pIdProduto = request.getParameter("idProduto");
		int dono = Integer.parseInt(request.getParameter("criadorProduto"));
		
		Produto produto = new Produto();
		ProdutoService pService = new ProdutoService();
		HttpSession session = request.getSession();
		
		System.out.println(pIdProduto);
		produto.setId(Integer.parseInt(pIdProduto));
		pService.carregar(produto);
		
		session.removeAttribute("produtoDetalhado");
		session.setAttribute("produtoDetalhado", produto);
		
		if(dono == 0) {
			response.sendRedirect("detalhe.jsp");
		}
		else {
			response.sendRedirect("detalheMain.jsp");
		}
	}

}
