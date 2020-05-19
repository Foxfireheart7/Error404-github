package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;
import service.UsuarioService;

@WebServlet("/UsuarioCadastrar")
public class UsuarioCadastrar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UsuarioCadastrar() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String pAcao = request.getParameter("acao");
		String pNome = request.getParameter("nome");
		String pCpf = request.getParameter("cpf");
		String pCep = request.getParameter("cep");
		String pEndereco = request.getParameter("endereco");
		String pComplemento = request.getParameter("complemento");
		String pTelefone = request.getParameter("telefone");
		String pEmail = request.getParameter("email");
		String pSenha = request.getParameter("senha");
		boolean pAdm = false;
		
		Usuario usuario = new Usuario();
		UsuarioService service = new UsuarioService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		usuario.setNome(pNome);
		usuario.setCpf(pCpf);
		usuario.setCep(pCep);
		usuario.setEndereco(pEndereco);
		usuario.setComplemento(pComplemento);
		usuario.setTelefone(pTelefone);
		usuario.setEmail(pEmail);
		usuario.setSenha(pSenha);
		Usuario.setAdm(pAdm);
		
		if(pAcao.equals("criar")) {
			service.adicionarUsuario(usuario);
			service.logarUsuario(usuario);
			session.setAttribute("usuario", usuario);
			usuario = (Usuario)session.getAttribute("usuario");
			Usuario.setLogado(true);
			System.out.println(usuario.getId());
			view = request.getRequestDispatcher("index.jsp");
			view.forward(request, response);
		}
	}

}
