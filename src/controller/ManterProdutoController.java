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
import service.ProdutoService;

/**
 * Servlet implementation class ManterProdutoController
 */
@WebServlet("/ManterProduto.do")
public class ManterProdutoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pAcao = request.getParameter("acao");
		String pId = request.getParameter("id");
		String pNome = request.getParameter("nome");
		String pDescricao = request.getParameter("descricao");
		String pPreco = request.getParameter("preco");
		int id = -1;
		try {
			id = Integer.parseInt(pId);
		} catch (NumberFormatException e) {

		}

		Produto produto = new Produto();
		produto.setId(id);
		produto.setNome(pNome);
        produto.setDescricao(pDescricao);
        produto.setPreco(pPreco);
		ProdutoService cs = new ProdutoService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		if (pAcao.equals("Criar")) {
			cs.criar(produto);
			ArrayList<Produto> lista = new ArrayList<>();
			lista.add(produto);
			session.setAttribute("lista", lista);
			view = request.getRequestDispatcher("ListarProdutos.jsp");
		} else if (pAcao.equals("Excluir")) {
			cs.excluir(produto.getId());
			ArrayList<Produto> lista = (ArrayList<Produto>)session.getAttribute("lista");
			lista.remove(busca(produto, lista));
			session.setAttribute("lista", lista);
			view = request.getRequestDispatcher("ListarProdutos.jsp");			
		} else if (pAcao.equals("Alterar")) {
			cs.atualizar(produto);
			ArrayList<Produto> lista = (ArrayList<Produto>)session.getAttribute("lista");
			int pos = busca(produto, lista);
			lista.remove(pos);
			lista.add(pos, produto);
			session.setAttribute("lista", lista);
			request.setAttribute("produto", produto);
			view = request.getRequestDispatcher("VisualizarProduto.jsp");			
		} else if (pAcao.equals("Visualizar")) {
			produto = cs.carregar(produto.getId());
			request.setAttribute("produto", produto);
			view = request.getRequestDispatcher("VisualizarProduto.jsp");		
		} else if (pAcao.equals("Editar")) {
			produto = cs.carregar(produto.getId());
			request.setAttribute("produto", produto);
			view = request.getRequestDispatcher("AlterarProduto.jsp");		
		}
		
		view.forward(request, response);

	}

	public int busca(Produto produto, ArrayList<Produto> lista) {
		Produto to;
		for(int i = 0; i < lista.size(); i++){
			to = lista.get(i);
			if(to.getId() == produto.getId()){
				return i;
			}
		}
		return -1;
	}

}