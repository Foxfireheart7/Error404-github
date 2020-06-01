package service;

import java.util.ArrayList;

import model.Historico;
import dao.HistoricoDAO;

public class HistoricoService {
	HistoricoDAO dao = new HistoricoDAO();
	
	public ArrayList<Historico> relatorio(){
		return dao.relatorio();
	}
}
