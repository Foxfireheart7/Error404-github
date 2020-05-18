package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.UsuarioService;
import model.Usuario;


@WebServlet("/UsuarioLogar")
public class UsuarioLogar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public UsuarioLogar() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String pAcao = request.getParameter("acao");
		String pEmail = request.getParameter("email");
		String pSenha = request.getParameter("senha");
		
		Usuario usuario = new Usuario();
		UsuarioService service = new UsuarioService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		usuario.setEmail(pEmail);
		service.logarUsuario(usuario);
		
		if(pAcao.equals("logar")) {
			if(pSenha.equals(usuario.getSenha())) {
				Usuario.setLogado(true);
				view = request.getRequestDispatcher("index.jsp");
				view.forward(request, response);
				session.setAttribute("usuario", usuario);
				System.out.println(usuario.getId());
			}
			else {
				session.removeAttribute("usuario");
				view = request.getRequestDispatcher("index.jsp");
				view.forward(request, response);
			}
		}
		
		else if(pAcao.equals("sair")) {
			Usuario.setLogado(false);
			session.removeAttribute("usuario");
			view = request.getRequestDispatcher("index.jsp");
			view.forward(request, response);
		}
	}
}
