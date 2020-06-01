package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.UsuarioService;
import service.ProdutoService;
import model.Produto;
import model.Usuario;
import model.ListUsuarios;

@WebServlet("/UsuarioListar")
public class UsuarioListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public UsuarioListar() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		UsuarioService uService = new UsuarioService();
		ProdutoService pService = new ProdutoService();
		ArrayList<Usuario> lista = uService.listarUsuarios();
		ArrayList<ListUsuarios> list = new ArrayList<>();
		HttpSession session = request.getSession();
		
		
		for(int i = 0; i < lista.size(); i++) {
			Usuario user = lista.get(i);
			ListUsuarios lUsuarios = new ListUsuarios();
			String nome = user.getNome();
			String tipo = "";
			int id = user.getId();
			int produtos = 0;
			
			if(user.iseAdm() == true) {
				tipo = "Administrador";
			}
			else {
				tipo = "Comum";
			}
			
			ArrayList<Produto> listProduto = pService.meusProdutos(lista.get(i));
			for(int j = 0; j < listProduto.size(); j++) {
				produtos++;
			}
			
			lUsuarios.setNome(nome);
			lUsuarios.setTipo(tipo);
			lUsuarios.setId(id);
			lUsuarios.setProdutos(produtos);
			
			list.add(lUsuarios);
			
		}
		session.setAttribute("listaUsuarios", list);
		
		Usuario usuario = (Usuario)session.getAttribute("usuario");
		if(usuario != null) {
			Usuario.setAdm(true);
			session.removeAttribute("usuario");
			session.setAttribute("usuario", usuario);
		}
		
		response.sendRedirect("usuarios.jsp");
	}

}
