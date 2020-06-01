package controller;

import java.util.ArrayList;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Testando")
public class Testando extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Testando() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pPath = request.getParameter("path") + "\\";
		String saida = "";
		ArrayList<String> array = new ArrayList<>();
		int inicio = 0;
		
		for(int i = 0; i < pPath.length(); i++) {
			char letra = pPath.charAt(i);
			
			if(letra == '\\') {
				String palavra = pPath.substring(inicio, i);
				inicio = i + 1;
				array.add(palavra);
			}
		}
		
		
		System.out.println("1 = " + pPath + "\n\n");
		for(int i = 0; i < array.size(); i++) {
			if(i == array.size() - 1) {
				saida += array.get(i);
			}
			else {
				saida += array.get(i) + "/";
			}
		}
		System.out.println("2 = " + saida);
		response.sendRedirect("Test.jsp");
	}

}
