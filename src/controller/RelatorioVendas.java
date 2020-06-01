package controller;

import java.util.ArrayList;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Historico;
import service.HistoricoService;

@WebServlet("/RelatorioVendas")
public class RelatorioVendas extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public RelatorioVendas() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HistoricoService hService = new HistoricoService();
		ArrayList<Historico> lista = new ArrayList<>();
		HttpSession session = request.getSession();
		
		lista = hService.relatorio();
		
		for(int i = 0; i < lista.size(); i++) {
			System.out.println(lista.get(i).getNomeUsuario() + ", " + lista.get(i).getNomeProduto() + ", " + lista.get(i).getPrecoProduto() + ", " + lista.get(i).getVendasProduto());
		}
		
		session.removeAttribute("relatorioVendas");
		session.setAttribute("relatorioVendas", lista);
		
		response.sendRedirect("formulario.jsp");
	}

}
